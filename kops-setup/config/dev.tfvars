kops_cluster_config = {
  cluster_name               = "cluster.internal"
  kubernetes_version         = "1.27.10"
  vpc_name                   = "my-vpc"
  state_store                = "s3://kops-state-store-bukcet"
  admin_ssh_key_path         = "./kops-key.pub"
  api_access_cidrs           = ["0.0.0.0/0"]
  master_instance_type       = "t2.medium"
  node_instance_type         = "t2.medium"
  master_count               = 1
  node_count                 = 1
  state_bucket_force_destroy = true

  load_balancer_type          = "Internal"
  use_for_internal_api        = false
  enable_remote_node_identity = false
  load_balancer_class         = "Network"
}
