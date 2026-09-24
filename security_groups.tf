resource "aws_security_group" "web_sg" {
  name        = "${var.environment}-web-sg"
  description = "Control traffic rules for web access servers"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "Allow secure web standard traffic over port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound data streams out to world"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "${var.environment}-web-sg"
    Environment = var.environment
  }
}
