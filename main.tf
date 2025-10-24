module "development" {
  source         = "F:/TErraform/Infrastructure"
  Env            = "development"
  instance_type  = "t2.micro"
  ami_id         = "ami-020cba7c55df1f615"
  server_count   = 1
}

module "staging" {
  source         = "F:/TErraform/Infrastructure"
  Env            = "staging"
  instance_type  = "t2.medium"
  ami_id         = "ami-020cba7c55df1f615"
  server_count   = 1
}

module "production" {
  source         = "F:/TErraform/Infrastructure"
  Env            = "production"
  instance_type  = "t2.large"
  ami_id         = "ami-020cba7c55df1f615"
  server_count   = 3
}

output "development-ip-address" {
  value       = module.development.ec2_instances_public_ips
  description = "public ips of development servers"
}

output "staging-ip-address" {
  value       = module.staging.ec2_instances_public_ips
  description = "public ips of staging servers"
}

output "production-ip-address" {
  value       = module.production.ec2_instances_public_ips
  description = "public ips of production servers"
}
