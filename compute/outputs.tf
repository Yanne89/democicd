output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "subnet_id" {
  description = "The ID of the public subnet"
  value       = aws_subnet.public.id
}

output "launch_template_id" {
  description = "The ID of the launch template"
  value       = aws_launch_template.web.id
}

output "autoscaling_group_name" {
  description = "The name of the Auto Scaling group"
  value       = aws_autoscaling_group.web_asg.name
}

output "autoscaling_group_arn" {
  description = "The ARN of the Auto Scaling group"
  value       = aws_autoscaling_group.web_asg.arn
}