provider "aws" {
 region = "us-west-2"
 shared_credentials_files = ["~/.aws/credentials"]
 profile = "default"
}
# Central State File
#Create an S3 bucket in the same location as the EC2

terraform {
 backend "s3" {
     bucket = "jkerradev"
     key = "jk_DevOps.pem"
     region = "us-west-2"
  }
}
