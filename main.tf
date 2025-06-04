module "s3" {
  source                = "./modules/s3"
  source_bucket_name    = var.source_bucket_name
  processed_bucket_name = var.
  environment           = var.environment
  enable_versioning     = var.enable_versioning
  tags                  = var.tags
}

module "sns" {
  source     = "./modules/sns"
  topic_name = var.sns_topic_name
  tags       = var.tags
  email      = var.email
}

module "lambda" {
  source             = "./modules/lambda_function"
  function_name      = var.lambda_function_name
  role_arn           = module.iam.lambda_role_arn
  handler            = "lambda_function.lambda_handler"
  runtime            = "python3.9" # or your preferred runtime
  filename           = "./Functions/lambda_function.zip"
  source_bucket_name = module.s3_buckets.original_images_bucket_name
  dest_bucket_name   = module.s3_buckets.processed_images_bucket_name
  sns_topic_arn      = module.sns.topic_arn
  resize_width       = var.resize_width
  memory_size        = 512
  timeout            = 60
  tags               = var.tags
}