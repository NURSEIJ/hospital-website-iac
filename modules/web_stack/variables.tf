variable "domain_name" {
  description = "Hospital domain name"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "enable_https" {
  description = "Enable HTTPS"
  type        = bool
  default     = true
}

variable "enable_waf" {
  description = "Enable WAF protection"
  type        = bool
  default     = false
}

variable "hospital_name" {
  description = "Name of the hospital"
  type        = string
}