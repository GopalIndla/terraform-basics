# Defining the resources 
resource "aws_instance" "checker" {
  ami                       = "ami-072983368f2a6eab5" 
  instance_type             = "t3.micro"
  vpc_security_group_ids    = [var.sg]
  
  tags = {
    Name = "checker-instance"
  }
}

output "private_ip_address" {
    value  = aws_instance.checker.private_ip
}

# if you want to print any output : you need to send it to the root module. 
# declare the empty variable 
variable "sg" {}