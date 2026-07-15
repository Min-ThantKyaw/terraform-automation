#ALB Security Group

resource "aws_security_group" "alb" {
  name = "${var.project_name}-${var.environment}-alb-sg"
  vpc_id = var.vpc_id
  description = "ALB Security Group"

  ingress {
    description = "Http access"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = ""
  }
}

