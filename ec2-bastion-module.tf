module "ec2_bastion" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "6.1.4"

  name = "${local.Name}-bastion-host"

  ami                    = data.aws_ami.my-data-ami.id
  instance_type          = var.instance-type
  subnet_id              = module.vpc.public_subnets[0]
  key_name               = var.key-pair
  vpc_security_group_ids = [module.sg-public-bastion.security_group_id]

  tags = local.common_tags

}