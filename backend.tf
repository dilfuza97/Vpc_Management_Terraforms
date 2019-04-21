terraform {
  backend "s3" {
     bucket = "terraform-state-january-dilfuza2"
     key = "infra.state"
     region = "eu-west-1" 
  }
}
