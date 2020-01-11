resource "aws_vpc" "ops-work-net" {
  cidr_block           = "${var.cidr_block}"                           #"172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    KubernetesCluster                    = "ops-work.net"
    Name                                 = "ops-work.net"
    "kubernetes.io/cluster/ops-work.net" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "ops-work-net" {
  domain_name         = "eu-west-1.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    KubernetesCluster                    = "ops-work.net"
    Name                                 = "ops-work.net"
    "kubernetes.io/cluster/ops-work.net" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "ops-work-net" {
  vpc_id          = "${aws_vpc.ops-work-net.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.ops-work-net.id}"
}