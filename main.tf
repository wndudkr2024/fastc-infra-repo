module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "fast-cluster"
  cluster_version = "1.24"
  vpc_id = "vpc-0b79e7c4ff142f2b5"

  private_subnets = ["subnet-099dc207f7ca09880", "subnet-01b1ced47e236e7c7"]
  public_subnets  = ["subnet-088c83937d21a7c8e", "subnet-08db81b7c37961c97"]
}