resource "aws_vpc" "my-vpc-01" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "my-vpc-01"
    test = "myvpc"
  }
}

output "vpc-info" {
  value = aws_vpc.my-vpc-01.id
}