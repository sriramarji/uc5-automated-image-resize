output "lambda_arn" {
  value       = aws_lambda_function.image_resizer.arn
  description = "Lambda function ARN"
}

output "function_name" {
  value       = aws_lambda_function.image_resizer.function_name
}

/*output "role_arn" {
  value       = aws_iam_role.lambda_exec.arn
}*/