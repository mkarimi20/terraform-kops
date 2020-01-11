resource "aws_iam_instance_profile" "bastions-ops-work-net" {
  name = "bastions.ops-work.net"
  role = "${aws_iam_role.bastions-ops-work-net.name}"
}

resource "aws_iam_instance_profile" "masters-ops-work-net" {
  name = "masters.ops-work.net"
  role = "${aws_iam_role.masters-ops-work-net.name}"
}

resource "aws_iam_instance_profile" "nodes-ops-work-net" {
  name = "nodes.ops-work.net"
  role = "${aws_iam_role.nodes-ops-work-net.name}"
}

resource "aws_iam_role" "bastions-ops-work-net" {
  name               = "bastions.ops-work.net"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_bastions.ops-work.net_policy")}"
}

resource "aws_iam_role" "masters-ops-work-net" {
  name               = "masters.ops-work.net"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.ops-work.net_policy")}"
}

resource "aws_iam_role" "nodes-ops-work-net" {
  name               = "nodes.ops-work.net"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.ops-work.net_policy")}"
}

resource "aws_iam_role_policy" "bastions-ops-work-net" {
  name   = "bastions.ops-work.net"
  role   = "${aws_iam_role.bastions-ops-work-net.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_bastions.ops-work.net_policy")}"
}

resource "aws_iam_role_policy" "masters-ops-work-net" {
  name   = "masters.ops-work.net"
  role   = "${aws_iam_role.masters-ops-work-net.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.ops-work.net_policy")}"
}

resource "aws_iam_role_policy" "nodes-ops-work-net" {
  name   = "nodes.ops-work.net"
  role   = "${aws_iam_role.nodes-ops-work-net.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.ops-work.net_policy")}"
}