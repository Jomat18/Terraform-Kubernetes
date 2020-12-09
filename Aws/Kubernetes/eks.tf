
data "aws_eks_cluster" "cluster" {
  name = module.eks.cluster_id
}

data "aws_eks_cluster_auth" "cluster" {
  name = module.eks.cluster_id
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "12.2.0"

  cluster_name    = local.cluster_name
  cluster_version = "1.17"
  subnets         = module.vpc.private_subnets

  vpc_id = module.vpc.vpc_id

  node_groups = {
    eks_nodes = {
      desired_capacity = 3  
      max_capacity     = 3  
      min_capacity     = 3  

      instance_type = "t2.small"
    }
  }

  write_kubeconfig   = true
  config_output_path = "./"
}