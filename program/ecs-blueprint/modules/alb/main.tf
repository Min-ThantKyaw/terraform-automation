resource "aws_security_group" "alb_sg" {
    name = "${var.project_name}-${var.environment}-alb-sg"
    vpc_id = var.vpc_id
    description = "Security group for the ALB"

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "${var.project_name}-${var.environment}-alb-sg"
    }
}

resource "aws_alb" "main" {
    name = "${var.project_name}-${var.environment}-alb"
    internal = false
    load_balancer_type = "application"
    security_groups = [aws_security_group.alb_sg.id]
    subnets = var.public_subnet_ids

    tags = {
        Name = "${var.project_name}-${var.environment}-alb"
    }
}

resource "aws_lb_target_group" "app_tg" {
    name = "${var.project_name}-${var.environment}-tg"
    port = 80
    protocol = "HTTP"
    vpc_id = var.vpc_id
    target_type = "ip"

    health_check {
        path = "/"
        healthy_threshold = 3
        unhealthy_threshold = 3
        timeout = 10
        interval = 30
        matcher = "200"
    }
}

resource "aws_lb_listener" "http" {
    load_balancer_arn = aws_alb.main.arn
    port = 80
    protocol = "HTTP"

    default_action {
        type = "forward"
        target_group_arn = aws_lb_target_group.app_tg.arn
    }
}

