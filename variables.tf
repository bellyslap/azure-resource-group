variable "environment" {
  description = "(Required) Specifies the environment of the resource group(s). Appended at the end of the \"calculated\" name."
  type        = string
  validation {
    condition     = length(var.environment) > 1 && length(var.environment) < 5
    error_message = "The `environment` value is required and must be 4 alphanumeric characters or less."
  }
}

variable "locations" {
  description = "(Required) Specifies the location(s) of the resource group. Appended after `name`."
  type        = list(string)
  validation {
    condition     = length(var.locations) > 0
    error_message = "The `locations` value must contain at least one location."
  }
}

variable "name" {
  description = "(Required) Specifies the name used for the resource group."
  type        = string
  validation {
    condition     = length(var.name) > 0
    error_message = "The `name` value is required."
  }
}

variable "separator" {
  type        = string
  description = "(Optional) Specifies the string separating the values in the `name` of the resource. Defaults to `-`."
  default     = "-"
}

variable "tags" {
  description = "(Required) Specifies the tags to validate."
  type        = map
  validation {
    condition     = length(var.tags) > 0
    error_message = "The `tags` value must contain at least one key/value."
  }
}
