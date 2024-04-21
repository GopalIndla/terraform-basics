data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "DevOps-LabImage-Centos-8"
  owners           = ["767397813969"]
}

# Defining the resources 
resource "aws_instance" "checker" {
  ami                       = "ami-072983368f2a6eab5" 
  instance_type             = "t3.micro"
  count                     = 3

  tags = {
    Name = "checker-instance-${count.index+1}"
  }
}

# Printing the output
# output "private_ip" {
#     value = aws_instance.checker.private_ip
# }


# count is a function and if you say 3 : it's instances will be created : It's alomost like a for loop :
# count = 3 :  0, 1, 2  ( Iterations or Index Value )

# count works in conjunction with count.index