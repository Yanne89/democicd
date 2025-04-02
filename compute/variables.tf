variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "autoscaling-vpc"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "The instance type for the EC2 instances"
  type        = string
  default     = "t2.micro"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "The availability zone for the public subnet"
  type        = string
  default     = "us-east-1a"
}

variable "desired_capacity" {
  description = "The desired capacity of the Auto Scaling group"
  type        = number
  default     = 2
}

variable "max_size" {
  description = "The maximum size of the Auto Scaling group"
  type        = number
  default     = 3
}

variable "min_size" {
  description = "The minimum size of the Auto Scaling group"
  type        = number
  default     = 1
}

variable "webapp_name" {
  description = "The name tag for the web application instances"
  type        = string
  default     = "WebAppInstance"
}

variable "sg_name" {
  description = "Name of the security group"
  type        = string
  default     = "web-sg"
}

variable "sg_description" {
  description = "Description of the security group"
  type        = string
  default     = "Allow HTTP and SSH traffic"
}

variable "sg_ingress_rules" {
  description = "Ingress rules for the security group"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = [
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
}

variable "sg_egress_rules" {
  description = "Egress rules for the security group"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

variable "tg_name" {
  description = "Name of the target group"
  type        = string
  default     = "web-target-group"
}

variable "tg_port" {
  description = "Port for the target group"
  type        = number
  default     = 80
}

variable "tg_protocol" {
  description = "Protocol for the target group"
  type        = string
  default     = "HTTP"
}

variable "tg_target_type" {
  description = "Target type for the target group (e.g., instance, ip, lambda)"
  type        = string
  default     = "instance"
}

variable "tg_health_check_path" {
  description = "Health check path for the target group"
  type        = string
  default     = "/"
}

variable "tg_health_check_interval" {
  description = "Health check interval for the target group"
  type        = number
  default     = 30
}

variable "tg_health_check_timeout" {
  description = "Health check timeout for the target group"
  type        = number
  default     = 5
}

variable "tg_health_check_healthy_threshold" {
  description = "Healthy threshold for the target group"
  type        = number
  default     = 2
}

variable "tg_health_check_unhealthy_threshold" {
  description = "Unhealthy threshold for the target group"
  type        = number
  default     = 2
}

variable "tg_health_check_protocol" {
  description = "Health check protocol for the target group"
  type        = string
  default     = "HTTP"
}