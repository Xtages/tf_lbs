locals {
  tags = {
    environment = var.env
    terraform = true
    app = var.app
    organization = "Xtages"
  }
}

resource "aws_lb" "lb" {
  name               = var.alb_name
  internal           = false
  load_balancer_type = "application"
  enable_http2       = true

  security_groups = [aws_security_group.ecs_lb_sg.id]
  subnets         = var.public_subnet_ids

  tags = local.tags
}
