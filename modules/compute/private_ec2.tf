resource "aws_instance" "private-server" {
  # count = length(var.private_cird_block)
  count                  = var.environment == "Prod" ? 3 : 1
  ami                    = lookup(var.amis, var.aws_region)
  instance_type          = "t2.micro"
  key_name               = var.key_name
  subnet_id              = element(var.private_subnets, count.index + 1)
  vpc_security_group_ids = [var.sg_id]
  # associate_public_ip_address = true	
  tags = {
    Name        = "${var.vpc_name}-Private-Server-${count.index + 1}"
    # Owner       = local.Owner
    # costcenter  = local.costcenter
    # TeamDL      = local.TeamDL
    environment = "${var.environment}"
  }
}