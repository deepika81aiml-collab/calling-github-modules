vpc_id    = "vpc-0d3d0032e3c7c7c16"
subnet_id = "subnet-0d3d0032e3c7c7c16"
ami_id    = "ami-0ec10929233384c7f"   # Amazon Linux ap-south-1
key_name  = "dd"
region = "us-east-1"

db_name = "dev-db"
engine="mysql" 
instance_class="db.t3.micro"
username="admin"
password="Password123!"
# private_subnets=["subnet-0d3d0032e3c7c7c16"]
lambda_source_path = "lambda"