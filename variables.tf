variable "sns_topic_name" { 
  default = "image-topic" 
}

variable "tags" {
  type = map(string)
  default = {
    Project   = "ImageProcessor"
    Owner     = "prodTeam"
    ManagedBy = "Terraform"
  }
}

variable "email" {
  default = "anilkumar.padarthi@hcltech.com"
}


variable "source_bucket_name" {
  default = "anilkumar.padarthi@hcltech.com"
}

variable "email" {
  default = "anilkumar.padarthi@hcltech.com"
}


source_bucket_name
processed_bucket_name

enable_versioning

environment