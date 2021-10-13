# main.tf file ECR 
resource "aws_ecr_repository" "pythonapp_ecr" {
  name = "${local.pythonapp_ecr_repo_name}"
}

resource "aws_ecr_repository" "redis_ecr" {
  name = "${local.redis_ecr_repo_name}"
}

# Build images and push to ECR

resource "docker_registry_image" "pythonapp_image"{
  name = "${aws_ecr_repository.pythonapp_ecr.repository_url}:latest"
  build {
    context = "../app"
    dockerfile = "pythonapp.Dockerfile"
  }
}

resource "docker_registry_image" "redis_image"{
  name = "${aws_ecr_repository.redis_ecr.repository_url}:latest"
  build {
    context = "../app"
    dockerfile = "redis.Dockerfile"
  }
}

# Setup credentials for pushing an image
