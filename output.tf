output "alb_arn" {
  value = aws_lb.lb.arn
}

output "sg_id" {
  value = aws_security_group.ecs_sg.id
}
