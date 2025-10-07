
/*output "ec2-public-ip" {
  value = aws_instance.myec2-vm.public_ip
}*/

/*
#List
output "ec2-public-ip-list" {
  value = [for x in aws_instance.myec2-vm : x.public_ip]
}

#Map
output "ec2-public-ip-map" {
  value = { for x in aws_instance.myec2-vm : x.id => x.public_ip }
}

#Map-advanced
output "ec2-public-ip-map-advanced" {
  value = { for x, instance in aws_instance.myec2-vm : x => instance.public_ip }
}

#Latest Splat Operator
/*output "ec2-public-ip-splat" {
  value = aws_instance.myec2-vm[*].public_ip
}
*/
/////////////VPC OUTPUTS////////////////

# VPC ID
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

# VPC CIDR blocks
output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}

# VPC Private Subnets
output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = module.vpc.private_subnets
}

# VPC Public Subnets
output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = module.vpc.public_subnets
}

# VPC NAT gateway Public IP
output "nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = module.vpc.nat_public_ips
}

# VPC AZs
output "azs" {
  description = "A list of availability zones spefified as argument to this module"
  value       = module.vpc.azs
}
/*
////////////////////////////OPEN ID CONNECT////////////////////////////////////
# Output: AWS IAM Open ID Connect Provider ARN
output "aws_iam_openid_connect_provider_arn" {
  description = "AWS IAM Open ID Connect Provider ARN"
  value       = aws_iam_openid_connect_provider.oidc_provider.arn
}
*/
/*
# Output: AWS IAM Open ID Connect Provider
output "aws_iam_openid_connect_provider_extract_from_arn" {
  description = "AWS IAM Open ID Connect Provider extract from ARN"
  value       = local.aws_iam_oidc_connect_provider_extract_from_arn
}
*/