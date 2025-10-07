resource "aws_eip" "bastion-eip" {
  depends_on = [aws_instance.ec2-vm-public, module.vpc]
  instance   = aws_instance.ec2-vm-public.id

  tags = local.common_tags
}