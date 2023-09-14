output "printInstancesID" {
  description = "ID of Instances"
  value = {
    for inst in aws_instance.ec2_inst :
    inst.tags.Name => inst.id
  }
}

output "printPoliciesID" {
  description = "ID of Policies"
  value = {
    for policy in aws_iam_policy.iam_policy :
    policy.name => policy.id
  }
}