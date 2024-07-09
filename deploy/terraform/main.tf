//creat eks cluster for wboard app
module "eks" {
  source = "terraform-aws-modules/eks/aws"
  cluster_name = "wboard-eks"
  cluster_version = "1.14"
  #subnets = ["subnet-0b1b1c6b1b1c6b1b1", "subnet-0b1b1c6b1b1c6b1b2", "subnet-0b1b1c6b1b1c6b1b3"]
  vpc_id = "vpc-0b1b1c6b1b1c6b1b1"
  node_groups = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity = 3
      min_capacity = 1
      instance_type = "t2.micro"
      key_name = "wboard"
    }
  }
}