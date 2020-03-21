variable server_port {
  default = 8080
}

variable "cluster_name" {
  description = "The name to use for all the cluster resources"
  type        = string
}

variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket for the database's remote state"
  type        = string
}

variable "db_remote_state_key" {
  description = "The path for the database's remote state in S3"
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 Instances to run (e.g. t2.micro)"
  type        = string
}

variable "min_size" {
  description = "The minimum number of EC2 Instances in the ASG"
  type        = number
}

variable "max_size" {
  description = "The maximum number of EC2 Instances in the ASG"
  type        = number
}
variable "custom_tags" {
  type    = map(string)
  default = {}
}

variable "enable_autoscaling" {
  description = "if set to true,enable auto scaling"
  type        = bool
}

variable "ami" {
  description = "The AMI to run in the cluster"
  default     = "ami-07ebfd5b3428b6f4d"
  type        = string
}

variable "server_text" {
  description = "The text the web server should return"
  default     = "Hello, World , its new version"
  type        = string
}