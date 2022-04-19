resource "azurerm_ssh_public_key" "r-vm-zpa-connector-001_key" {
  location            = var.location
  name                = "r-vm-zpa-connector-001_key"
  public_key          = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCrsQIlD68bPFBu5Q9L/EfEfRPK\r\nvTdUv+negu7qW7Tg1Y8TxD/3WPFabNzETstM2DZncev0JH4L8jXVO8s95pyFmK3+\r\nz++USM12Pog7bZo64mEuEHiA+G27sR5LM4LNZymH9GA5APiAf0XUdY52I5otuIg6\r\nn/PFfONXVCMH/pphidp2oAtaQsMQJfuvKzbTrH9hIl/6BkjpEcUZKzyIrmFyxooi\r\nnzZ3Ued7cVBREljJlsXx6CpfI7ppEgoBA16pGHeifHxWBeNmPHErL1XH1kVSRVnN\r\nu8L5Y3upNcyAPbp5UqrJhAI7AhmJz+eh8sY7WbgJVjRBRoxUAMDxAuF2ddssKmy/\r\nuQYlf1hiYKtVaQVhWEJJXrwPYggUlRHZqbpvWi9wwUOPzMJJdnd4NRZQKCRzGXfm\r\nS6ipK5SvptFmTwjDkMzzbY1QlsDKlIcw2DJJb8oEKg/sFcoE8NKldxH1XvTNK4yC\r\n83bTnUXoEUjZw6wlKibJ9t+oXIg12nLqv14bKJU= generated-by-azure\r\n"
  resource_group_name = var.rg-zscaler-zpa-connector_name
}
