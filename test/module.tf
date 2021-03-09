module "wordpress" {
  source           = "../aws-asg-elb"
  aws_region       = "us-east-1"
  desired_capacity = 1
  max_size         = 1
  min_size         = 1
}
