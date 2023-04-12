variable "ami_name" {

    type = string

    default = "ami-0aa2b7722dc1b561"

    description = "This is a variable to define AMI image"
  
}

variable "Name" {

    type = set(string)
  
}

variable "instance_type" {

    type = string
  
}