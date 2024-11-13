resource "aws_subnet" "my-public-subnet-01" {
  vpc_id            = aws_vpc.my-vpc-01.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = var.AVAILABILITY_ZONE_1

  tags = {
    Name = "my-public-subnet-01"
    test = "myvpc"
  }
}

resource "aws_subnet" "my-public-subnet-02" {
  vpc_id            = aws_vpc.my-vpc-01.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = var.AVAILABILITY_ZONE_2

  tags = {
    Name = "my-public-subnet-02"
    test = "myvpc"
  }
}

output "subnet-1-info" {
  value = {
    subnet-1-id                   = aws_subnet.my-public-subnet-01.id
    subnet-1-availability_zone    = aws_subnet.my-public-subnet-01.availability_zone
    subnet-1-availability_zone_id = aws_subnet.my-public-subnet-01.availability_zone_id
  }
}

output "subnet-2-info" {
  value = {
    subnet-2-id                   = aws_subnet.my-public-subnet-02.id
    subnet-2-availability_zone    = aws_subnet.my-public-subnet-02.availability_zone
    subnet-2-availability_zone_id = aws_subnet.my-public-subnet-02.availability_zone_id
  }
}