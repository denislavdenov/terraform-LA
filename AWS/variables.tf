variable "aws_region" {}

#--------- storage vars
variable "project_name" {}

#--------- network vars
variable "vpc_cidr" {}

variable "public_cidrs" {
  type = "list"
}

variable "accessip" {}

#---------- compute vars

variable "key_name" {}
variable "public_key_path" {}
variable "server_instance_type" {}

variable "instance_count" {
  default = 1
}
