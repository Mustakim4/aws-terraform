resource "aws_internet_gateway" "my-internet-gateway" {
  vpc_id = aws_vpc.my-vpc-01.id

  tags = {
    Name = "my-internet-gateway"
    test = "myvpc"
  }
}

output "internet_gateway_info" {
  value = aws_internet_gateway.my-internet-gateway.id
}