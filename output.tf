output "cluster_id" {
    description = "eks cluster id "
    value = module.eks.cluster_id
}

output "cluster_endpoint" {
    description = "endpoint of eks control plane"
    value = module.eks.cluster_endpoint 

}

output "cluster_security_group_id " {
    description = "security group ids attach to the cluster control plane"
    value = module.eks.cluster_security_group_id
}

output "region" {
    description = "aws region"
    value = var.aws_region
}

output "oidc_provider_arn" {
    value = module.eks.oidc_provider_arn
}