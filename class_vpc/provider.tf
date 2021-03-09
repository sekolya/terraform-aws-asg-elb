provider "aws" {
  region = var.region
}

data "aws_availability_zones" "available" {
  state = "available"
}
output "AZ" {
  value = data.aws_availability_zones.available.names
}
