resource "azurerm_resource_group" "example" {
  name     = "terragoat-${var.environment}"
  location = var.location
  tags = {
    yor_trace = "c3920a11-0fb8-4f4d-8dc6-c94cd71a14cb"
  }
}