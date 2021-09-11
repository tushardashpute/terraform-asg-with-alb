variable "ami" {
  description = "AMI Instance ID"
  default = "ami-0aa88ce4d218c5397"
}

variable "instance_type" {
  description = "Type of instance"
  default = "t2.micro"
}

variable "key_name" {
  description = "key name for the instance"
  default = "eks1"
}

