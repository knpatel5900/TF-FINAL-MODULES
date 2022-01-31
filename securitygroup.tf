resource "aws_security_group" "tfpublicsg" {
  description = "securitygroup"
  vpc_id      = aws_vpc.terraform_vpc.id
  

  ingress {
    description = "http"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.tfsgcidrip]
  }

  ingress {
    description = "https"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.tfsgcidrip]
  }

  ingress {
    description = "ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.tfsgcidrip]
  }

   tags = {
    Name = "${var.tfsgtag}-${var.env}" 
  }
}