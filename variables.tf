variable "ami_id" {description = "AMI ID"}
variable "instance_type" {description = "Instance Type"}
variable "instance_name" {description = "Instance Name"}
variable "user_data" {description = "User Data"}
variable "key_name" {description = "Key Pair Name"}
variable "volume_size" {description = "Volume Size in GB"}
variable "open_ports" {
  description = "List of open ports"
  type        = list(number)
}