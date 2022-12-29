resource "aws_route_table" "public_route" {
  vpc_id = aws_vpc.coddlerbox-vpc.id

  tags = {
    "Name" = "${var.environment}-public-rt"
  }

}
resource "aws_route_table" "private_route" {
  vpc_id = aws_vpc.coddlerbox-vpc.id

  tags = {
    "Name" = "${var.environment}-private-rt"
  }

}
resource "aws_route" "public_igw" {
  route_table_id         = aws_route_table.public_route.id
  gateway_id             = aws_internet_gateway.coddlerbox-igw.id
  destination_cidr_block = "0.0.0.0/0"
  depends_on = [
    aws_internet_gateway.coddlerbox-igw
  ]
}
resource "aws_route" "private_nat" {
  route_table_id         = aws_route_table.private_route.id
  nat_gateway_id         = aws_nat_gateway.coddlerbox-nat-gw.id
  destination_cidr_block = "0.0.0.0/0"
  depends_on = [
    aws_nat_gateway.coddlerbox-nat-gw
  ]
}
resource "aws_route_table_association" "public_association" {
  count          = length(var.public_subnets)
  subnet_id      = element(aws_subnet.public_subnets.*.id, count.index)
  route_table_id = aws_route_table.public_route.id

}
resource "aws_route_table_association" "private_association" {
  count          = length(var.private_subnets)
  subnet_id      = element(aws_subnet.private_subnets.*.id, count.index)
  route_table_id = aws_route_table.private_route.id
}


  