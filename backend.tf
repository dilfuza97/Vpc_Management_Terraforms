terraform {
  backend "s3" {
    bucket = "dilfuza-nagiosxi"
    key    = "infra.state"
    region = "us-east-1"
  }
}
