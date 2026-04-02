

# ---------------- VPC MODULE ----------------
module "vpc" {
  source = "git::https://github.com/deepika81aiml-collab/Assignments.git//modules/vpc?ref=main"

  vpc_cidr = "10.0.0.0/16"

  az1 = "us-east-1a"
  az2 = "us-east-1b"

  public_subnet_cidr_1  = "10.0.1.0/24"
  public_subnet_cidr_2  = "10.0.2.0/24"

  private_subnet_cidr_1 = "10.0.3.0/24"
  private_subnet_cidr_2 = "10.0.4.0/24"

  tags = {
    Project = "terraform-demo"
    Env     = "dev"
  }
}

# ---------------- EC2 MODULE ----------------
module "instance" {
  source         = "git::https://github.com/deepika81aiml-collab/Assignments.git//modules/instance?ref=main"
  instance_name    = var.instance_name
  ami_id           = var.ami_id
  instance_type    = var.instance_type
  key_name         = var.key_name
  vpc_id           = module.vpc.vpc_id
  subnet_id        = module.vpc.public_subnet_id
  allowed_ssh_cidr = "0.0.0.0/0"  
  tags = {
    Project = "Terraform-Module"
    Env     = "Dev"
  }
}

module "rds" {
  source         = "git::https://github.com/deepika81aiml-collab/Assignments.git//modules/rds?ref=main"  
  db_name        = var.db_name
  engine         = var.engine
  username       = var.username
  password       = var.password
  vpc_id         = var.vpc_id
}
module "sqs" {
  source = "git::https://github.com/deepika81aiml-collab/Assignments.git//modules/sqs?ref=main"
  queue_name  = "demo-queue"
}

module "sns" {
  source = "git::https://github.com/deepika81aiml-collab/Assignments.git//modules/sns?ref=main"
  topic_name = "demo-topic"
}

module "lambda" {
  source        = "git::https://github.com/deepika81aiml-collab/Assignments.git//modules/lambda?ref=main"
  function_name      = "hello-world-lambda"
  lambda_source_path = "${path.root}/lambda"
}





