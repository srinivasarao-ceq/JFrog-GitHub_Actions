provider "aws" {
  region = "us-east-1"  # Set your desired AWS region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket"  # Set a unique name for your bucket

  acl    = "private"  # Access Control List, can be "private", "public-read", "public-read-write", "authenticated-read", etc.

  versioning {
    enabled = true  # Enable versioning for the bucket
  }

  tags = {
    Name        = "MyBucket"
    Environment = "Production"
    Owner       = "Maddila.Srinivasa@cloudeq.com"
  }
}
}
