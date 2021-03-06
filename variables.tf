variable "project" {
  description = "Project name to use"
  type        = string
}

variable "name" {
  description = "Name of the stack"
  type        = string
}

variable "environment" {
  description = "Environment to deploy on"
  type        = string
}

variable "tags" {
  description = "List of map of additional tags"
  type        = list(string)
  default     = []
}

variable "kinesis_shard_count" {
  description = "Number of shards to deploy in the stream"
  type        = number
  default     = 1
}

variable "kinesis_retention_period" {
  description = "Retention period for the data in the kinesis stream"
  type        = number
  default     = 24
}

variable "sns_topic_arn" {
  description = "SNS topic to push the alerts of the monitoring to"
  type        = string
}

