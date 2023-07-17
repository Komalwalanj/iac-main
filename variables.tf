variable "business_function" {
	description = "Business Function"
	type        = string
	default     = "CP R+D"
}

variable "owner_email" {
	description = "Owner Email"
	type        = string
	default     = "verena.wanner@syngenta.com"
}

variable "contact_email" {
	description = "Contact Email"
	type        = string
	default	    = "nithin.rapolu@syngenta.com"
}

variable "platform" {
	description = "Platform Name"
	type        = string
	default	    = "Trialing Execution"
}

variable "region" {
	description = "Region Name"
	type        = string
	default     = "us-east-1"
}

variable "cost_center" {
	description = "Cost center"
	type        = string
	default	    = "63533"
}

variable "application" {
	description = "Application Name"
	type        = string
	default     = "User Management"
}

variable "purpose" {
	description = "Purpose of Creation"
	type        = string
	default	    = "User Management"
}

variable "created_by_email" {
	description = "Creation Email"
	type        = string
	default     = "nithin.rapolu@syngenta.com"
}

variable "environment" {
	description = "Environment"
	type        = string
}

variable "env" {
	description = "Environment"
	type        = string
}

variable "bucket_name" {
	description = "Bucket Name"
	type        = string
}

variable "s3_folders" {
	description = "Folders in S3 bucket to represent environment"
	type        = set(string)
}

variable "assume_role_arn" {
	description = "Role ARN for access gitlab runner"
	type        = string
	default		= "arn:aws:iam::421717577885:role/user-management-gitlab-role"
}

variable "function_name" {
	description = "Lambda Function Name"
	type	    = string
	default	    = ""
}

variable "iam_role_arn" {
	description = "Lambda Function ARN"
	type        = string
	default     = ""
}

variable "environment_variables" {
	type        = map(string)
	description = "Map of environment variables that are accessible from the function code during execution."
	default     = {}
}


variable "s3_bucket" {
	description = "Lambda s3 Bucket"
	type        = string
	default     = ""
}

variable "s3_key" {
	description = "Lambda s3 key"
	type        = string
	default     = ""
}

variable "handler" {
	description = "Lambda  handler"
	type        = string
	default     = "handler"
}

variable "runtime" {
	description = "Lambda runtime"
	type        = string
	default     = "python3.9"
}

variable "timeout" {
	description = "Lambda timeout"
	type        = number
	default     = 3
}

variable "subnet_ids" {
	description = "subnet ids"
	type        = list
	default     = []
}

variable "security_group_ids" {
	description = "security group ids"
	type        = list
	default     = []
}

variable "private_subnet_ids" {
	description = "subnet ids"
	type        = list
	default     = []
}

variable "public_subnet_ids" {
	description = "subnet ids"
	type        = list
	default     = []
}

variable "lambda_security_group" {
	description = "lambda security group name"
	type        = string
	default     = ""
}

variable "vpc_id" {
	description = "add vpc id"
	type        = string
}

variable "aliases" {
  type        = list
  description = "Aliases"
}

variable "acm_certificate_arn" {
  type        = string
  description = "Certificate ARN"
}

variable "web_acl_id" {
  type        = string
  description = "Web ACL id" 
}

variable "resource_name" {
  type        = string
  description = "Resource Name"
}

variable "appcode" {
  type        = string
  description = "Application Name"
}