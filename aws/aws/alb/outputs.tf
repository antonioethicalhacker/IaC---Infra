output "aws_lb_listener_tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-107676355544-003A-listener-002F-app-002F-alb-app-002F-9df72297718a3bdf-002F-5e6d2692fa3406ca_id" {
  value = "${aws_lb_listener.tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-107676355544-003A-listener-002F-app-002F-alb-app-002F-9df72297718a3bdf-002F-5e6d2692fa3406ca.id}"
}

output "aws_lb_target_group_attachment_tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-107676355544-003A-targetgroup-002F-tg-app-002F-89dcda42f10dcea8-172-002E-16-002E-2-002E-153_id" {
  value = "${aws_lb_target_group_attachment.tfer--arn-003A-aws-003A-elasticloadbalancing-003A-us-east-1-003A-107676355544-003A-targetgroup-002F-tg-app-002F-89dcda42f10dcea8-172-002E-16-002E-2-002E-153.id}"
}

output "aws_lb_target_group_tfer--tg-app_id" {
  value = "${aws_lb_target_group.tfer--tg-app.id}"
}

output "aws_lb_tfer--alb-app_id" {
  value = "${aws_lb.tfer--alb-app.id}"
}
