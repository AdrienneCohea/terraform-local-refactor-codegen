resource "local_file" "foo" {
  content = templatefile("${path.module}/moved.tf.tpl", {
    from_resource_type = var.from_resource_type
    from_resource_name = var.from_resource_name
    from_index         = var.from_index
    to_resource_type   = var.to_resource_type
    to_resource_name   = var.to_resource_name
    to_index           = var.to_index
  })

  filename = var.path
}
