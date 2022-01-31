#public subnet
resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = var.public-subnet-cidr
  map_public_ip_on_launch  = "true" 
  tags = {
    Name = "${var.public-subnet-tag}-${var.env}"
  }
}

#private subnet
resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = var.private-subnet-cidr

  tags = {
    Name = "${var.private-subnet-tag}-${var.env}"
  }
}


