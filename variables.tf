variable "region" {
    default = "ap-south-1"
    description = "aws-region"
}
variable "vpc_cidr_block" {
    default = "192.168.0.0/16"
    description = "vpc cidr.block"
}
variable "public_subnet_cidr_block" {
    default = "192.168.0.10/24"
    description = "public subnet cidr block"
}
variable "private_subnet_cidr_block" {
    default = "192.168.0.11/24"
    description = "private subnet cidr block"
}