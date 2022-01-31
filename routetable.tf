resource "aws_route_table" "terraformrt" {
  vpc_id = aws_vpc.terraform_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.terraformgtw.id
  }

  tags = {
    Name = "${var.tfrt-tag}-${var.env}" 
  }
}

#subnet association for internet 
resource "aws_route_table_association" "terraforminternet" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.terraformrt.id
}