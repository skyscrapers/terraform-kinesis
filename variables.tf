variable "project" {
  description = "Project name to use"
}

variable "name" {
  description = "Name of the stack"
}

variable "environment" {
  description = "Environment to deploy on"
}

variable "tags" {
  description = "(Optional, Default: []) List of map of additional tags"
  type        = "list"
  default     = []
}

variable "kinesis_chard_count" {
  default = 1
}

variable "kinesis_retention_period" {
  default = 24
}

variable "sns_topic_arn" {}
