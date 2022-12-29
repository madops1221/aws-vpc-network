resource "aws_internet_gateway" "coddlerbox-igw" {
  vpc_id = aws_vpc.coddlerbox-vpc.id

  tags = {
    "Name" = "${var.environment}-igw"
  }

}