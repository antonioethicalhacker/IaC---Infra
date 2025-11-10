resource "aws_vpc" "tfer--vpc-059bb5390fb929788" {
  assign_generated_ipv6_cidr_block     = "false"
  cidr_block                           = "172.31.0.0/16"
  enable_dns_hostnames                 = "true"
  enable_dns_support                   = "true"
  enable_network_address_usage_metrics = "false"
  instance_tenancy                     = "default"
  ipv6_netmask_length                  = "0"
  region                               = "us-east-1"
}

resource "aws_vpc" "tfer--vpc-0b059e2be97a4cc5c" {
  assign_generated_ipv6_cidr_block     = "false"
  cidr_block                           = "172.31.0.0/16"
  enable_dns_hostnames                 = "true"
  enable_dns_support                   = "true"
  enable_network_address_usage_metrics = "false"
  instance_tenancy                     = "default"
  ipv6_netmask_length                  = "0"
  region                               = "us-east-1"
}

resource "aws_vpc" "tfer--vpc-0d58a4d64c3603d0f" {
  assign_generated_ipv6_cidr_block     = "false"
  cidr_block                           = "172.16.0.0/16"
  enable_dns_hostnames                 = "false"
  enable_dns_support                   = "true"
  enable_network_address_usage_metrics = "false"
  instance_tenancy                     = "default"
  ipv6_netmask_length                  = "0"
  region                               = "us-east-1"

  tags = {
    Name = "vpc-teste-m4pf"
  }

  tags_all = {
    Name = "vpc-teste-m4pf"
  }
}
