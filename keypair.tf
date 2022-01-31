resource "aws_key_pair" "keypair" {
  key_name   = "${var.tfkeypair}-${var.env}"
  public_key = var.tfpublickey
}