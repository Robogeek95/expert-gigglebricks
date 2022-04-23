
```
terraform-databricks
├─ .git
│  ├─ FETCH_HEAD
│  ├─ HEAD
│  ├─ config
│  ├─ description
│  ├─ hooks
│  │  ├─ applypatch-msg.sample
│  │  ├─ commit-msg.sample
│  │  ├─ fsmonitor-watchman.sample
│  │  ├─ post-update.sample
│  │  ├─ pre-applypatch.sample
│  │  ├─ pre-commit.sample
│  │  ├─ pre-merge-commit.sample
│  │  ├─ pre-push.sample
│  │  ├─ pre-rebase.sample
│  │  ├─ pre-receive.sample
│  │  ├─ prepare-commit-msg.sample
│  │  ├─ push-to-checkout.sample
│  │  └─ update.sample
│  ├─ index
│  ├─ info
│  │  └─ exclude
│  ├─ logs
│  │  ├─ HEAD
│  │  └─ refs
│  │     ├─ heads
│  │     │  └─ master
│  │     └─ remotes
│  │        └─ origin
│  │           └─ HEAD
│  ├─ objects
│  │  ├─ info
│  │  └─ pack
│  │     ├─ pack-c83edc72df19897e6967384d3e18a9e634b9bb13.idx
│  │     └─ pack-c83edc72df19897e6967384d3e18a9e634b9bb13.pack
│  ├─ packed-refs
│  └─ refs
│     ├─ heads
│     │  └─ master
│     ├─ remotes
│     │  └─ origin
│     │     └─ HEAD
│     └─ tags
├─ .gitignore
├─ live
│  ├─ dev
│  │  ├─ .terraform.lock.hcl
│  │  ├─ databricks.tf
│  │  ├─ main.tf
│  │  ├─ network.tf
│  │  ├─ outputs.tf
│  │  ├─ providers.tf
│  │  ├─ storage.tf
│  │  ├─ variables.tf
│  │  └─ versions.tf
│  ├─ prd
│  │  ├─ .terraform.lock.hcl
│  │  ├─ databricks.tf
│  │  ├─ main.tf
│  │  ├─ network.tf
│  │  ├─ outputs.tf
│  │  ├─ providers.tf
│  │  ├─ storage.tf
│  │  ├─ tfplan.out
│  │  ├─ variables.tf
│  │  └─ versions.tf
│  └─ prod
│     ├─ .terraform
│     │  ├─ modules
│     │  │  └─ modules.json
│     │  └─ providers
│     │     └─ registry.terraform.io
│     │        ├─ databrickslabs
│     │        │  └─ databricks
│     │        │     └─ 0.5.5
│     │        │        └─ darwin_arm64
│     │        │           ├─ CHANGELOG.md
│     │        │           ├─ LICENSE
│     │        │           ├─ NOTICE
│     │        │           └─ terraform-provider-databricks_v0.5.5
│     │        └─ hashicorp
│     │           └─ azurerm
│     │              └─ 3.3.0
│     │                 └─ darwin_arm64
│     │                    └─ terraform-provider-azurerm_v3.3.0_x5
│     ├─ .terraform.lock.hcl
│     ├─ main.tf
│     ├─ providers.tf
│     ├─ tfplan.out
│     └─ variables.tf
└─ modules
   ├─ database
   │  ├─ outputs.tf
   │  ├─ sql_active_directory_administrator.tf
   │  ├─ sql_database.tf
   │  ├─ sql_firewall_rule.tf
   │  ├─ sql_server.tf
   │  └─ variables.tf
   ├─ databricks
   │  ├─ databricks_workspace.tf
   │  ├─ outputs.tf
   │  └─ variables.tf
   ├─ disk
   │  ├─ managed_disk.tf
   │  ├─ outputs.tf
   │  └─ variables.tf
   ├─ keyvault
   │  ├─ key_vault.tf
   │  ├─ outputs.tf
   │  └─ variables.tf
   ├─ load_balancer
   │  ├─ lb.tf
   │  ├─ lb_backend_address_pool.tf
   │  ├─ outputs.tf
   │  └─ variables.tf
   ├─ network_interface
   │  ├─ network_interface.tf
   │  ├─ outputs.tf
   │  └─ variables.tf
   ├─ network_security_group
   │  ├─ network_security_group.tf
   │  ├─ network_security_rule.tf
   │  ├─ outputs.tf
   │  └─ variables.tf
   ├─ network_watcher
   │  ├─ network_watcher.tf
   │  ├─ outputs.tf
   │  └─ variables.tf
   ├─ private_dns
   │  ├─ outputs.tf
   │  ├─ private_dns_a_record.tf
   │  ├─ private_dns_zone.tf
   │  ├─ private_dns_zone_virtual_network_link.tf
   │  └─ variables.tf
   ├─ private_endpoint
   │  ├─ outputs.tf
   │  ├─ private_endpoint.tf
   │  ├─ private_link_service.tf
   │  └─ variables.tf
   ├─ public_ip
   │  ├─ outputs.tf
   │  ├─ public_ip.tf
   │  └─ variables.tf
   ├─ resource_group
   │  ├─ outputs.tf
   │  └─ resource_group.tf
   ├─ ssh_public_key
   │  ├─ outputs.tf
   │  ├─ ssh_public_key.tf
   │  └─ variables.tf
   ├─ storage_account
   │  ├─ outputs.tf
   │  ├─ storage_account.tf
   │  └─ variables.tf
   ├─ storage_container
   │  ├─ outputs.tf
   │  ├─ storage_container.tf
   │  └─ variables.tf
   ├─ subnet
   │  ├─ outputs.tf
   │  ├─ subnet.tf
   │  ├─ subnet_nat_gateway_association.tf
   │  ├─ subnet_network_security_group_association.tf
   │  └─ variables.tf
   ├─ virtual_machine
   │  ├─ linux_virtual_machine.tf
   │  ├─ outputs.tf
   │  ├─ provider.tf
   │  ├─ variables.tf
   │  └─ windows_virtual_machine.tf
   └─ virtual_network
      ├─ outputs.tf
      ├─ variables.tf
      └─ virtual_network.tf

```