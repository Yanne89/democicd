variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "The CIDR block for the first public subnet"
  type        = string
}

variable "subnet_cidr_2" {
  description = "The CIDR block for the second public subnet"
  type        = string
}

variable "availability_zone" {
  description = "The availability zone for the first public subnet"
  type        = string
}

variable "availability_zone_2" {
  description = "The availability zone for the second public subnet"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "The instance type for the EC2 instances"
  type        = string
}

variable "lt_name_prefix" {
  description = "The name prefix for the launch template"
  type        = string
}

variable "instance_name" {
  description = "The name tag for the EC2 instances"
  type        = string
}

variable "user_data_script" {
  description = "The user data script for the EC2 instances"
  type        = string
}

variable "desired_capacity" {
  description = "The desired capacity of the Auto Scaling group"
  type        = number
}

variable "max_size" {
  description = "The maximum size of the Auto Scaling group"
  type        = number
}

variable "min_size" {
  description = "The minimum size of the Auto Scaling group"
  type        = number
}

variable "webapp_name" {
  description = "The name tag for the web application instances"
  type        = string
}

variable "environment" {
  description = "The environment tag for the resources"
  type        = string
}

variable "lb_name" {
  description = "The name of the load balancer"
  type        = string
}

variable "lb_internal" {
  description = "Whether the load balancer is internal"
  type        = bool
}

variable "lb_type" {
  description = "The type of the load balancer"
  type        = string
}

variable "listener_port" {
  description = "The port for the load balancer listener"
  type        = number
}

variable "listener_protocol" {
  description = "The protocol for the load balancer listener"
  type        = string
}

variable "tg_name" {
  description = "The name of the target group"
  type        = string
}

variable "tg_port" {
  description = "The port for the target group"
  type        = number
}

variable "tg_protocol" {
  description = "The protocol for the target group"
  type        = string
}

variable "tg_target_type" {
  description = "The target type for the target group"
  type        = string
}

variable "tg_health_check_path" {
  description = "The health check path for the target group"
  type        = string
}

variable "tg_health_check_interval" {
  description = "The health check interval for the target group"
  type        = number
}

variable "tg_health_check_timeout" {
  description = "The health check timeout for the target group"
  type        = number
}

variable "tg_health_check_healthy_threshold" {
  description = "The healthy threshold for the target group"
  type        = number
}

variable "tg_health_check_unhealthy_threshold" {
  description = "The unhealthy threshold for the target group"
  type        = number
}

variable "tg_health_check_protocol" {
  description = "The health check protocol for the target group"
  type        = string
}

variable "sg_name" {
  description = "The name of the security group for the EC2 instances"
  type        = string
}

variable "sg_description" {
  description = "The description of the security group for the EC2 instances"
  type        = string
}

variable "lb_sg_name" {
  description = "The name of the security group for the Load Balancer"
  type        = string
}

variable "lb_sg_description" {
  description = "The description of the security group for the Load Balancer"
  type        = string
}

variable "sg_ingress_rules" {
  description = "Ingress rules for the EC2 instance security group"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "sg_egress_rules" {
  description = "Egress rules for the EC2 instance security group"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "route_cidr_block" {
  description = "The CIDR block for the route table"
  type        = string
}

variable "route_table_name" {
  description = "The name of the route table"
  type        = string
}

variable "aws_internet_gateway" {
  description = "Name of the AWS Internet Gateway"
  type        = string
}

variable "subnet_name" {
  description = "The name of the public subnet"
  type        = string
}

variable "subnet_name_2" {
  description = "The name of the second public subnet"
  type        = string
}