resource "aws_vpc" "vpcdemo" {
  cidr_block = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    Name = "vpcdemo"
  }
}
