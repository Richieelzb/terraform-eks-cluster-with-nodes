module "sg-module" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.3.0"

  name        = "${local.Name}-security-group"
  description = "Security group which is used as an argument in complete-sg"
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["ssh-tcp", "http-80-tcp", "http-8080-tcp"]

  egress_rules = ["all-all"]

  tags = local.common_tags
}