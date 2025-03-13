resource "aws_internet_gateway" "public_internet_gateway" {
  vpc_id = aws_vpc.vpcdemo.id
  tags = {
    Name = "demoIgw7"
  }
}
