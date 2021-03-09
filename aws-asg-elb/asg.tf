resource "aws_autoscaling_group" "bar" {
  name                 = "terraform-asg-example"
  launch_configuration = aws_launch_configuration.as_conf.name
  availability_zones = [
    "us-east-1a",
    "us-east-1b",
    "us-east-1c"

  ]
  max_size = 2
  min_size = 1
  lifecycle {
    create_before_destroy = true
  }

}