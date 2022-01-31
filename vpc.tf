resource "aws_vpc" "terraform_vpc" {
 cidr_block = var.vpcCIDRblock
 instance_tenancy = var.instanceTenancy

  tags = {
    Name = "${var.vpc-tag}-${var.env}" 
  }
}