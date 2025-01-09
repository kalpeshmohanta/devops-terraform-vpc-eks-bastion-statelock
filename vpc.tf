module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "5.17.0"

  name = var.vpc-name
  cidr = var.vpc-cidr

  azs = ["ap-south-1a", "ap-south-1b"]
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]

  enable_nat_gateway = true # Craeted NAT in public subnet for internet access

  
}