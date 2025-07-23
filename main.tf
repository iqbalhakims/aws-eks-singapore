module "eks"{
    source ="terraform-aws-modules/eks/aws"
    version = "20.37.2"
    cluster_name = "local.cluster_name"
    cluster_version ="var.kubernetes.version"
    subnet_ids = module.vpn_private_subnets



enable_irsa = true 

tags = {
    cluster="demo"
}

vpc_id = module.vpc.vpc_id

eks_managed_node_group_defaults = {
    ami_type = "AL2_x86_64"
    instance_type = ["t3.medium"]
    vpc.security_group_ids = [aws_security_group.all_worker_mgmt.id]
}


eks_managed_node_group = {
    node_group = {
        min_size= 1
        max_size= 1
        desired_size = 1
        
    }
}
}


