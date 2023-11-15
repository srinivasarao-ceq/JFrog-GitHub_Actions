
# Create security group for webserver
resource "aws_security_group" "webserver_sg" {
  name               = "webserver_sg"
  description        =  "EC2 security group"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  # Allow all inbound traffic
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "webserver_sg"
    Project = "MCD-POC"
  }
}

