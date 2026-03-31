 variable "region" {}
# variable "public_subnet" { default = "subnet-0123456789abcdef0" }
# variable "ami" { default = "ami-0123456789abcdef0" }    
# variable "vpc_id" {}
# variable "subnet_id" {}
# variable "ami_id" {}
# variable "key_name" {}
variable "vpc_id" {}
variable "subnet_id" {}
variable "ami_id" {}
variable "key_name" {}

variable "db_name" {}
variable "engine" { default = "mysql" }
variable "instance_class" { default = "db.t3.micro" }
variable "username" {}
variable "password" {}
variable "lambda_source_path" {}
