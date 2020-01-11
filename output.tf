output "bastion_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.bastions-ops-work-net.id}"]
}

output "bastion_security_group_ids" {
  value = ["${aws_security_group.bastion-ops-work-net.id}"]
}

output "bastions_role_arn" {
  value = "${aws_iam_role.bastions-ops-work-net.arn}"
}

output "bastions_role_name" {
  value = "${aws_iam_role.bastions-ops-work-net.name}"
}

output "cluster_name" {
  value = "ops-work.net"
}

output "master_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.master-eu-west-1a-masters-ops-work-net.id}", "${aws_autoscaling_group.master-eu-west-1b-masters-ops-work-net.id}", "${aws_autoscaling_group.master-eu-west-1c-masters-ops-work-net.id}"]
}

output "master_security_group_ids" {
  value = ["${aws_security_group.masters-ops-work-net.id}"]
}

output "masters_role_arn" {
  value = "${aws_iam_role.masters-ops-work-net.arn}"
}

output "masters_role_name" {
  value = "${aws_iam_role.masters-ops-work-net.name}"
}

output "node_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.nodes-ops-work-net.id}"]
}

output "node_security_group_ids" {
  value = ["${aws_security_group.nodes-ops-work-net.id}"]
}

output "node_subnet_ids" {
  value = ["${aws_subnet.eu-west-1a-ops-work-net.id}", "${aws_subnet.eu-west-1b-ops-work-net.id}", "${aws_subnet.eu-west-1c-ops-work-net.id}"]
}

output "nodes_role_arn" {
  value = "${aws_iam_role.nodes-ops-work-net.arn}"
}

output "nodes_role_name" {
  value = "${aws_iam_role.nodes-ops-work-net.name}"
}

output "region" {
  value = "eu-west-1"
}

output "route_table_private-eu-west-1a_id" {
  value = "${aws_route_table.private-eu-west-1a-ops-work-net.id}"
}

output "route_table_private-eu-west-1b_id" {
  value = "${aws_route_table.private-eu-west-1b-ops-work-net.id}"
}

output "route_table_private-eu-west-1c_id" {
  value = "${aws_route_table.private-eu-west-1c-ops-work-net.id}"
}

output "route_table_public_id" {
  value = "${aws_route_table.ops-work-net.id}"
}

output "subnet_eu-west-1a_id" {
  value = "${aws_subnet.eu-west-1a-ops-work-net.id}"
}

output "subnet_eu-west-1b_id" {
  value = "${aws_subnet.eu-west-1b-ops-work-net.id}"
}

output "subnet_eu-west-1c_id" {
  value = "${aws_subnet.eu-west-1c-ops-work-net.id}"
}

output "subnet_utility-eu-west-1a_id" {
  value = "${aws_subnet.utility-eu-west-1a-ops-work-net.id}"
}

output "subnet_utility-eu-west-1b_id" {
  value = "${aws_subnet.utility-eu-west-1b-ops-work-net.id}"
}

output "subnet_utility-eu-west-1c_id" {
  value = "${aws_subnet.utility-eu-west-1c-ops-work-net.id}"
}

output "vpc_cidr_block" {
  value = "${aws_vpc.ops-work-net.cidr_block}"
}

output "vpc_id" {
  value = "${aws_vpc.ops-work-net.id}"
}