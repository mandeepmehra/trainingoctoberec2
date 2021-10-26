variable "ami_id" {
  description = "AMI of the EC2 instance to be provisioned"
  type        = string
}


variable "instanceCount" {
  type    = number
  default = 1
}

variable "instancename" {
  default = "mandeep"
}


variable "azs" {
  default = ["us-east-1", "us-east-2", "ap-south-1"]
}

variable "names" {
  default = ["server01", "server02"]
}
