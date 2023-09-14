variable "names_key" {
  type        = list(string)
  description = "List of names for EC2 Instances"
}

variable "ami_id" {
  type        = string
  description = "EC2 Instances AMI ID"
}

variable "isnt_type" {
  type        = string
  description = "EC2 Instances type"
}

variable "owns" {
  type        = string
  description = "Owner's ID for the Instance"
}

variable "prps" {
  type        = string
  description = "EC2 Instance purpose"
}

variable "new_policies" {
  type        = map(any)
  description = "Custom IAM policies for AWS"
}