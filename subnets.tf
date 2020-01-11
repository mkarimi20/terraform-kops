resource "aws_subnet" "eu-west-1a-ops-work-net" {
  vpc_id            = "${aws_vpc.ops-work-net.id}"
  cidr_block        = "172.20.32.0/19"
  availability_zone = "eu-west-1a"

  tags = {
    KubernetesCluster                    = "ops-work.net"
    Name                                 = "eu-west-1a.ops-work.net"
    SubnetType                           = "Private"
    "kubernetes.io/cluster/ops-work.net" = "owned"
    "kubernetes.io/role/internal-elb"    = "1"
  }
}

resource "aws_subnet" "eu-west-1b-ops-work-net" {
  vpc_id            = "${aws_vpc.ops-work-net.id}"
  cidr_block        = "172.20.64.0/19"
  availability_zone = "eu-west-1b"

  tags = {
    KubernetesCluster                    = "ops-work.net"
    Name                                 = "eu-west-1b.ops-work.net"
    SubnetType                           = "Private"
    "kubernetes.io/cluster/ops-work.net" = "owned"
    "kubernetes.io/role/internal-elb"    = "1"
  }
}

resource "aws_subnet" "eu-west-1c-ops-work-net" {
  vpc_id            = "${aws_vpc.ops-work-net.id}"
  cidr_block        = "172.20.96.0/19"
  availability_zone = "eu-west-1c"

  tags = {
    KubernetesCluster                    = "ops-work.net"
    Name                                 = "eu-west-1c.ops-work.net"
    SubnetType                           = "Private"
    "kubernetes.io/cluster/ops-work.net" = "owned"
    "kubernetes.io/role/internal-elb"    = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1a-ops-work-net" {
  vpc_id            = "${aws_vpc.ops-work-net.id}"
  cidr_block        = "172.20.0.0/22"
  availability_zone = "eu-west-1a"

  tags = {
    KubernetesCluster                    = "ops-work.net"
    Name                                 = "utility-eu-west-1a.ops-work.net"
    SubnetType                           = "Utility"
    "kubernetes.io/cluster/ops-work.net" = "owned"
    "kubernetes.io/role/elb"             = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1b-ops-work-net" {
  vpc_id            = "${aws_vpc.ops-work-net.id}"
  cidr_block        = "172.20.4.0/22"
  availability_zone = "eu-west-1b"

  tags = {
    KubernetesCluster                    = "ops-work.net"
    Name                                 = "utility-eu-west-1b.ops-work.net"
    SubnetType                           = "Utility"
    "kubernetes.io/cluster/ops-work.net" = "owned"
    "kubernetes.io/role/elb"             = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1c-ops-work-net" {
  vpc_id            = "${aws_vpc.ops-work-net.id}"
  cidr_block        = "172.20.8.0/22"
  availability_zone = "eu-west-1c"

  tags = {
    KubernetesCluster                    = "ops-work.net"
    Name                                 = "utility-eu-west-1c.ops-work.net"
    SubnetType                           = "Utility"
    "kubernetes.io/cluster/ops-work.net" = "owned"
    "kubernetes.io/role/elb"             = "1"
  }
}