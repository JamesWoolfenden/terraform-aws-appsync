data "aws_subnet_ids" "public" {
  vpc_id = element(tolist(data.aws_vpcs.main.ids), 0)
  tags = {
    Name = var.sub_public_tag
  }
}

data "aws_subnet_ids" "private" {
  vpc_id = element(tolist(data.aws_vpcs.main.ids), 0)
  tags = {
    Name = var.sub_private_tag
  }
}

data "aws_vpcs" "main" {
  tags = {
    Name = var.vpc_name_tag
  }
}

data "aws_caller_identity" "current" {}
