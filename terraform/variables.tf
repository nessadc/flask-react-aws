# core

variable "region" {
  description = "The AWS region to create resources in."
  default     = "us-east-1"
}

# logs

variable "log_retention_in_days" {
  default = 30
}

# ecs

variable "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  default     = "flask-react-fargate"
}
variable "docker_image_url_client" {
  description = "Docker client image to run in the ECS cluster"
  default     = "<AWS_ACCOUNT_ID>.dkr.ecr.us-west-1.amazonaws.com/test-driven-client-fargate:prod"
}
variable "docker_image_url_users" {
  description = "Docker users image to run in the ECS cluster"
  default     = "<AWS_ACCOUNT_ID>.dkr.ecr.us-west-1.amazonaws.com/test-driven-users-fargate:prod"
}
variable "app_count" {
  description = "Number of Docker containers to run"
  default     = 1
}
variable "secret_key" {
  description = "Flask Secret Key"
  default     = "foobar"
}

# rds

variable "rds_db_name" {
  description = "RDS database name"
  default     = "api_prod"
}
variable "rds_username" {
  description = "RDS database username"
  default     = "webapp"
}
variable "rds_password" {
  description = "RDS database password"
  default = "foobarbaz"
}
variable "rds_instance_class" {
  description = "RDS instance type"
  default     = "db.t2.micro"
}