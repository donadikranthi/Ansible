# # # Using Open source module
# #  module "catalogue" {
# #   source = "terraform-aws-modules/security-group/aws"

#   name        = "${local.common_name_suffix}-catalogue"
#   use_name_prefix = false
#   description = "Security group for catalogue with custom ports open within VPC, egress all traffic"
#   vpc_id      = data.aws_ssm_parameter.vpc_id.value

# } 

module "sg" {
  count = length(var.sg_names)
  source = "git::https://github.com/daws-86s/terraform-aws-sg.git?ref=main"
  project_name = var.project_name
  environment = var.environment
  sg_name = var.sg_names[count.index]
  sg_description = "Created for ${var.sg_names[count.index]}"
  vpc_id =  local.vpc_id
}

# Frontend accepting traffic from frontend ALB
# resource "aws_security_group_rule" "frontend_frontend_alb" {
#   security_group_id = module.sg[lookup].sg_id
#   cidr_ipv4 = aws_vpc.default.cidr_block
#   from_port = 443
#   ip_protocol = "tcp"
#   to_port = 443
# }