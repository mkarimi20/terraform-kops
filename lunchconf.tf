resource "aws_launch_configuration" "bastions-ops-work-net" {
  name_prefix                 = "bastions.ops-work.net-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-ops-work-net-a0630ff8e5bbf9e3f63cf633ac1978d1.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.bastions-ops-work-net.id}"
  security_groups             = ["${aws_security_group.bastion-ops-work-net.id}"]
  associate_public_ip_address = true

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 32
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1a-masters-ops-work-net" {
  name_prefix                 = "master-eu-west-1a.masters.ops-work.net-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-ops-work-net-a0630ff8e5bbf9e3f63cf633ac1978d1.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-ops-work-net.id}"
  security_groups             = ["${aws_security_group.masters-ops-work-net.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1a.masters.ops-work.net_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1b-masters-ops-work-net" {
  name_prefix                 = "master-eu-west-1b.masters.ops-work.net-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-ops-work-net-a0630ff8e5bbf9e3f63cf633ac1978d1.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-ops-work-net.id}"
  security_groups             = ["${aws_security_group.masters-ops-work-net.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1b.masters.ops-work.net_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1c-masters-ops-work-net" {
  name_prefix                 = "master-eu-west-1c.masters.ops-work.net-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-ops-work-net-a0630ff8e5bbf9e3f63cf633ac1978d1.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-ops-work-net.id}"
  security_groups             = ["${aws_security_group.masters-ops-work-net.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1c.masters.ops-work.net_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "nodes-ops-work-net" {
  name_prefix                 = "nodes.ops-work.net-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-ops-work-net-a0630ff8e5bbf9e3f63cf633ac1978d1.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.nodes-ops-work-net.id}"
  security_groups             = ["${aws_security_group.nodes-ops-work-net.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_nodes.ops-work.net_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 128
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}