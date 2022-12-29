resource "aws_nat_gateway" "coddlerbox-nat-gw" {
  subnet_id     = element(aws_subnet.public_subnets.*.id, 0)
  allocation_id = aws_eip.nat_eip.id

  depends_on = [
    aws_subnet.public_subnets,
    aws_eip.nat_eip
  ]
  tags = {
    "Name" = "${var.environment}-nat-gw"
  }

}