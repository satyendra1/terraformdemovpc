#Define public subnet
resource "aws_subnet" "publicsubnet" {
  vpc_id                  = aws_vpc.vpcdemo.id
  count                   = length(var.public_subnet)
  cidr_block              = element(var.public_subnet, count.index)
  availability_zone       = element(var.availability_zone, count.index)
  map_public_ip_on_launch = true
  tags = {
    Name = "demopublicsubnet"
  }
}

#Define private subnet
resource "aws_subnet" "privatesubnet" {
  vpc_id            = aws_vpc.vpcdemo.id
  count             = length(var.private_subnet)
  cidr_block        = element(var.private_subnet, count.index)
  availability_zone = element(var.availability_zone, count.index)
  tags = {
    Name = "demoprivatesubnet"
  }
}

