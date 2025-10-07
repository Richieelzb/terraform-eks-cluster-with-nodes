/*module "ec2_bastion" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.7.1"

  name = "${local.Name}-bastion-host"

  ami                    = data.aws_ami.my-data-ami.id
  instance_type          = var.instance-type-list[1]
  subnet_id              = module.vpc.public_subnets[0]
  key_name               = var.key-pair
  vpc_security_group_ids = [module.sg-module.security_group_id]

  tags = local.common_tags

}*/