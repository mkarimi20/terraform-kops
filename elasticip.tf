resource "aws_eip" "eu-west-1a-ops-work-net" {
  vpc = true

  tags = {
    KubernetesCluster                    = "ops-work.net"
    Name                                 = "eu-west-1a.ops-work.net"
    "kubernetes.io/cluster/ops-work.net" = "owned"
  }
}