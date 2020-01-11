resource "aws_eip" "eu-west-1b-ops-work-net" {
  vpc = true

  tags = {
    KubernetesCluster                    = "ops-work.net"
    Name                                 = "eu-west-1b.ops-work.net"
    "kubernetes.io/cluster/ops-work.net" = "owned"
  }
}

resource "aws_eip" "eu-west-1c-ops-work-net" {
  vpc = true

  tags = {
    KubernetesCluster                    = "ops-work.net"
    Name                                 = "eu-west-1c.ops-work.net"
    "kubernetes.io/cluster/ops-work.net" = "owned"
  }
}

resource "aws_elb" "api-ops-work-net" {
  name = "api-ops-work-net-e43b2n"

  listener = {
    instance_port     = 443
    instance_protocol = "TCP"
    lb_port           = 443
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.api-elb-ops-work-net.id}"]
  subnets         = ["${aws_subnet.utility-eu-west-1a-ops-work-net.id}", "${aws_subnet.utility-eu-west-1b-ops-work-net.id}", "${aws_subnet.utility-eu-west-1c-ops-work-net.id}"]

  health_check = {
    target              = "SSL:443"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  cross_zone_load_balancing = false
  idle_timeout              = 300

  tags = {
    KubernetesCluster                    = "ops-work.net"
    Name                                 = "api.ops-work.net"
    "kubernetes.io/cluster/ops-work.net" = "owned"
  }
}

resource "aws_elb" "bastion-ops-work-net" {
  name = "bastion-ops-work-net-9flpap"

  listener = {
    instance_port     = 22
    instance_protocol = "TCP"
    lb_port           = 22
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.bastion-elb-ops-work-net.id}"]
  subnets         = ["${aws_subnet.utility-eu-west-1a-ops-work-net.id}", "${aws_subnet.utility-eu-west-1b-ops-work-net.id}", "${aws_subnet.utility-eu-west-1c-ops-work-net.id}"]

  health_check = {
    target              = "TCP:22"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster                    = "ops-work.net"
    Name                                 = "bastion.ops-work.net"
    "kubernetes.io/cluster/ops-work.net" = "owned"
  }
}