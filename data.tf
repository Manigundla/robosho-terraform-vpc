data "aws_availability_zones" "azs" {
  state = "available"
  #This will only featch but will not print it on the terminal, so we have to output it in output.tf
}

data "aws_vpc" "default" {
  default = true
}

data "aws_route_table" "default" {
  vpc_id = data.aws_vpc.default.id
}