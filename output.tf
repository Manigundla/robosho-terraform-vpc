output "azs" {
  value = local.az_names
}

output "vpcID" {
  value = aws_vpc.main.id
}

output "public_subnetID" {
  value = aws_subnet.public[*].id
}

output "private_subnetID" {
  value = aws_subnet.private[*].id
}

output "db_subnetID" {
  value = aws_subnet.db[*].id
}