
# holden:ignore:HLD_TF_004: example config uses local state intentionally; not a shared/production stack
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.43.0"
    }
  }
  required_version = ">=1.5.0"
}
