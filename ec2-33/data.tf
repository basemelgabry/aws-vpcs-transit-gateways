data "aws_subnet_ids" "subnets" {
  vpc_id = data.terraform_remote_state.basnetwork.outputs.vpc_id
}