variable "region" {}
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
variable "instance_name" {type = string}  
variable "instance_type" {
  type = string
}

