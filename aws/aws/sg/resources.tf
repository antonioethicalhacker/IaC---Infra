resource "aws_security_group" "tfer--alb-sg_sg-0e4095eaf23fad5e2" {
  description = "Security Group to ALB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "5000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5000"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name   = "alb-sg"
  region = "us-east-1"
  vpc_id = "vpc-0d58a4d64c3603d0f"
}

resource "aws_security_group" "tfer--aws-cloud9-cloud9-flask-app-6840306bd0da41b983c5c00d4fef7bb7-InstanceSecurityGroup-BQkzjDGKwPRa_sg-0d08b590fb90a97d5" {
  description = "Security group for AWS Cloud9 environment aws-cloud9-cloud9-flask-app-6840306bd0da41b983c5c00d4fef7bb7"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "5000"
    protocol    = "tcp"
    self        = "false"
    to_port     = "5000"
  }

  ingress {
    cidr_blocks = ["35.172.155.192/27", "35.172.155.96/27"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "aws-cloud9-cloud9-flask-app-6840306bd0da41b983c5c00d4fef7bb7-InstanceSecurityGroup-BQkzjDGKwPRa"
  region = "us-east-1"

  tags = {
    Name = "aws-cloud9-cloud9-flask-app-6840306bd0da41b983c5c00d4fef7bb7"
  }

  tags_all = {
    Name = "aws-cloud9-cloud9-flask-app-6840306bd0da41b983c5c00d4fef7bb7"
  }

  vpc_id = "vpc-0d58a4d64c3603d0f"
}

resource "aws_security_group" "tfer--default_sg-08ac7892ed8d34365" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks     = ["0.0.0.0/0"]
    from_port       = "5000"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--alb-sg_sg-0e4095eaf23fad5e2_id}"]
    self            = "false"
    to_port         = "5000"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name   = "default"
  region = "us-east-1"
  vpc_id = "vpc-0d58a4d64c3603d0f"
}

resource "aws_security_group" "tfer--default_sg-0c4ea17cc11c57725" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name   = "default"
  region = "us-east-1"
  vpc_id = "vpc-059bb5390fb929788"
}

resource "aws_security_group" "tfer--default_sg-0ce0f6500b522994b" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name   = "default"
  region = "us-east-1"
  vpc_id = "vpc-0b059e2be97a4cc5c"
}

resource "aws_security_group" "tfer--ecs-cluster-sg_sg-049833aee5f42555a" {
  description = "Security Group to ECS/Cluster"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks     = ["0.0.0.0/0"]
    from_port       = "5000"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--alb-sg_sg-0e4095eaf23fad5e2_id}"]
    self            = "false"
    to_port         = "5000"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  name   = "ecs-cluster-sg"
  region = "us-east-1"
  vpc_id = "vpc-0d58a4d64c3603d0f"
}

resource "aws_security_group" "tfer--sg_bastion_sg-05adabfa2426cb3a0" {
  description = "launch-wizard-1 created 2025-10-30T17:44:15.822Z"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "sg_bastion"
  region = "us-east-1"
  vpc_id = "vpc-0d58a4d64c3603d0f"
}

resource "aws_security_group" "tfer--sg_db_sg-0393d0652b2cbc28d" {
  description = "Security Group for Database"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "-1"
    protocol    = "icmp"
    self        = "false"
    to_port     = "-1"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "3306"
    protocol    = "tcp"
    self        = "false"
    to_port     = "3306"
  }

  name   = "sg_db"
  region = "us-east-1"
  vpc_id = "vpc-0d58a4d64c3603d0f"
}

resource "aws_security_group" "tfer--sg_iac_sg-01db4ea12745ff9d0" {
  description = "launch-wizard-1 created 2025-10-30T06:06:55.863Z"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "sg_iac"
  region = "us-east-1"
  vpc_id = "vpc-059bb5390fb929788"
}
