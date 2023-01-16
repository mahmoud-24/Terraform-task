module "dev-vpc" {
source = "./temp/vpc"
vpc_cidr = "10.0.0.0/16"
}

module "public-subnet" {
  source = "./temp/subnet"
  vpc-id = module.dev-vpc.vpc_id
  count_sub = 2
  subnet_cidr = ["10.0.0.0/24","10.0.2.0/24"]
  zone = ["us-east-1a","us-east-1b"]
  subtype = "true"
}

module "private-subnet" {
  source = "./temp/subnet"
  vpc-id = module.dev-vpc.vpc_id
  count_sub = 2
  subnet_cidr = ["10.0.1.0/24","10.0.3.0/24"]
  zone = ["us-east-1a","us-east-1b"]
  subtype = "false"
}

