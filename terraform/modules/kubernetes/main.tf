module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.31"

  cluster_name    = "phil-cluster"
  cluster_version = "1.32"

  # Optional
  cluster_endpoint_public_access = true

  # Optional: Adds the current caller identity as an administrator via cluster access entry
  enable_cluster_creator_admin_permissions = true

  eks_managed_node_groups = {
    phils-nodes = {
      instance_types = ["t3.micro"]
      min_size       = 1
      max_size       = 3
      desired_size   = 2
    }
  }

  vpc_id     = var.vpc_id
  subnet_ids = var.public_subnets

  tags = {
    Environment = "phils-account"
    Terraform   = "true"
  }
}