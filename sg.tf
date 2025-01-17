module "security_group" {
  source  = "cloudposse/security-group/aws"
  version = "0.4.2"

  rules                      = var.security_group_rules
  vpc_id                     = var.vpc_id
  security_group_description = var.security_group_description

  enabled = local.security_group_enabled
  context = module.this.context
}
