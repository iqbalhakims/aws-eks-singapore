provider " aws "{
    region = "var.aws_region"
}

data "aws availability zones " " available" {}

locals{
    cluster_name = " iqbal-eks-${random_string.suffix.result}"
}

resource "random string" "suffix" {
    length = 8
    special = false

}

module "vpc" {
    source = "terraform-aws-modules/vpc/aws"
    version = "5.7.0"


    name = "iqbalvpc"
    cidr = var.vpc_cidr
    azs = data.aws.availability_zones.available.names
    private_subnets = ["10.0.0.1/24" , "10.0.0.2/24"]
    public_subnets = ["10.0.0.3/24" , "10.0.0.4/24"]
    enable_nat_gateways = true
    single_nat_gateways = true
    enable_dns_hostname = true
    enable_dns_support = true


    tags = {
        "kubernetes.io/cluster/${local.cluster_name}" = "shared"
    }

    public_subnet_tags = {
        "kubernetes.io/cluster/${local.cluster_name}" = "shared"
        "kubernetes.io/role/elb" = "1"
    }

    private_subnet_tags ={

        "kubernetes.io/cluster/${local.cluster_name}" = "shared"
        "kubernetes.io/role/internal-elb" = "1"
    }
}