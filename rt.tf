resource "aws_route" "0-0-0-0--0" {
  route_table_id         = "${aws_route_table.ops-work-net.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.ops-work-net.id}"
}

resource "aws_route" "private-eu-west-1a-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1a-ops-work-net.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1a-ops-work-net.id}"
}

resource "aws_route" "private-eu-west-1b-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1b-ops-work-net.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1b-ops-work-net.id}"
}

resource "aws_route" "private-eu-west-1c-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1c-ops-work-net.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1c-ops-work-net.id}"
}

resource "aws_route53_record" "api-ops-work-net" {
  name = "api.ops-work.net"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-ops-work-net.dns_name}"
    zone_id                = "${aws_elb.api-ops-work-net.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/ZU8YL4QP2WY4L"
}

resource "aws_route53_record" "bastion-ops-work-net" {
  name = "bastion.ops-work.net"
  type = "A"

  alias = {
    name                   = "${aws_elb.bastion-ops-work-net.dns_name}"
    zone_id                = "${aws_elb.bastion-ops-work-net.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/ZU8YL4QP2WY4L"
}

resource "aws_route_table" "ops-work-net" {
  vpc_id = "${aws_vpc.ops-work-net.id}"

  tags = {
    KubernetesCluster                    = "ops-work.net"
    Name                                 = "ops-work.net"
    "kubernetes.io/cluster/ops-work.net" = "owned"
    "kubernetes.io/kops/role"            = "public"
  }
}

resource "aws_route_table" "private-eu-west-1a-ops-work-net" {
  vpc_id = "${aws_vpc.ops-work-net.id}"

  tags = {
    KubernetesCluster                    = "ops-work.net"
    Name                                 = "private-eu-west-1a.ops-work.net"
    "kubernetes.io/cluster/ops-work.net" = "owned"
    "kubernetes.io/kops/role"            = "private-eu-west-1a"
  }
}

resource "aws_route_table" "private-eu-west-1b-ops-work-net" {
  vpc_id = "${aws_vpc.ops-work-net.id}"

  tags = {
    KubernetesCluster                    = "ops-work.net"
    Name                                 = "private-eu-west-1b.ops-work.net"
    "kubernetes.io/cluster/ops-work.net" = "owned"
    "kubernetes.io/kops/role"            = "private-eu-west-1b"
  }
}

resource "aws_route_table" "private-eu-west-1c-ops-work-net" {
  vpc_id = "${aws_vpc.ops-work-net.id}"

  tags = {
    KubernetesCluster                    = "ops-work.net"
    Name                                 = "private-eu-west-1c.ops-work.net"
    "kubernetes.io/cluster/ops-work.net" = "owned"
    "kubernetes.io/kops/role"            = "private-eu-west-1c"
  }
}

resource "aws_route_table_association" "private-eu-west-1a-ops-work-net" {
  subnet_id      = "${aws_subnet.eu-west-1a-ops-work-net.id}"
  route_table_id = "${aws_route_table.private-eu-west-1a-ops-work-net.id}"
}

resource "aws_route_table_association" "private-eu-west-1b-ops-work-net" {
  subnet_id      = "${aws_subnet.eu-west-1b-ops-work-net.id}"
  route_table_id = "${aws_route_table.private-eu-west-1b-ops-work-net.id}"
}

resource "aws_route_table_association" "private-eu-west-1c-ops-work-net" {
  subnet_id      = "${aws_subnet.eu-west-1c-ops-work-net.id}"
  route_table_id = "${aws_route_table.private-eu-west-1c-ops-work-net.id}"
}

resource "aws_route_table_association" "utility-eu-west-1a-ops-work-net" {
  subnet_id      = "${aws_subnet.utility-eu-west-1a-ops-work-net.id}"
  route_table_id = "${aws_route_table.ops-work-net.id}"
}

resource "aws_route_table_association" "utility-eu-west-1b-ops-work-net" {
  subnet_id      = "${aws_subnet.utility-eu-west-1b-ops-work-net.id}"
  route_table_id = "${aws_route_table.ops-work-net.id}"
}

resource "aws_route_table_association" "utility-eu-west-1c-ops-work-net" {
  subnet_id      = "${aws_subnet.utility-eu-west-1c-ops-work-net.id}"
  route_table_id = "${aws_route_table.ops-work-net.id}"
}