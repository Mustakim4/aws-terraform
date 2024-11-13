resource "aws_route_table" "my-route-table" {
  vpc_id = aws_vpc.my-vpc-01.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my-internet-gateway.id
  }

  tags = {
    Name = "my-route-table"
    test = "myvpc"
  }
}

resource "aws_route_table_association" "subnet-1" {
  route_table_id = aws_route_table.my-route-table.id
  subnet_id      = aws_subnet.my-public-subnet-01.id
}

resource "aws_route_table_association" "subnet-2" {
  route_table_id = aws_route_table.my-route-table.id
  subnet_id      = aws_subnet.my-public-subnet-02.id
}

output "route_table_info" {
  value = aws_route_table.my-route-table.id
}