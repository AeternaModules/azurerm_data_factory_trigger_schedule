output "data_factory_trigger_schedules_id" {
  description = "Map of id values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_factory_trigger_schedules_activated" {
  description = "Map of activated values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.activated if v.activated != null }
}
output "data_factory_trigger_schedules_annotations" {
  description = "Map of annotations values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.annotations if v.annotations != null && length(v.annotations) > 0 }
}
output "data_factory_trigger_schedules_data_factory_id" {
  description = "Map of data_factory_id values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.data_factory_id if v.data_factory_id != null && length(v.data_factory_id) > 0 }
}
output "data_factory_trigger_schedules_description" {
  description = "Map of description values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.description if v.description != null && length(v.description) > 0 }
}
output "data_factory_trigger_schedules_end_time" {
  description = "Map of end_time values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.end_time if v.end_time != null && length(v.end_time) > 0 }
}
output "data_factory_trigger_schedules_frequency" {
  description = "Map of frequency values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.frequency if v.frequency != null && length(v.frequency) > 0 }
}
output "data_factory_trigger_schedules_interval" {
  description = "Map of interval values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.interval if v.interval != null }
}
output "data_factory_trigger_schedules_name" {
  description = "Map of name values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "data_factory_trigger_schedules_pipeline" {
  description = "Map of pipeline values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.pipeline if v.pipeline != null && length(v.pipeline) > 0 }
}
output "data_factory_trigger_schedules_pipeline_name" {
  description = "Map of pipeline_name values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.pipeline_name if v.pipeline_name != null && length(v.pipeline_name) > 0 }
}
output "data_factory_trigger_schedules_pipeline_parameters" {
  description = "Map of pipeline_parameters values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.pipeline_parameters if v.pipeline_parameters != null && length(v.pipeline_parameters) > 0 }
}
output "data_factory_trigger_schedules_schedule" {
  description = "Map of schedule values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.schedule if v.schedule != null && length(v.schedule) > 0 }
}
output "data_factory_trigger_schedules_start_time" {
  description = "Map of start_time values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.start_time if v.start_time != null && length(v.start_time) > 0 }
}
output "data_factory_trigger_schedules_time_zone" {
  description = "Map of time_zone values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.time_zone if v.time_zone != null && length(v.time_zone) > 0 }
}

