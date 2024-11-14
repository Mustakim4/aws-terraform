resource "aws_instance" "test-vpc-instance" {
  ami                    = "ami-0866a3c8686eaeeba"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.test-vpc-public-key.key_name
  subnet_id              = aws_subnet.my-public-subnet-01.id
  vpc_security_group_ids = [aws_security_group.test-vpc-sg.id]

  tags = {
    Name = "test-vpc-instance"
    test = "myvpc"
  }
}

output "aws-instance-info" {
  value = aws_instance.test-vpc-instance.id
}