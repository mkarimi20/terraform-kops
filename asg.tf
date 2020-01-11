resource "aws_autoscaling_attachment" "bastions-ops-work-net" {
  elb                    = "${aws_elb.bastion-ops-work-net.id}"
  autoscaling_group_name = "${aws_autoscaling_group.bastions-ops-work-net.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1a-masters-ops-work-net" {
  elb                    = "${aws_elb.api-ops-work-net.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1a-masters-ops-work-net.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1b-masters-ops-work-net" {
  elb                    = "${aws_elb.api-ops-work-net.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1b-masters-ops-work-net.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1c-masters-ops-work-net" {
  elb                    = "${aws_elb.api-ops-work-net.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1c-masters-ops-work-net.id}"
}

resource "aws_autoscaling_group" "bastions-ops-work-net" {
  name                 = "bastions.ops-work.net"
  launch_configuration = "${aws_launch_configuration.bastions-ops-work-net.id}"
  max_size             = "${var.bastion_max-size}"
  min_size             = "${var.bastion_min-size}"
  vpc_zone_identifier  = ["${aws_subnet.utility-eu-west-1a-ops-work-net.id}", "${aws_subnet.utility-eu-west-1b-ops-work-net.id}", "${aws_subnet.utility-eu-west-1c-ops-work-net.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "ops-work.net"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "bastions.ops-work.net"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "bastions"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/bastion"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "bastions"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1a-masters-ops-work-net" {
  name                 = "master-eu-west-1a.masters.ops-work.net"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1a-masters-ops-work-net.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1a-ops-work-net.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "ops-work.net"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1a.masters.ops-work.net"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1a"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-eu-west-1a"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1b-masters-ops-work-net" {
  name                 = "master-eu-west-1b.masters.ops-work.net"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1b-masters-ops-work-net.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1b-ops-work-net.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "ops-work.net"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1b.masters.ops-work.net"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1b"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-eu-west-1b"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1c-masters-ops-work-net" {
  name                 = "master-eu-west-1c.masters.ops-work.net"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1c-masters-ops-work-net.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1c-ops-work-net.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "ops-work.net"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1c.masters.ops-work.net"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1c"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-eu-west-1c"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "nodes-ops-work-net" {
  name                 = "nodes.ops-work.net"
  launch_configuration = "${aws_launch_configuration.nodes-ops-work-net.id}"
  max_size             = "${var.max_size}"
  min_size             = "${var.min_size}"
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1a-ops-work-net.id}", "${aws_subnet.eu-west-1b-ops-work-net.id}", "${aws_subnet.eu-west-1c-ops-work-net.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "ops-work.net"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "nodes.ops-work.net"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/node"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}