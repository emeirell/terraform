###########################################################################
# Terraform required providers                                            #
###########################################################################
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.region
}

# Use data sources allow configuration to be
# generic for any region
data "aws_region" "current" {}
data "aws_availability_zones" "available" {}

# Create a VPC
resource "aws_vpc" "vpc-main" {
  cidr_block = var.cidr
  instance_tenancy = "default"
  enable_dns_support = var.dnsSupport    #gives you an internal domain name
  enable_dns_hostnames = var.hostSupport #gives you an internal host name
  
  tags = {
    Name = var.vpcName
  }

}
# Create a Subnet
resource "aws_subnet" "sub-main" {
  vpc_id     = “${aws_vpc.vpc-main.id}”
  cidr_block = var.subcidr
  map_public_ip_on_launch = var.public # This makes the subnet public
  availability_zone = var.avaZone

  tags = {
    Name = var.subnetName 
  }

}
 # Create a Internet Gateway
 resource "aws_internet_gateway" "prod-igw" {
    vpc_id = “${aws_vpc.vpc-main.id}”
    tags {
        Name = var.igName
  }
  
}
