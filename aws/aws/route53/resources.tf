resource "aws_route53_record" "tfer--Z07257352KPTV7AXCBI2E_nextgenz-002E-com-002E-br-002E-_A_" {
  alias {
    evaluate_target_health = "true"
    name                   = "alb-app-247472071.us-east-1.elb.amazonaws.com"
    zone_id                = "Z35SXDOTRQ7X7K"
  }

  multivalue_answer_routing_policy = "false"
  name                             = "nextgenz.com.br"
  type                             = "A"
  zone_id                          = "${aws_route53_zone.tfer--Z07257352KPTV7AXCBI2E_nextgenz-002E-com-002E-br.zone_id}"
}

resource "aws_route53_record" "tfer--Z07257352KPTV7AXCBI2E_nextgenz-002E-com-002E-br-002E-_NS_" {
  multivalue_answer_routing_policy = "false"
  name                             = "nextgenz.com.br"
  records                          = ["ns-1155.awsdns-16.org.", "ns-1625.awsdns-11.co.uk.", "ns-51.awsdns-06.com.", "ns-974.awsdns-57.net."]
  ttl                              = "172800"
  type                             = "NS"
  zone_id                          = "${aws_route53_zone.tfer--Z07257352KPTV7AXCBI2E_nextgenz-002E-com-002E-br.zone_id}"
}

resource "aws_route53_record" "tfer--Z07257352KPTV7AXCBI2E_nextgenz-002E-com-002E-br-002E-_SOA_" {
  multivalue_answer_routing_policy = "false"
  name                             = "nextgenz.com.br"
  records                          = ["ns-1155.awsdns-16.org. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
  ttl                              = "900"
  type                             = "SOA"
  zone_id                          = "${aws_route53_zone.tfer--Z07257352KPTV7AXCBI2E_nextgenz-002E-com-002E-br.zone_id}"
}

resource "aws_route53_record" "tfer--Z07257352KPTV7AXCBI2E_www-002E-nextgenz-002E-com-002E-br-002E-_A_" {
  alias {
    evaluate_target_health = "true"
    name                   = "alb-app-247472071.us-east-1.elb.amazonaws.com"
    zone_id                = "Z35SXDOTRQ7X7K"
  }

  multivalue_answer_routing_policy = "false"
  name                             = "www.nextgenz.com.br"
  type                             = "A"
  zone_id                          = "${aws_route53_zone.tfer--Z07257352KPTV7AXCBI2E_nextgenz-002E-com-002E-br.zone_id}"
}

resource "aws_route53_zone" "tfer--Z07257352KPTV7AXCBI2E_nextgenz-002E-com-002E-br" {
  comment       = "Managed by Terraform"
  force_destroy = "false"
  name          = "nextgenz.com.br"
}
