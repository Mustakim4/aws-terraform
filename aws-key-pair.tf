resource "aws_key_pair" "test-vpc-public-key" {
  key_name   = "test-vpc-public-key"
  public_key = file("test-vpc-public-key.pub")
}

# output "public-key-info" {
#   value = aws_key_pair.test-vpc-public-key.key_name
# }
