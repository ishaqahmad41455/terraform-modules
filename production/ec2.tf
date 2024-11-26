module "prod_ec2_1" {
  source          = "../modules/compute"
  environment     = module.prod_vpc_1.environment
  aws_region      = var.aws_region
  key_name        = "devops-keypair"
  vpc_name        = module.prod_vpc_1.vpc_name
  public_subnets  = module.prod_vpc_1.public-subnet
  private_subnets = module.prod_vpc_1.private-subnet
  sg_id           = module.prod_sg_1.sg_id

  amis = {
    us-east-1 = "ami-0866a3c8686eaeeba"
    us-east-2 = "ami-0ea3c35c5c3284d82 "
  }
}