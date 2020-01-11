resource "aws_nat_gateway" "eu-west-1a-ops-work-net" {
  allocation_id = "${aws_eip.eu-west-1a-ops-work-net.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1a-ops-work-net.id}"

  tags = {
    KubernetesCluster                    = "ops-work.net"
    Name                                 = "eu-west-1a.ops-work.net"
    "kubernetes.io/cluster/ops-work.net" = "owned"
  }
}

resource "aws_nat_gateway" "eu-west-1b-ops-work-net" {
  allocation_id = "${aws_eip.eu-west-1b-ops-work-net.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1b-ops-work-net.id}"

  tags = {
    KubernetesCluster                    = "ops-work.net"
    Name                                 = "eu-west-1b.ops-work.net"
    "kubernetes.io/cluster/ops-work.net" = "owned"
  }
}

resource "aws_nat_gateway" "eu-west-1c-ops-work-net" {
  allocation_id = "${aws_eip.eu-west-1c-ops-work-net.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1c-ops-work-net.id}"

  tags = {
    KubernetesCluster                    = "ops-work.net"
    Name                                 = "eu-west-1c.ops-work.net"
    "kubernetes.io/cluster/ops-work.net" = "owned"
  }
}