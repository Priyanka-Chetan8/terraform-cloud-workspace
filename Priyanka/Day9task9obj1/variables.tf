variable "allowed_ports" {
  description = "List of allowed ports for the security group"
  type        = list(number)
  default     = [22, 80, 443]
}
variable "vpc_id" {
  description = "The ID of the VPC where the security group will be created"
  type        = string
  default = "vpc-044309def0c09b51e"
}