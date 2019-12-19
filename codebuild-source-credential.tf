resource "aws_codebuild_source_credential" "codebuild_source_credential" {
  auth_type   = var.auth_type
  server_type = var.server_type
  token       = var.token
  user_name   = var.server_type == "BITBUCKET" ? var.user_name : null
}

