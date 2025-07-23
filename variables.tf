variable "kubernetes_version"{
    default = 1.32
    description = "kubernetes version"

}

variable "vpc_cidr" {
    default = "10.0.0.0/16"
    description = "cidr value "
}

variable "aws_region" {
    default = "ap-southeast-1"
    description  = "singapore"
}