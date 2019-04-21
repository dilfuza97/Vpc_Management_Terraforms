module "db-asg" {
  source = "terraform-aws-modules/autoscaling/aws"

  name = "${var.DBname}"

  # Launch configuration
  lc_name = "example-lc-db"
  image_id        = "${var.db_ami}"
  instance_type   = "${var.db_instance_type}"
  security_groups = ["${aws_security_group.allow_ssh.id}"]

  # Auto scaling group
  asg_name                  = "example-asg"
  vpc_zone_identifier       = ["${aws_subnet.dev2.id}"]
  health_check_type         = "EC2"
  min_size                  = "${var.db.min_size}"
  max_size                  = "${var.db.max_size}"
  desired_capacity          = "${var.db.desired_capacity}"
  wait_for_capacity_timeout =  0
  associate_public_ip_address	= "true"
}

