region            = "us-east-1"
vpc_name          = "ASGbanyi-vpc"
vpc_cidr          = "10.0.0.0/16"
subnet_cidr       = "10.0.1.0/24"
subnet_cidr_2       = "10.0.2.0/24"
availability_zone_2 = "us-east-1b"
availability_zone = "us-east-1a"

ami_id        = "ami-00a929b66ed6e0de6" # Replace with your AMI ID
instance_type = "t2.micro"

sg_name        = "web-sg"
sg_description = "Allow HTTP and SSH traffic"
sg_ingress_rules = [
  {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
]
sg_egress_rules = [
  {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
]

tg_name                             = "web-target-group"
tg_port                             = 80
tg_protocol                         = "HTTP"
tg_target_type                      = "instance"
tg_health_check_path                = "/"
tg_health_check_interval            = 30
tg_health_check_timeout             = 5
tg_health_check_healthy_threshold   = 2
tg_health_check_unhealthy_threshold = 2
tg_health_check_protocol            = "HTTP"

desired_capacity = 2
max_size         = 3
min_size         = 1
webapp_name      = "WebAppInstance"
