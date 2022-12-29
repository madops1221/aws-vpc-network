resource "aws_vpc" "coddlerbox-vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true


  tags = {
    "Name" = "${var.environment}-vpc"

  }

}