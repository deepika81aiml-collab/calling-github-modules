vpc_id    = "vpc-00291bcc74f74a834"
subnet_id = "subnet-00291bcc74f74a834"
ami_id    = "ami-0ec10929233384c7f"   # Amazon Linux ap-south-1
key_name  = "dd"
region = "us-east-1"

db_name = "prod-db"
engine="mysql" 
instance_class="db.t3.micro"
username="admin"
password="Password123!"
lambda_source_path = "lambda"