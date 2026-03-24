output "prefix_list_id" {
  description = "ID of the managed prefix list"
  value       = aws_ec2_managed_prefix_list.this.id
}

output "prefix_list_arn" {
  description = "ARN of the managed prefix list"
  value       = aws_ec2_managed_prefix_list.this.arn
}

output "prefix_list_name" {
  description = "Name of the managed prefix list"
  value       = aws_ec2_managed_prefix_list.this.name
}
