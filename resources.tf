resource "aws_vpc" "golivpc" {
    cidr_block = var.vpc_cidr_block
}
resource "aws_subnet" "public_subnet" {
    cidr_block = var.public_subnet_cidr_block
    vpc_id = aws_vpc.golivpc.id
}
resource "aws_subnet" "private_subnet" {
    cidr_block = var.private_subnet_cidr_block
    vpc_id = aws_vpc.golivpc.id
}
resource "aws_instance" "sai" {
    ami = "ami-06f621d90fa29f6d0"
    instance_type = "t2.micro"
    tags = { 
        name = "mywebserver"
    }
}


 

    