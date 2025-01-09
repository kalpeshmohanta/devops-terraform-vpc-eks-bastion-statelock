variable "region" {
  description = "AWS region to deploy resources"
  default = "ap-south-1"    # Mumbai region
}

variable "vpc-name"  {
    description = "vpc name"
    default = "kalpesh-vpc"
}

variable "vpc-cidr" {
    description = "vpc cidr block"
    default = "10.0.0.0/16"
}

variable "cluster-name" {
    description = "eks cluster name"
    default = "kalpesh-eks"
}

variable "key_pair" {
    description = "key pair name"
    default = "aws_key_pair"
}
