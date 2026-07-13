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
    activated           = optional(bool)
    annotations         = optional(list(string))
    description         = optional(string)
    end_time            = optional(string)
    frequency           = optional(string)
    interval            = optional(number)
    pipeline_name       = optional(string)
    pipeline_parameters = optional(map(string))
    start_time          = optional(string)
    time_zone           = optional(string)
    pipeline = optional(list(object({
      name       = string
      parameters = optional(map(string))
    })))
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
        v.description == null || (length(v.description) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_trigger_schedules : (
        v.schedule == null || (v.schedule.days_of_month == null || (alltrue([for x in v.schedule.days_of_month : (x >= 1 && x <= 31) || (x >= -31 && x <= -1)])))
      )
    ])
    error_message = "any of: must be between 1 and 31; must be between -31 and -1"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_trigger_schedules : (
        v.schedule == null || (v.schedule.hours == null || (alltrue([for x in v.schedule.hours : x >= 0 && x <= 24])))
      )
    ])
    error_message = "must be between 0 and 24"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_trigger_schedules : (
        v.schedule == null || (v.schedule.minutes == null || (alltrue([for x in v.schedule.minutes : x >= 0 && x <= 60])))
      )
    ])
    error_message = "must be between 0 and 60"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_trigger_schedules : (
        v.schedule == null || (v.schedule.monthly == null || alltrue([for item in v.schedule.monthly : (item.week == null || ((item.week >= 1 && item.week <= 5) || (item.week >= -5 && item.week <= -1)))]))
      )
    ])
    error_message = "any of: must be between 1 and 5; must be between -5 and -1"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_trigger_schedules : (
        v.time_zone == null || (length(v.time_zone) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_trigger_schedules : (
        v.interval == null || (v.interval >= 1)
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_trigger_schedules : (
        v.annotations == null || (alltrue([for x in v.annotations : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 10 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

