resource "aws_instance" "example" {
  ami           = "ami-091a58610910a87a9"  # Replace with your desired AMI ID
  instance_type = "t2.micro"  # Replace with your desired instance type

  tags = {
    Name = "ExampleInstance"
    Owner = "Maddila.Srinivasa@cloudeq.com"
  }

  volume_tags = {
    Name = "ExampleInstance"
    Owner = "Maddila.Srinivasa@cloudeq.com"
  }
}