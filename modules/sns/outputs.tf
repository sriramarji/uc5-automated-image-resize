output "sns_topic_name" {
  value       = aws_sns_topic.topic.name
  description = "The name of the SNS topic"
}

output "topic_arn" {
  value = aws_sns_topic.topic.arn
}