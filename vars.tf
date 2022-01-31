#VPC 
variable "env" {
  default = "dev"
}
variable "vpcCIDRblock"{  
  default = "192.168.0.0/16"
}
variable "instanceTenancy" { 
  default = "default"
}
variable "availabilityZone" {
  default = "us-east-1a"
}
variable "vpc-tag" {
  default = "tfvpc"
}

#public subnet
variable "public-subnet-cidr"{  
  default = "192.168.1.0/24"
}
variable "public-subnet-tag" {
  default= "tf-public"
}

#private subnet
variable "private-subnet-cidr" {  
  default = "192.168.2.0/24"
}
variable "private-subnet-tag" {
  default= "tf-private"
}

#gateway
variable "tfgateway-tag" {
  default = "tf-gtw"
}

#route table
variable "tfrt-tag" {
  default ="tf-rt"
}

#securitygroup
variable "tfsgcidrip" {
  default="34.237.207.131/32"
}
variable "tfsgtag" {
  default="tf-publicsg"
}
#Keypair
variable "tfpublickey" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com"
}
variable "tfkeypair" {
  default = "tfkey"
}

#EC2 Instances
variable "tfec2ami" {
  default = "ami-0323c3dd2da7fb37d"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "instancetag" {
  default = "tf-ec2tag"
}
variable "ec2count" {
  default = "2"
}