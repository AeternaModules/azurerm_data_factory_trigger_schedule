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
        v.schedule.monthly == null || (length(v.schedule.monthly) >= 1)
      )
    ])
    error_message = "Each monthly list must contain at least 1 items"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_data_factory_trigger_schedule's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.DataFactoryPipelineAndTriggerName] !regexp.MustCompile(`^[A-Za-z0-9_][^<>*#.%&:\\+?/]*$`).MatchString(value)
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] !ok
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] err != nil
  # path: description
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: schedule.days_of_month[*]
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: schedule.days_of_week[*]
  #   source:    validation.IsDayOfTheWeek(...) - no translation rule yet, add one
  # path: schedule.hours[*]
  #   condition: value >= 0 && value <= 24
  #   message:   must be between 0 and 24
  # path: schedule.minutes[*]
  #   condition: value >= 0 && value <= 60
  #   message:   must be between 0 and 60
  # path: schedule.monthly.weekday
  #   source:    validation.IsDayOfTheWeek(...) - no translation rule yet, add one
  # path: schedule.monthly.week
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: start_time
  #   source:    validation.IsRFC3339Time(...) - no translation rule yet, add one
  # path: end_time
  #   source:    validation.IsRFC3339Time(...) - no translation rule yet, add one
  # path: time_zone
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: frequency
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: interval
  #   condition: value >= 1
  #   message:   must be at least 1
  # path: pipeline.name
  #   source:    [from validate.DataFactoryPipelineAndTriggerName] !regexp.MustCompile(`^[A-Za-z0-9_][^<>*#.%&:\\+?/]*$`).MatchString(value)
  # path: pipeline_name
  #   source:    [from validate.DataFactoryPipelineAndTriggerName] !regexp.MustCompile(`^[A-Za-z0-9_][^<>*#.%&:\\+?/]*$`).MatchString(value)
  # path: annotations[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
}

