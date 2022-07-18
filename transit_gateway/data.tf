data "aws_subnet_ids" "subnets33" {
  vpc_id = data.terraform_remote_state.network33.outputs.vpc_id
}

data "aws_subnet_ids" "subnets66" {
  vpc_id = data.terraform_remote_state.network66.outputs.vpc_id
}