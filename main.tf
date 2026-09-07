#data "aws_ami" "app_ami" {
 # most_recent = true

  #filter {
   # name   = "name"
    #values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  #}

  #filter {
   # name   = "virtualization-type"
    #values = ["hvm"]
  #}

  #owners = ["137112412989"] # Bitnami
#}

resource "aws_instance" "web" {
  ami           = "ami-0b79f6f294a030f24"
  instance_type = "t3.nano"

  tags = {
    Name = "HelloWorld"
  }
}