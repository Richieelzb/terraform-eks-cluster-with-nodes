/*resource "aws_instance" "ec2-vm-public" {
  ami = data.aws_ami.my-data-ami.id
  # instance_type = var.instance-type
  instance_type = var.instance-type-list[0]
  # instance_type = var.instance-type-map["dev"]
 # for_each               = toset(data.aws_availability_zones.specifics.names)
 # availability_zone      = each.key
  user_data              = file("${path.module}/app-install.sh")
  key_name               = var.key-pair
  subnet_id              = module.vpc.public_subnets[0]      
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  #count                  = 3
  tags = {
    Name = "bastion-ec2"
  }
}*/