resource "aws_route_table_association" "publicsubnetassociation" {
  route_table_id = aws_route_table.publicroutetable.id
  count          = length(var.public_subnet)
  subnet_id      = element(aws_subnet.publicsubnet[*].id, count.index)
}

#private subnet association
resource "aws_route_table_association" "privatesubnetassociation" {
  route_table_id = aws_route_table.privateroute_table.id
  count          = length(var.private_subnet)
  subnet_id      = aws_subnet.privatesubnet[count.index].id
}
