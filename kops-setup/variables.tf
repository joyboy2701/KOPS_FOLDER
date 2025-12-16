variable "kops_cluster_config" {
  description = "Configuration object for the kOps cluster"
  type = object({
    cluster_name         = string
    kubernetes_version   = string
    state_store          = string
    vpc_name             = string
    api_access_cidrs     = list(string)
    master_instance_type = string
    node_instance_type   = string
    master_count         = number
    node_count           = number
    admin_ssh_key_path   = string

    load_balancer_type          = string
    use_for_internal_api        = bool
    enable_remote_node_identity = bool

    load_balancer_class = string
  })
}
