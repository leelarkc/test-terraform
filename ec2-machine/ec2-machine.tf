provider "aws" {
  region = "ap-south-1"
  profile = "leela"
}


resource "aws_instance" "this" {
  count = 2
  ami              = "ami-0ad704c126371a549"
  instance_type    = "t2.micro"
  subnet_id = "subnet-01ea3e4a13fa8d35a"
  key_name               = "ramya"
  vpc_security_group_ids = ["sg-0934b855356e1ce24"]

  associate_public_ip_address = true
  root_block_device {
   volume_size = 10
  }


}
