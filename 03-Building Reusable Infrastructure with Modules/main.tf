provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami_value = "ami-0c45b253cbmkde1f3" # replace this
  instance_type_value = "t2.micro"
  subnet_id_value = "subnet-017bs31fd3b5241s7". # replace this
}