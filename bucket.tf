resource "aws_s3_bucket" "newbucket" {
  bucket = "terraform-january-dilfuza"

  tags {
     Name = "terraform-january-dilfuza" 
     Env  = "dev" 
     Dept = "IT" 
     Created_by = "dilfuzs"
  }
}