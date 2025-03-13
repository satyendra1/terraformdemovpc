resource "aws_route_table" "publicroutetable" {
  vpc_id = aws_vpc.vpcdemo.id
  tags = {
    Name = "demo-public-routetable"
  }
}

#Define Route
resource "aws_route" "publicroute" {
  route_table_id         = aws_route_table.publicroutetable.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.public_internet_gateway.id
}


resource "aws_route_table" "privateroute_table" {
  vpc_id = aws_vpc.vpcdemo.id
  tags = {
    Name = "demo-private-routetable"
  }
}
