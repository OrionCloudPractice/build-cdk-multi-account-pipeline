// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: MIT-0

variable "pipeline_name" {
  type = string
}

variable "repo" {
  type = string
}

variable "branch" {
  type    = string
  default = "main"
}

variable "environment_variables" {
  description = "environment variables for codebuild"
  type        = map(string)
  default = {
    CDK_DEFAULT_ACCOUNT  = "536697236057"
    CDK_DEFAULT_REGION   = "us-east-1"
  }
}

variable "accounts" {
  description = "list of accounts to deploy to"
  type        = map(string)
}

variable "kms_key" {
  description = "kms key to be used"
  type        = string
  default     = null
}

variable "access_logging_bucket" {
  description = "s3 server access logging bucket"
  default     = null
}

variable "connection" {
  type    = string
  default = null
}

variable "detect_changes" {
  type    = string
  default = false
}

variable "codebuild_policy" {
  type    = string
  default = null
}

variable "codebuild_timeout" {
  type    = number
  default = 60
}
