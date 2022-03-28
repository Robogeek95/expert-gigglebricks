resource "azurerm_databricks_workspace" "this" {
  name = format("dbs-%s-%s", var.environment, var.project)

  resource_group_name = var.databricks_resource_group_name
  location            = azurerm_resource_group.databricks.location
  sku                 = var.databricks_sku

  custom_parameters {
    virtual_network_id  = data.azurerm_virtual_network.this.id
    public_subnet_name  = azurerm_subnet.public.name
    private_subnet_name = azurerm_subnet.private.name 

    public_subnet_network_security_group_association_id  = azurerm_subnet_network_security_group_association.public.id
    private_subnet_network_security_group_association_id = azurerm_subnet_network_security_group_association.private.id
  }

  depends_on = [
    # subnet security group association must be created before the id can be used
    azurerm_subnet_network_security_group_association.public,
    azurerm_subnet_network_security_group_association.private
  ]
}

data "databricks_node_type" "smallest" {
  local_disk = true

  depends_on = [
    azurerm_databricks_workspace.this
  ]
}

data "databricks_spark_version" "latest_lts" {
  long_term_support = true

  depends_on = [
    azurerm_databricks_workspace.this
  ]
}

resource "databricks_cluster" "this" {
  cluster_name = format("dbsc-%s-%s-%s",
  azurerm_resource_group.databricks.id, var.environment, var.project)

  spark_version = data.databricks_spark_version.latest_lts.id
  node_type_id  = data.databricks_node_type.smallest.id

  autotermination_minutes = 20

  spark_conf = {
    "spark.databricks.cluster.profile" : "singleNode"
    "spark.master" : "local[*]"
  }

  custom_tags = {
    "ResourceClass" = "SingleNode"
  }
}
