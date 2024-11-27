resource "aws_subnet" "public-subnets" {
  count             = length(var.public_cird_block)
  vpc_id            = aws_vpc.default.id
  cidr_block        = element(var.public_cird_block, count.index)
  availability_zone = element(var.azs, count.index)

  tags = {
    Name        = "${var.vpc_name}-Public-Subnet-${count.index + 1}"
    # DeployedBy  = local.DeployedBy
    # Costcenter  = local.Costcenter
    # TeamDL      = local.TeamDL
    environment = "${var.environment}"
  }
}