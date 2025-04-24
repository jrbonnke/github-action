terraform {
  backend "s3" {
    bucket         = "terraform-tstate"
    key            = "opt/actions-runner/_work/github-action/github-action/terraform"
    region         = "us-east-1"               
    # dynamodb_table = "terraform-locks"           
    encrypt        = true
  }
}