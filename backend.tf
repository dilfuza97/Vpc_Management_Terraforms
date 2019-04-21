terraform {
  backend "s3" {
     bucket = "terraform-state-january-dilfuza"
     key = "infra.state"
     region = "eu-west-1" 
  }
}
