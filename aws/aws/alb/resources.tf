resource "aws_lb" "tfer--alb-app" {
  client_keep_alive = "3600"


  desync_mitigation_mode                      = "defensive"
  drop_invalid_header_fields                  = "false"
  enable_cross_zone_load_balancing            = "true"
  enable_deletion_protection                  = "false"
  enable_http2                                = "true"
  enable_tls_version_and_cipher_suite_headers = "false"
  enable_waf_fail_open                        = "false"
  enable_xff_client_port                      = "false"
  enable_zonal_shift                          = "false"
  idle_timeout                                = "60"
  internal                                    = "false"
  ip_address_type                             = "ipv4"
  load_balancer_type                          = "application"
  name                                        = "alb-app"
  preserve_host_header                        = "false"
  region                                      = "us-east-1"
  security_groups                             = ["sg-0e4095eaf23fad5e2"]



  subnets                    = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-01ebef0e62c4e7ac3_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-084c6c9c26ca6f17e_id}"]
  xff_header_processing_mode = "append"
}

resource "aws_lb_listener" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-107676355544-003A-listener-002F-app-002F-alb-app-002F-9df72297718a3bdf-002F-5e6d2692fa3406ca" {
  default_action {
    forward {
      stickiness {
        duration = "3600"
        enabled  = "false"
      }

      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-1:107676355544:targetgroup/tg-app/89dcda42f10dcea8"
        weight = "1"
      }
    }

    order            = "1"
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:107676355544:targetgroup/tg-app/89dcda42f10dcea8"
    type             = "forward"
  }

  load_balancer_arn                    = "${data.terraform_remote_state.alb.outputs.aws_lb_tfer--alb-app_id}"
  port                                 = "5000"
  protocol                             = "HTTP"
  region                               = "us-east-1"
  routing_http_response_server_enabled = "true"
}

resource "aws_lb_target_group" "tfer--tg-app" {
  deregistration_delay = "300"

  health_check {
    enabled             = "true"
    healthy_threshold   = "2"
    interval            = "10"
    matcher             = "200"
    path                = "/"
    port                = "5000"
    protocol            = "HTTP"
    timeout             = "5"
    unhealthy_threshold = "2"
  }

  ip_address_type                   = "ipv4"
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_anomaly_mitigation = "off"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "tg-app"
  port                              = "5000"
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  region                            = "us-east-1"
  slow_start                        = "0"

  stickiness {
    cookie_duration = "86400"
    enabled         = "false"
    type            = "lb_cookie"
  }

  target_group_health {
    dns_failover {
      minimum_healthy_targets_count      = "1"
      minimum_healthy_targets_percentage = "off"
    }

    unhealthy_state_routing {
      minimum_healthy_targets_count      = "1"
      minimum_healthy_targets_percentage = "off"
    }
  }

  target_type = "ip"
  vpc_id      = "vpc-0d58a4d64c3603d0f"
}

resource "aws_lb_target_group_attachment" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-107676355544-003A-targetgroup-002F-tg-app-002F-89dcda42f10dcea8-172-002E-16-002E-2-002E-153" {
  region           = "us-east-1"
  target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:107676355544:targetgroup/tg-app/89dcda42f10dcea8"
  target_id        = "172.16.2.153"
}
