provider "aws" {
  region  = var.region

default_tags {
    tags = {
      Environment = var.environment,
      CostCenter = var.cost_center,
      Application = var.application,
      Platform = var.platform,
      OwnerEmail = var.owner_email,
      ContactEmail = var.contact_email,
      BusinessFunction = var.business_function
      Name = var.resource_name
      Purpose = var.purpose
      Created_by_email = var.created_by_email
    }
  }
}
#terraform {
 # backend "s3" {
  #  bucket         = "terraform-backend-dev-421717577885-statefile-bucket"
   # key            = "terraform-backend-dev-421717577885-statefile-bucket/bum/development/terraform.tfstate"
    #region         = "us-east-1"
    #dynamodb_table = "terraform-backend-dev-statefile-dynamodb"
    #encrypt        = true
    #role_arn       = "arn:aws:iam::421717577885:role/user-management-gitlab-role"
    #kms_key_id     = "arn:aws:kms:us-east-1:421717577885:key/a0b73d31-3da6-4fc2-b47f-c98ace6d283c"
  #}
#}