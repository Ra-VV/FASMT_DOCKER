# locals.tf
locals {
  pythonapp_ecr_repo_name = "${var.tasknumber}-${var.name}-${terraform.workspace}-repo-pythonapp"
  redis_ecr_repo_name     = "${var.tasknumber}-${var.name}-${terraform.workspace}-repo-redis"
  aws_ecr_url             = "${data.aws_caller_identity.current.account_id}.dkr.ecr.${var.region}.amazonaws.com"
}