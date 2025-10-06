## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >0.12 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >3.68.0 |
| <a name="requirement_cloudinit"></a> [cloudinit](#requirement\_cloudinit) | ~>2.2.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 2.7.1 |
| <a name="requirement_local"></a> [local](#requirement\_local) | ~> 2.1.0 |
| <a name="requirement_null"></a> [null](#requirement\_null) | ~>3.1.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~>3.1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >3.68.0 |
| <a name="provider_aws availability zones "></a> [aws availability zones ](#provider\_aws availability zones ) | n/a |
| <a name="provider_random string"></a> [random string](#provider\_random string) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks"></a> [eks](#module\_eks) | terraform-aws-modules/eks/aws | 20.37.2 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | 5.7.0 |

## Resources

| Name | Type |
|------|------|
| [aws_security_group.all_worker_mgmt](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group_rule.all_worker_mgmt_egress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.all_worker_mgmt_ingress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [random string_random string.suffix](https://registry.terraform.io/providers/hashicorp/random string/latest/docs/resources/random string) | resource |
| [aws availability zones _aws availability zones . available](https://registry.terraform.io/providers/hashicorp/aws availability zones /latest/docs/data-sources/aws availability zones ) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | singapore | `string` | `"ap-southeast-1"` | no |
| <a name="input_kubernetes_version"></a> [kubernetes\_version](#input\_kubernetes\_version) | kubernetes version | `number` | `1.32` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | cidr value | `string` | `"10.0.0.0/16"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_endpoint"></a> [cluster\_endpoint](#output\_cluster\_endpoint) | endpoint of eks control plane |
| <a name="output_cluster_id"></a> [cluster\_id](#output\_cluster\_id) | eks cluster id |
| <a name="output_cluster_security_group_id "></a> [cluster\_security\_group\_id ](#output\_cluster\_security\_group\_id ) | security group ids attach to the cluster control plane |
| <a name="output_oidc_provider_arn"></a> [oidc\_provider\_arn](#output\_oidc\_provider\_arn) | n/a |
| <a name="output_region"></a> [region](#output\_region) | aws region |
