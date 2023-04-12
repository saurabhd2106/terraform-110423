module "ec2Machine" {

    source = "../ec2-instance-mod"

    region = "us-east-1"

    ami_name = "ami-0aa2b7722dc1b5612"

    instance_type = "t2.micro"
  
}