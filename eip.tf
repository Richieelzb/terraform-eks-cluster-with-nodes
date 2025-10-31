resource "aws_eip" "bastion-eip" {
  depends_on = [module.ec2_bastion, module.vpc]
  instance   = module.ec2_bastion.id
 // vpc = true
  tags = local.common_tags
}