variable "domain_name" {
  description = "Hospital website domain (e.g., citygeneralhospital.com)"
  type        = string
  default     = "citygeneralhospital.com"
}

variable "environment" {
  description = "Deployment environment (dev/stage/prod)"
  type        = string
  default     = "dev"
}

variable "enable_https" {
  description = "Enable HTTPS via ACM certificate"
  type        = bool
  default     = false  # ← Set to false for CloudFront default certificate
}

variable "enable_waf" {
  description = "Enable AWS WAF protection"
  type        = bool
  default     = false
}

variable "hospital_name" {
  description = "Name of the hospital"
  type        = string
  default     = "City General Hospital"
}
