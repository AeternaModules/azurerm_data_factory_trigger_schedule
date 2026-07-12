output "data_factory_trigger_schedules_activated" {
  description = "Map of activated values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.activated }
}
output "data_factory_trigger_schedules_annotations" {
  description = "Map of annotations values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.annotations }
}
output "data_factory_trigger_schedules_data_factory_id" {
  description = "Map of data_factory_id values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.data_factory_id }
}
output "data_factory_trigger_schedules_description" {
  description = "Map of description values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.description }
}
output "data_factory_trigger_schedules_end_time" {
  description = "Map of end_time values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.end_time }
}
output "data_factory_trigger_schedules_frequency" {
  description = "Map of frequency values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.frequency }
}
output "data_factory_trigger_schedules_interval" {
  description = "Map of interval values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.interval }
}
output "data_factory_trigger_schedules_name" {
  description = "Map of name values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.name }
}
output "data_factory_trigger_schedules_pipeline" {
  description = "Map of pipeline values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.pipeline }
}
output "data_factory_trigger_schedules_pipeline_name" {
  description = "Map of pipeline_name values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.pipeline_name }
}
output "data_factory_trigger_schedules_pipeline_parameters" {
  description = "Map of pipeline_parameters values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.pipeline_parameters }
}
output "data_factory_trigger_schedules_schedule" {
  description = "Map of schedule values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.schedule }
}
output "data_factory_trigger_schedules_start_time" {
  description = "Map of start_time values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.start_time }
}
output "data_factory_trigger_schedules_time_zone" {
  description = "Map of time_zone values across all data_factory_trigger_schedules, keyed the same as var.data_factory_trigger_schedules"
  value       = { for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : k => v.time_zone }
}

