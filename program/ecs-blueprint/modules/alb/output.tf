output "alb_dns_name" {
  value       = aws_alb.main.dns_name
  description = "Website ဝင်ကြည့်ဖို့အတွက် ALB ရဲ့ Public URL (DNS Name)"
}

output "target_group_arn" {
  value       = aws_lb_target_group.app_tg.arn
  description = "ECS Service ထဲမှာ ပြန်ချိတ်သုံးရန် Target Group ရဲ့ ARN"
}