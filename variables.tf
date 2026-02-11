variable "data_factory_trigger_schedules" {
  description = <<EOT
Map of data_factory_trigger_schedules, attributes below
Required:
    - data_factory_id
    - name
Optional:
    - activated
    - annotations
    - description
    - end_time
    - frequency
    - interval
    - pipeline_name
    - pipeline_parameters
    - start_time
    - time_zone
    - pipeline (block):
        - name (required)
        - parameters (optional)
    - schedule (block):
        - days_of_month (optional)
        - days_of_week (optional)
        - hours (optional)
        - minutes (optional)
        - monthly (optional, block):
            - week (optional)
            - weekday (required)
EOT

  type = map(object({
    data_factory_id     = string
    name                = string
    activated           = optional(bool) # Default: true
    annotations         = optional(list(string))
    description         = optional(string)
    end_time            = optional(string)
    frequency           = optional(string) # Default: "Minute"
    interval            = optional(number) # Default: 1
    pipeline_name       = optional(string)
    pipeline_parameters = optional(map(string))
    start_time          = optional(string)
    time_zone           = optional(string)
    pipeline = optional(object({
      name       = string
      parameters = optional(map(string))
    }))
    schedule = optional(object({
      days_of_month = optional(list(number))
      days_of_week  = optional(list(string))
      hours         = optional(list(number))
      minutes       = optional(list(number))
      monthly = optional(list(object({
        week    = optional(number)
        weekday = string
      })))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.data_factory_trigger_schedules : (
        v.schedule.monthly == null || (length(v.schedule.monthly) >= 1)
      )
    ])
    error_message = "Each monthly list must contain at least 1 items"
  }
}

