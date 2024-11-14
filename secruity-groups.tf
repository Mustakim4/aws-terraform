resource "aws_security_group" "test-vpc-sg" {
  name   = "test-vpc-sg"
  vpc_id = aws_vpc.my-vpc-01.id

  tags = {
    Name = "test-vpc-sg"
    test = "myvpc"
  }
}

resource "aws_security_group_rule" "inbound_rule" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["10.0.0.0/16"]
  security_group_id = aws_security_group.test-vpc-sg.id
}

resource "aws_security_group_rule" "outbound_rule" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.test-vpc-sg.id
}