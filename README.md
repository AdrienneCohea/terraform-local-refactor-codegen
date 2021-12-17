# terraform-local-refactor-codegen
Generate Terraform code to ease more complicated refactors

# Example usage

```terraform
resource "vault_transit_secret_backend_key" "key" {
  for_each = toset(var.keys)

  backend          = vault_mount.transit.path
  name             = each.key
  deletion_allowed = true
}

# module "count_to_foreach" {
#   count = length(var.keys)
#   source = "./moves"

#   from_resource_type = "vault_transit_secret_backend_key"
#   from_resource_name = "key"
#   from_index         = count.index
#   to_resource_type   = "vault_transit_secret_backend_key"
#   to_resource_name   = "key"
#   to_index           = var.keys[count.index]
#   path               = "${path.module}/moved-keys-${count.index}.tf"
# }
```
