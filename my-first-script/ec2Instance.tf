resource "aws_instance" "myEc2Machine" {

  ami = var.ami_name

  instance_type = var.instance_type

  tags = {

    Name = var.Name


  }

}