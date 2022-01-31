resource "aws_instance" "tfec2" {
  count           = var.ec2count
  ami             = var.tfec2ami
  instance_type   = var.instance_type
  key_name        = aws_key_pair.keypair.key_name
  security_groups = [aws_security_group.tfpublicsg.id]
  subnet_id       = aws_subnet.public.id

  tags = {
    Name = "${var.instancetag}-${count.index + 1}-${var.env}"
  }
}
