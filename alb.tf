resource "aws_lb_target_group" "tg1" {
  name     = "example-tg1"
  port     = 8080
  protocol = "HTTP"
  vpc_id   = "vpc-bf3f5cd4"
  target_type = "instance"

  health_check {
    interval            = 30
    path                = "/course-svc/getAllDevopsTools"
    port                = 8080
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    protocol            = "HTTP"
    matcher             = "200,202"
  }
}

resource "aws_lb" "alb-example" {
  name               = "alb-example"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.websg.id]
  subnets = ["subnet-dcf873b7","subnet-92e425ef"]
  
  tags = {
    Environment = "alb-example"
  }
}

resource "aws_lb_listener" "listener-tg1" {
  load_balancer_arn = aws_lb.alb-example.arn
  port              = "80"
  protocol          = "HTTP"
  
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg1.arn
  }
}
