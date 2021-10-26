resource "aws_instance" "srv01" {
  count         = var.instanceCount
  ami           = var.ami_id
  instance_type = "t2.micro"
  tags = {
    "Name" = "Webserver${count.index + 1}-${var.instancenamee}"
  }
}


output "ipaddress" {
  value = aws_instance.srv01[*].public_ip
}


output "private_ip" {
  value = aws_instance.srv01[*].private_ip
}


