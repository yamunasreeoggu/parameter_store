terraform {
  backend "s3" {
    bucket = "terraform-statefile-yamuna"
    key    = "parameter_store/terraform.tfstate"
    region = "us-east-1"
  }
}