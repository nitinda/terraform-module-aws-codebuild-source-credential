variable "auth_type" {
  description = "The type of authentication used to connect"
}

variable "server_type" {
  description = "The source provider used for this project."
}

variable "token" {
  description = "This is the personal access token"
}

variable "user_name" {
  description = "The Bitbucket username when the authType is BASIC_AUTH"
  default     = null
}