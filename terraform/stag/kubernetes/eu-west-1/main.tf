module "ecs" {
  source          = "../../../modules/kubernetes"
  vpc_id          = var.vpc_id
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets
  environment     = var.environment
  tags            = local.tags
}