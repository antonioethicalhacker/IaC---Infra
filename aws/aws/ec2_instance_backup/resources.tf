resource "aws_instance" "tfer--i-04ccb34af0e6fdc52_iac" {
  ami                         = "ami-0bdd88bd06d16ba03"
  associate_public_ip_address = "true"
  availability_zone           = "us-east-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_options {
    core_count       = "1"
    threads_per_core = "2"
  }

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.small"
  ipv6_address_count                   = "0"
  key_name                             = "vockey"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  primary_network_interface {
    network_interface_id = "eni-0736b797661e412bc"
  }

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.31.87.66"
  region     = "us-east-1"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "3000"
    throughput            = "125"
    volume_size           = "16"
    volume_type           = "gp3"
  }

  security_groups   = ["sg_iac"]
  source_dest_check = "true"
  subnet_id         = "subnet-0b344f781421e241a"

  tags = {
    Name = "iac"
  }

  tags_all = {
    Name = "iac"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-01db4ea12745ff9d0"]
}

resource "aws_instance" "tfer--i-05fe51784a562083a_ECS-0020-Instance-0020---0020-cluster-app" {
  ami                         = "ami-087126591972bfe96"
  associate_public_ip_address = "false"
  availability_zone           = "us-east-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_options {
    core_count       = "1"
    threads_per_core = "2"
  }

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "LabInstanceProfile"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.small"
  ipv6_address_count                   = "0"
  key_name                             = "vockey"

  launch_template {
    id      = "lt-039c103a05ca1e7dd"
    name    = "ECSLaunchTemplate_ooMHvfOC6Gxg"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  primary_network_interface {
    network_interface_id = "eni-0a069633489e0163b"
  }

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.16.1.204"
  region     = "us-east-1"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "3000"
    throughput            = "125"
    volume_size           = "30"
    volume_type           = "gp3"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-0e7cd490cca54fd6e"

  tags = {
    AmazonECSManaged = ""
    Name             = "ECS Instance - cluster-app"
  }

  tags_all = {
    AmazonECSManaged = ""
    Name             = "ECS Instance - cluster-app"
  }

  tenancy                = "default"
  user_data_base64       = "IyEvYmluL2Jhc2ggCmVjaG8gRUNTX0NMVVNURVI9Y2x1c3Rlci1hcHAgPj4gL2V0Yy9lY3MvZWNzLmNvbmZpZzs="
  vpc_security_group_ids = ["sg-049833aee5f42555a"]
}

resource "aws_instance" "tfer--i-0666d64f7dea4f55e_Bastion" {
  ami                         = "ami-0360c520857e3138f"
  associate_public_ip_address = "true"
  availability_zone           = "us-east-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_options {
    core_count       = "1"
    threads_per_core = "2"
  }

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.micro"
  ipv6_address_count                   = "0"
  key_name                             = "vockey"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  primary_network_interface {
    network_interface_id = "eni-0c725a71eab4fd263"
  }

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.16.3.45"
  region     = "us-east-1"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "3000"
    throughput            = "125"
    volume_size           = "8"
    volume_type           = "gp3"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-01ebef0e62c4e7ac3"

  tags = {
    Name = "Bastion"
  }

  tags_all = {
    Name = "Bastion"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-05adabfa2426cb3a0"]
}

resource "aws_instance" "tfer--i-093e1e1b6d6f78e68_aws-cloud9-cloud9-flask-app-6840306bd0da41b983c5c00d4fef7bb7" {
  ami                         = "ami-06ba001ee27507588"
  associate_public_ip_address = "true"
  availability_zone           = "us-east-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_options {
    core_count       = "1"
    threads_per_core = "2"
  }

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.micro"
  ipv6_address_count                   = "0"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  primary_network_interface {
    network_interface_id = "eni-012fa03a1cd1fd94d"
  }

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.16.3.90"
  region     = "us-east-1"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "3000"
    throughput            = "125"
    volume_size           = "10"
    volume_type           = "gp3"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-01ebef0e62c4e7ac3"

  tags = {
    Name = "aws-cloud9-cloud9-flask-app-6840306bd0da41b983c5c00d4fef7bb7"
  }

  tags_all = {
    Name = "aws-cloud9-cloud9-flask-app-6840306bd0da41b983c5c00d4fef7bb7"
  }

  tenancy                = "default"
  user_data_base64       = "IyEvYmluL2Jhc2gKClVOSVhfVVNFUj0iZWMyLXVzZXIiClVOSVhfVVNFUl9IT01FPSIvaG9tZS9lYzItdXNlciIKRU5WSVJPTk1FTlRfUEFUSD0iL2hvbWUvZWMyLXVzZXIvZW52aXJvbm1lbnQiClVOSVhfR1JPVVA9JChpZCAtZyAtbiAiJFVOSVhfVVNFUiIpCgojIEFwcGx5IHNlY3VyaXR5IHBhdGNoZXMKT1BFUkFUSU5HX1NZU1RFTT0kKGF3ayAtRj0gJyQxPT0iSUQiIHsgcHJpbnQgJDIgO30nIC9ldGMvb3MtcmVsZWFzZSB8IHNlZCAtZSAncy9eIi8vJyAtZSAncy8iJC8vJykKaWYgWyAiJE9QRVJBVElOR19TWVNURU0iID09ICJhbXpuIiBdOyB0aGVuCiAgICB5dW0gLXEgLXkgdXBkYXRlIC0tc2VjdXJpdHkgPiAvdG1wL2luaXQteXVtLXVwZGF0ZS1zZWN1cml0eSAyPiYxICYKZWxpZiBbICIkT1BFUkFUSU5HX1NZU1RFTSIgPT0gInVidW50dSIgXTsgdGhlbgogICAgdW5hdHRlbmRlZC11cGdyYWRlICYKZmkKCiMgYWRkIFNTSCBrZXkKaW5zdGFsbCAtZyAiJFVOSVhfR1JPVVAiIC1vICIkVU5JWF9VU0VSIiAtbSA3NTUgLWQgIiRVTklYX1VTRVJfSE9NRSIvLnNzaApjYXQgPDwnRU9GJyA+PiAiJFVOSVhfVVNFUl9IT01FIi8uc3NoL2F1dGhvcml6ZWRfa2V5cwojIEltcG9ydGFudAojIC0tLS0tLS0tLQojIFRoZSBmb2xsb3dpbmcgcHVibGljIGtleSBpcyByZXF1aXJlZCBieSBDbG91ZDkgSURFCiMgUmVtb3ZpbmcgdGhpcyBrZXkgd2lsbCBtYWtlIHRoaXMgRUMyIGluc3RhbmNlIGluYWNjZXNzaWJsZSBieSB0aGUgSURFCiMKY2VydC1hdXRob3JpdHkgc3NoLXJzYSBBQUFBQjNOemFDMXljMkVBQUFBREFRQUJBQUFDQVFEMy84T0h2bDF2b3FEZ1Zub2FzRXQvVWFZQm85OTR1UHpTREhudmZPZTV5UHpRT0ZnbkwyS2RxeXZMemtyVDBIeEEvWFBPRy9raXFITWV5aHp0L2cvUHdSNEhXVGVFeGMvQkZuSExpOHh5R3RkaDgxSnRENnJrR3VVaGRmNDZVSmp2ZmhWamgvekRsZTROQjdrR015RTlERXlJYXFBQ2tQeVNaNHlGNjZOUWZzdXp5UWZBSzg0bGZUYzhac29YcEFLNEhneUxVU0E3WlhmYjRTTTZGQ1liOWlzRGgyMnhDd1FyekE3TFJkbndUMGxCUXBOSWtKZjhmYm9EUHlyUS9aRTFHNkg0QktKcy9xMGkyc01Qd2habXdNTHhYY3hKcE1yTVlBb2xUdklWZEc0NFBLSUJ6Yk96MU1FRWdycCtETE1SUXBjd0NoUUxwekpKeHZwTGhLaHp5bnVKVmNiSDhFdkdrblpDTC9nRlFIczk5RUxQME5uTUF4OUNaQTNtRFpNMVJGanZGOVQ3eU16ZkZUN1BDNUdqMUs0MDVGRm9CaUlwcVB5aHkyaVkrTHFaNytCcTBROWIwbG53OGJka1VhMEtWL3RBVVZvUm5XZDYzYnBTSm1paUd6bHBTenRGYW1RNkZEMTVmZ2QrYzhRWW9ybk1ONU5BL1J3dGJWN0hKTEFQWkRSYUhJRW1Vcnh4NzJzN2pCUkdBQzJxYVhPWHdlTWtYTHd1RTliY3NuTDVPYW1KRmF0ZXU2Q1ZlN0hjU20vTjJGbERBaGF4NzI0YmxyWXlhdTh4dlg5TmwyYUtoVTBodUpOM1lmM1kyL1pYMzJDNWdqTUplSVN3ZmFBWkY5b1JYYlFoWGEwa1VZY296OXN4Wmc2R1hzMGVuaDNFVFE1SmpOMHRYMFQrdnc9PSA2ODQwMzA2YmQwZGE0MWI5ODNjNWMwMGQ0ZmVmN2JiN0BjbG91ZDkuYW1hem9uLmNvbQoKCiMKIyBBZGQgYW55IGFkZGl0aW9uYWwga2V5cyBiZWxvdyB0aGlzIGxpbmUKIwoKRU9GCgojIGFsbG93IGF1dG9tYXRpYyBzaHV0ZG93bgplY2hvICIkVU5JWF9VU0VSICAgIEFMTD0oQUxMKSBOT1BBU1NXRDogL3NiaW4vcG93ZXJvZmYsIC9zYmluL3JlYm9vdCwgL3NiaW4vc2h1dGRvd24iID4+IC9ldGMvc3Vkb2VycwoKbG4gLXMgL29wdC9jOSAiJFVOSVhfVVNFUl9IT01FIi8uYzkKY2hvd24gLVIgIiRVTklYX1VTRVIiOiIkVU5JWF9HUk9VUCIgIiRVTklYX1VTRVJfSE9NRSIvLmM5IC9vcHQvYzkKaW5zdGFsbCAtZyAiJFVOSVhfR1JPVVAiIC1vICIkVU5JWF9VU0VSIiAtbSA3NTUgLWQgIiRFTlZJUk9OTUVOVF9QQVRIIgoKaWYgWyAiJEVOVklST05NRU5UX1BBVEgiID09ICIvaG9tZS9lYzItdXNlci9lbnZpcm9ubWVudCIgXSAmJiBncmVwICJhbGlhcyBweXRob249cHl0aG9uMjciICIkVU5JWF9VU0VSX0hPTUUiLy5iYXNocmM7IHRoZW4KCiAgICBjYXQgPDwnRU9GJyA+ICIkVU5JWF9VU0VSX0hPTUUiLy5iYXNocmMKIyAuYmFzaHJjCgpleHBvcnQgUEFUSD0kUEFUSDokSE9NRS8ubG9jYWwvYmluOiRIT01FL2JpbgoKIyBsb2FkIG52bQpleHBvcnQgTlZNX0RJUj0iJEhPTUUvLm52bSIKWyAiJEJBU0hfVkVSU0lPTiIgXSAmJiBucG0oKSB7CiAgICAjIGhhY2s6IGF2b2lkIHNsb3cgbnBtIHNhbml0eSBjaGVjayBpbiBudm0KICAgIGlmIFsgIiQqIiA9PSAiY29uZmlnIGdldCBwcmVmaXgiIF07IHRoZW4gd2hpY2ggbm9kZSB8IHNlZCAicy9iaW5cL25vZGUvLyI7CiAgICBlbHNlICQod2hpY2ggbnBtKSAiJEAiOyBmaQp9CiMgWyAtcyAiJE5WTV9ESVIvbnZtLnNoIiBdICYmIC4gIiROVk1fRElSL252bS5zaCIgICMgVGhpcyBsb2FkcyBudm0KcnZtX3NpbGVuY2VfcGF0aF9taXNtYXRjaF9jaGVja19mbGFnPTEgIyBwcmV2ZW50IHJ2bSBjb21wbGFpbnRzIHRoYXQgbnZtIGlzIGZpcnN0IGluIFBBVEgKdW5zZXQgbnBtICMgZW5kIGhhY2sKCgojIFVzZXIgc3BlY2lmaWMgYWxpYXNlcyBhbmQgZnVuY3Rpb25zCmFsaWFzIHB5dGhvbj1weXRob24yNwoKIyBtb2RpZmljYXRpb25zIG5lZWRlZCBvbmx5IGluIGludGVyYWN0aXZlIG1vZGUKaWYgWyAiJFBTMSIgIT0gIiIgXTsgdGhlbgogICAgIyBTZXQgZGVmYXVsdCBlZGl0b3IgZm9yIGdpdAogICAgZ2l0IGNvbmZpZyAtLWdsb2JhbCBjb3JlLmVkaXRvciBuYW5vCgogICAgIyBUdXJuIG9uIGNoZWNrd2luc2l6ZQogICAgc2hvcHQgLXMgY2hlY2t3aW5zaXplCgogICAgIyBrZWVwIG1vcmUgaGlzdG9yeQogICAgc2hvcHQgLXMgaGlzdGFwcGVuZAogICAgZXhwb3J0IEhJU1RTSVpFPTEwMDAwMAogICAgZXhwb3J0IEhJU1RGSUxFU0laRT0xMDAwMDAKICAgIGV4cG9ydCBQUk9NUFRfQ09NTUFORD0iaGlzdG9yeSAtYTsiCgogICAgIyBTb3VyY2UgZm9yIEdpdCBQUzEgZnVuY3Rpb24KICAgIGlmICEgdHlwZSAtdCBfX2dpdF9wczEgJiYgWyAtZSAiL3Vzci9zaGFyZS9naXQtY29yZS9jb250cmliL2NvbXBsZXRpb24vZ2l0LXByb21wdC5zaCIgXTsgdGhlbgogICAgICAgIC4gL3Vzci9zaGFyZS9naXQtY29yZS9jb250cmliL2NvbXBsZXRpb24vZ2l0LXByb21wdC5zaAogICAgZmkKCiAgICAjIENsb3VkOSBkZWZhdWx0IHByb21wdAogICAgX2Nsb3VkOV9wcm9tcHRfdXNlcigpIHsKICAgICAgICBpZiBbICIkQzlfVVNFUiIgPSByb290IF07IHRoZW4KICAgICAgICAgICAgZWNobyAiJFVTRVIiCiAgICAgICAgZWxzZQogICAgICAgICAgICBlY2hvICIkQzlfVVNFUiIKICAgICAgICBmaQogICAgfQoKICAgIFBTMT0nXFtcMDMzWzAxOzMybVxdJChfY2xvdWQ5X3Byb21wdF91c2VyKVxbXDAzM1swMG1cXTpcW1wwMzNbMDE7MzRtXF1cd1xbXDAzM1swMG1cXSQoX19naXRfcHMxICIgKCVzKSIgMj4vZGV2L251bGwpICQgJwpmaQoKRU9GCgogICAgY2hvd24gIiRVTklYX1VTRVIiOiIkVU5JWF9HUk9VUCIgIiRVTklYX1VTRVJfSE9NRSIvLmJhc2hyYwpmaQoKaWYgWyAiJEVOVklST05NRU5UX1BBVEgiID09ICIvaG9tZS9lYzItdXNlci9lbnZpcm9ubWVudCIgXSAmJiBbICEgLWYgIiRFTlZJUk9OTUVOVF9QQVRIIi9SRUFETUUubWQgXTsgdGhlbgogICAgY2F0IDw8J0VPRicgPj4gIiRFTlZJUk9OTUVOVF9QQVRIIi9SRUFETUUubWQKICAgICAgICAgX19fICAgICAgICBfX19fX18gICAgIF9fX18gXyAgICAgICAgICAgICAgICAgXyAgX19fCiAgICAgICAgLyBcIFwgICAgICAvIC8gX19ffCAgIC8gX19ffCB8IF9fXyAgXyAgIF8gIF9ffCB8LyBfIFwKICAgICAgIC8gXyBcIFwgL1wgLyAvXF9fXyBcICB8IHwgICB8IHwvIF8gXHwgfCB8IHwvIF9gIHwgKF8pIHwKICAgICAgLyBfX18gXCBWICBWIC8gIF9fXykgfCB8IHxfX198IHwgKF8pIHwgfF98IHwgKF98IHxcX18sIHwKICAgICAvXy8gICBcX1xfL1xfLyAgfF9fX18vICAgXF9fX198X3xcX19fLyBcX18sX3xcX18sX3wgIC9fLwogLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KCgpIaSB0aGVyZSEgV2VsY29tZSB0byBBV1MgQ2xvdWQ5IQoKVG8gZ2V0IHN0YXJ0ZWQsIGNyZWF0ZSBzb21lIGZpbGVzLCBwbGF5IHdpdGggdGhlIHRlcm1pbmFsLApvciB2aXNpdCBodHRwczovL2RvY3MuYXdzLmFtYXpvbi5jb20vY29uc29sZS9jbG91ZDkvIGZvciBvdXIgZG9jdW1lbnRhdGlvbi4KCkhhcHB5IGNvZGluZyEKCkVPRgoKICAgIGNob3duICIkVU5JWF9VU0VSIjoiJFVOSVhfR1JPVVAiICIkVU5JWF9VU0VSX0hPTUUiL2Vudmlyb25tZW50L1JFQURNRS5tZApmaQoKIyBGaXggZm9yIHBlcm1pc3Npb24gZXJyb3Igd2hlbiB0cnlpbmcgdG8gY2FsbCBgZ2VtIGluc3RhbGxgCmNob3duICIkVU5JWF9VU0VSIiAtUiAvdXNyL2xvY2FsL3J2bS9nZW1zCgojVGhpcyBzY3JpcHQgaXMgYXBwZW5kZWQgdG8gYW5vdGhlciBiYXNoIHNjcmlwdCwgc28gaXQgZG9lcyBub3QgbmVlZCBhIGJhc2ggc2NyaXB0IGZpbGUgaGVhZGVyLgoKVU5JWF9VU0VSX0hPTUU9Ii9ob21lL2VjMi11c2VyIgoKQzlfRElSPSRVTklYX1VTRVJfSE9NRS8uYzkKQ09ORklHX0ZJTEVfUEFUSD0iJEM5X0RJUiIvYXV0b3NodXRkb3duLWNvbmZpZ3VyYXRpb24KVkZTX0NIRUNLX0ZJTEVfUEFUSD0iJEM5X0RJUiIvc3RvcC1pZi1pbmFjdGl2ZS5zaApDT05GSUdfTUVUUklDX0ZJTEVfUEFUSD0iJEM5X0RJUiIvYXV0b3NodXRkb3duLXRpbWVzdGFtcAoKZWNobyAiU0hVVERPV05fVElNRU9VVD02MCIgPiAiJENPTkZJR19GSUxFX1BBVEgiCmNobW9kIGErdyAiJENPTkZJR19GSUxFX1BBVEgiCgp0b3VjaCAiJENPTkZJR19NRVRSSUNfRklMRV9QQVRIIgpjaG1vZCBhK3dyICIkQ09ORklHX01FVFJJQ19GSUxFX1BBVEgiCgplY2hvIC1lICcjIS9iaW4vYmFzaApzZXQgLWV1byBwaXBlZmFpbApDT05GSUc9JChjYXQgJyRDT05GSUdfRklMRV9QQVRIJykKU0hVVERPV05fVElNRU9VVD0ke0NPTkZJRyMqPX0KaWYgISBbWyAkU0hVVERPV05fVElNRU9VVCA9fiBeWzAtOV0qJCBdXTsgdGhlbgogICAgZWNobyAic2h1dGRvd24gdGltZW91dCBpcyBpbnZhbGlkIgogICAgZXhpdCAxCmZpCmlzX3NodXR0aW5nX2Rvd24oKSB7CiAgICBpc19zaHV0dGluZ19kb3duX3VidW50dSAmPiAvZGV2L251bGwgfHwgaXNfc2h1dHRpbmdfZG93bl9hbDIgJj4gL2Rldi9udWxsIHx8IGlzX3NodXR0aW5nX2Rvd25fYWwyMDIzICY+IC9kZXYvbnVsbAp9CmlzX3NodXR0aW5nX2Rvd25fdWJ1bnR1KCkgewogICAgbG9jYWwgVElNRU9VVAogICAgVElNRU9VVD0kKGJ1c2N0bCBnZXQtcHJvcGVydHkgb3JnLmZyZWVkZXNrdG9wLmxvZ2luMSAvb3JnL2ZyZWVkZXNrdG9wL2xvZ2luMSBvcmcuZnJlZWRlc2t0b3AubG9naW4xLk1hbmFnZXIgU2NoZWR1bGVkU2h1dGRvd24pCiAgICBpZiBbICIkPyIgLW5lICIwIiBdOyB0aGVuCiAgICAgICAgcmV0dXJuIDEKICAgIGZpCiAgICBsb2NhbCBTSFVURE9XTl9USU1FU1RBTVAKICAgIFNIVVRET1dOX1RJTUVTVEFNUD0iJChlY2hvICRUSU1FT1VUIHwgYXdrICJ7cHJpbnQgXCQzfSIpIgogICAgaWYgWyAkU0hVVERPV05fVElNRVNUQU1QID09ICIwIiBdIHx8IFsgJFNIVVRET1dOX1RJTUVTVEFNUCA9PSAiMTg0NDY3NDQwNzM3MDk1NTE2MTUiIF07IHRoZW4KICAgICAgICByZXR1cm4gMQogICAgZWxzZQogICAgICAgIHJldHVybiAwCiAgICBmaQp9CmlzX3NodXR0aW5nX2Rvd25fYWwyKCkgewogICAgbG9jYWwgRklMRQogICAgRklMRT0vcnVuL3N5c3RlbWQvc2h1dGRvd24vc2NoZWR1bGVkCiAgICBpZiBbWyAtZiAiJEZJTEUiIF1dOyB0aGVuCiAgICAgICAgcmV0dXJuIDAKICAgIGVsc2UKICAgICAgICByZXR1cm4gMQogICAgZmkKfQppc19zaHV0dGluZ19kb3duX2FsMjAyMygpIHsKICAgIGxvY2FsIFRJTUVPVVQKICAgIFRJTUVPVVQ9JChidXNjdGwgZ2V0LXByb3BlcnR5IG9yZy5mcmVlZGVza3RvcC5sb2dpbjEgL29yZy9mcmVlZGVza3RvcC9sb2dpbjEgb3JnLmZyZWVkZXNrdG9wLmxvZ2luMS5NYW5hZ2VyIFNjaGVkdWxlZFNodXRkb3duKQogICAgaWYgWyAiJD8iIC1uZSAiMCIgXTsgdGhlbgogICAgICAgIHJldHVybiAxCiAgICBmaQogICAgbG9jYWwgU0hVVERPV05fVElNRVNUQU1QCiAgICBTSFVURE9XTl9USU1FU1RBTVA9IiQoZWNobyAkVElNRU9VVCB8IGF3ayAie3ByaW50IFwkM30iKSIKICAgIGlmIFsgJFNIVVRET1dOX1RJTUVTVEFNUCA9PSAiMCIgXSB8fCBbICRTSFVURE9XTl9USU1FU1RBTVAgPT0gIjE4NDQ2NzQ0MDczNzA5NTUxNjE1IiBdOyB0aGVuCiAgICAgICAgcmV0dXJuIDEKICAgIGVsc2UKICAgICAgICByZXR1cm4gMAogICAgZmkKfQppc192ZnNfY29ubmVjdGVkKCkgewogICAgcGdyZXAgLWYgdmZzLXdvcmtlciA+L2Rldi9udWxsCn0KCmlmIGlzX3NodXR0aW5nX2Rvd247IHRoZW4KICAgIGlmIFtbICEgJFNIVVRET1dOX1RJTUVPVVQgPX4gXlswLTldKyQgXV0gfHwgaXNfdmZzX2Nvbm5lY3RlZDsgdGhlbgogICAgICAgIHN1ZG8gc2h1dGRvd24gLWMKICAgICAgICBlY2hvID4gIickQ09ORklHX01FVFJJQ19GSUxFX1BBVEgnIgogICAgZWxzZQogICAgICAgIFRJTUVTVEFNUD0kKGRhdGUgKyVzKQogICAgICAgIGVjaG8gIiRUSU1FU1RBTVAiID4gIickQ09ORklHX01FVFJJQ19GSUxFX1BBVEgnIgogICAgZmkKZWxzZQogICAgaWYgW1sgJFNIVVRET1dOX1RJTUVPVVQgPX4gXlswLTldKyQgXV0gJiYgISBpc192ZnNfY29ubmVjdGVkOyB0aGVuCiAgICAgICAgc3VkbyBzaHV0ZG93biAtaCAkU0hVVERPV05fVElNRU9VVAogICAgZmkKZmknID4gIiRWRlNfQ0hFQ0tfRklMRV9QQVRIIgoKY2htb2QgK3ggIiRWRlNfQ0hFQ0tfRklMRV9QQVRIIgoKZWNobyAiKiAqICogKiAqIHJvb3QgJFZGU19DSEVDS19GSUxFX1BBVEgiID4gL2V0Yy9jcm9uLmQvYzktYXV0b21hdGljLXNodXRkb3duCg=="
  vpc_security_group_ids = ["sg-0d08b590fb90a97d5"]
}

resource "aws_instance" "tfer--i-0c073e39fb3e0942d_library-database" {
  ami                         = "ami-0360c520857e3138f"
  associate_public_ip_address = "false"
  availability_zone           = "us-east-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_options {
    core_count       = "1"
    threads_per_core = "2"
  }

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.micro"
  ipv6_address_count                   = "0"
  key_name                             = "vockey"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  primary_network_interface {
    network_interface_id = "eni-0326d25294127d11e"
  }

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.16.1.116"
  region     = "us-east-1"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "3000"
    throughput            = "125"
    volume_size           = "8"
    volume_type           = "gp3"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-0e7cd490cca54fd6e"

  tags = {
    Name = "library-database"
  }

  tags_all = {
    Name = "library-database"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-0393d0652b2cbc28d"]
}

resource "aws_instance" "tfer--i-0d718c8a1a2d35302_ECS-0020-Instance-0020---0020-cluster-app" {
  ami                         = "ami-087126591972bfe96"
  associate_public_ip_address = "false"
  availability_zone           = "us-east-1b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_options {
    core_count       = "1"
    threads_per_core = "2"
  }

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  iam_instance_profile                 = "LabInstanceProfile"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.small"
  ipv6_address_count                   = "0"
  key_name                             = "vockey"

  launch_template {
    id      = "lt-039c103a05ca1e7dd"
    name    = "ECSLaunchTemplate_ooMHvfOC6Gxg"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  primary_network_interface {
    network_interface_id = "eni-010cd1c28c9f8e2b6"
  }

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "false"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.16.2.15"
  region     = "us-east-1"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "3000"
    throughput            = "125"
    volume_size           = "30"
    volume_type           = "gp3"
  }

  source_dest_check = "true"
  subnet_id         = "subnet-07ca5fd75d1383763"

  tags = {
    AmazonECSManaged = ""
    Name             = "ECS Instance - cluster-app"
  }

  tags_all = {
    AmazonECSManaged = ""
    Name             = "ECS Instance - cluster-app"
  }

  tenancy                = "default"
  user_data_base64       = "IyEvYmluL2Jhc2ggCmVjaG8gRUNTX0NMVVNURVI9Y2x1c3Rlci1hcHAgPj4gL2V0Yy9lY3MvZWNzLmNvbmZpZzs="
  vpc_security_group_ids = ["sg-049833aee5f42555a"]
}
