resource "aws_security_group" "default_group" {
  name        = "${var.environment}-default-sg"
  description = "Default security group for coddlerbox vpc"
  vpc_id      = aws_vpc.coddlerbox-vpc.id
  depends_on = [
    aws_vpc.coddlerbox-vpc
  ]
  tags = {
    "Name" = "${var.environment}-default-sg"
  }


}