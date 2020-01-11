resource "aws_internet_gateway" "ops-work-net" {
  vpc_id = "${aws_vpc.ops-work-net.id}"

  tags = {
    KubernetesCluster                    = "ops-work.net"
    Name                                 = "ops-work.net"
    "kubernetes.io/cluster/ops-work.net" = "owned"
  }
}