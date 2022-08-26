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
resource "aws_vpc" "main" {
  cidr_block = var.cidr
  instance_tenancy = "default"
  enable_dns_support = var.dnsSupport    #gives you an internal domain name
  enable_dns_hostnames = var.hostSupport #gives you an internal host name

  tags = merge(
    var.vpcName,
    {},
    )
}
