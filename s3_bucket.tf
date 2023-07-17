module "s3_bucket" {  
  source = "git::https://gitlab.com/syngentagroup/Terraform-Modules/terraform-aws-s3.git?ref=latest"
  bucket = "${var.bucket_name}-${var.env}-bucket"
  acl = "private"
  
  versioning = {
    status     = false
    mfa_delete = false
  }

  tags = {
    Name             = var.bucket_name
    BusinessFunction = var.business_function
    OwnerEmail       = var.owner_email
    ContactEmail     = var.contact_email
    Platform         = var.platform
    CostCenter       = var.cost_center
    Application      = var.application
    Purpose          = var.purpose
    Environment      = var.environment
    CreatedByEmail   = var.created_by_email
  }

  lifecycle_rule = [
    {
      id      = "default"
      enabled = true    
      abort_incomplete_multipart_upload_days = 7
     
      transition = [
        {
          days          = 90
          storage_class = "INTELLIGENT_TIERING"
        }
      ]

      noncurrent_version_transition = [
        {
          days          = 60
          storage_class = "STANDARD_IA"
        },
        {
          days          = 90
          storage_class = "ONEZONE_IA"
        },
        {
          days          = 120
          storage_class = "GLACIER"
        },
      ]

      noncurrent_version_expiration = {
        days = 300
      }
    }
  ]  
}

resource "aws_s3_object" "folders" {
  bucket = "${var.bucket_name}-${var.env}-bucket"
  for_each = var.s3_folders
  key    = "${each.value}/"
  content = ""
}