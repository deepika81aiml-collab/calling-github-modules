

module "sqs" {
  source = "git::https://github.com/deepika81aiml-collab/Assignments.git//modules/sqs?ref=main"
  queue_name  = "demo-queue"
}

module "sns" {
  source = "git::https://github.com/deepika81aiml-collab/Assignments.git//modules/sns?ref=main"
  topic_name = "demo-topic"
}

module "rds" {
  source         = "git::https://github.com/deepika81aiml-collab/Assignments.git//modules/rds?ref=main"  
  db_name        = var.db_name
  engine         = var.engine
  username       = "admin"
  password       = "Password123!"
  vpc_id         = var.vpc_id
}

module "lambda" {
  source        = "git::https://github.com/deepika81aiml-collab/Assignments.git//modules/lambda?ref=main"
  function_name      = "hello-world-lambda"
  lambda_source_path = "${path.root}/lambda"
}


module "instance" {
  source         = "git::https://github.com/deepika81aiml-collab/Assignments.git//modules/instance?ref=main"
  instance_name = "my-ec2"
  ami_id        = var.ami_id
  instance_type = "t2.micro"
  subnet_id     = var.subnet_id
  vpc_id        = var.vpc_id
  key_name      = var.key_name

  tags = {
    Project = "Terraform-Module"
    Env     = "Dev"
  }
}


# module "instance" {
#   source = "../modules/instance"

#   instance_name = "my-ec2"
#   ami_id        = var.ami_id
#   instance_type = "t2.micro"
#   subnet_id     = var.subnet_id
#   vpc_id        = var.vpc_id
#   key_name      = var.key_name

#   tags = {
#     Project = "Terraform-Module"
#     Env     = "Dev"
#   }
# }