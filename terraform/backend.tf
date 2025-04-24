terraform {
  backend "s3" {
    bucket         = "terraform-tstate-new"
    key            = "terraform/terraform.tstate"
    region         = "us-east-1"               
    # dynamodb_table = "terraform-locks"           
    encrypt        = true
  }
}