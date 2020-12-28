provider "aws" {
  region = "us-east-2"
}

resource "aws_security_group" "ticketsecgr" {
  name        = "ticketsecgr"
  vpc_id      = module.vpc.vpc_id

  ingress {    
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0./0"]
  }

  ingress {    
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0./0"]
  }
}