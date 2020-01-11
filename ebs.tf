resource "aws_ebs_volume" "a-etcd-events-ops-work-net" {
  availability_zone = "eu-west-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                    = "ops-work.net"
    Name                                 = "a.etcd-events.ops-work.net"
    "k8s.io/etcd/events"                 = "a/a,b,c"
    "k8s.io/role/master"                 = "1"
    "kubernetes.io/cluster/ops-work.net" = "owned"
  }
}

resource "aws_ebs_volume" "a-etcd-main-ops-work-net" {
  availability_zone = "eu-west-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                    = "ops-work.net"
    Name                                 = "a.etcd-main.ops-work.net"
    "k8s.io/etcd/main"                   = "a/a,b,c"
    "k8s.io/role/master"                 = "1"
    "kubernetes.io/cluster/ops-work.net" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-events-ops-work-net" {
  availability_zone = "eu-west-1b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                    = "ops-work.net"
    Name                                 = "b.etcd-events.ops-work.net"
    "k8s.io/etcd/events"                 = "b/a,b,c"
    "k8s.io/role/master"                 = "1"
    "kubernetes.io/cluster/ops-work.net" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-main-ops-work-net" {
  availability_zone = "eu-west-1b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                    = "ops-work.net"
    Name                                 = "b.etcd-main.ops-work.net"
    "k8s.io/etcd/main"                   = "b/a,b,c"
    "k8s.io/role/master"                 = "1"
    "kubernetes.io/cluster/ops-work.net" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-events-ops-work-net" {
  availability_zone = "eu-west-1c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                    = "ops-work.net"
    Name                                 = "c.etcd-events.ops-work.net"
    "k8s.io/etcd/events"                 = "c/a,b,c"
    "k8s.io/role/master"                 = "1"
    "kubernetes.io/cluster/ops-work.net" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-main-ops-work-net" {
  availability_zone = "eu-west-1c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                    = "ops-work.net"
    Name                                 = "c.etcd-main.ops-work.net"
    "k8s.io/etcd/main"                   = "c/a,b,c"
    "k8s.io/role/master"                 = "1"
    "kubernetes.io/cluster/ops-work.net" = "owned"
  }
}