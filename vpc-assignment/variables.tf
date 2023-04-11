variable "name" {

    default = "saurabh"
  
}

variable "cidr_default" {

    default = "10.0.0.0/16"
  
}

variable "region" {


default = "us-east-1"
}


variable "az1" {


default = "us-east-1a"
}

variable "az2" {


default = "us-east-1a"
}




variable "cidr_public_subnet" {

    default = "10.0.1.0/24"
  
}

variable "cidr_private_subnet" {

    default = "10.0.2.0/24"
  
}