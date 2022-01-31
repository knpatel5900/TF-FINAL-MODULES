resource "aws_internet_gateway" "terraformgtw" {
  vpc_id = aws_vpc.terraform_vpc.id

  tags = {
    Name = "${var.tfgateway-tag}-${var.env}" 
  }
}