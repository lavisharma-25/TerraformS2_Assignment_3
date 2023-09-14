resource "aws_instance" "ec2_inst" {
  count         = length(var.names_key)
  ami           = var.ami_id
  instance_type = var.isnt_type

  tags = {
    Name    = var.names_key[count.index]
    Owner   = var.owns
    Purpose = var.prps
  }
  volume_tags = {
    Name    = var.names_key[count.index]
    Owner   = var.owns
    Purpose = var.prps
  }
}

resource "aws_iam_policy" "iam_policy" {
  for_each = var.new_policies
  name     = each.key
  policy = jsonencode({
    Version   = each.value.Version
    Statement = each.value.Statement
  })
}
