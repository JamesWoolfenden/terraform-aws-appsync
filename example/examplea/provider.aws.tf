# holden:ignore:HLD_TF_013
provider "aws" {
  region = "eu-west-2"
  default_tags {
    tags = {
      Terraform   = "true"
      Environment = "dev"
    }
  }
}
