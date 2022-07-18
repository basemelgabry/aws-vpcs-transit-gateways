
################# AWS credentials  #######################

variable "access_key_var" {
    description = "AWS access key"
    type        = string                          
  #  default     = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
    default     = ""
}

variable "secret_key_var" {
  description = "AWS secret_key "
  type        = string
  # default     = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
  default     = ""

}