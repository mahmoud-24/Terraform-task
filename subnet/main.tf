resource "aws_subnet" "subnet" {
  vpc_id                  = var.vpc-id
  count = var.count_sub
  cidr_block              = var.subnet_cidr[count.index]
  availability_zone       = var.zone[count.index]
  map_public_ip_on_launch = var.subtype 
  
}
