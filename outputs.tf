output "data_factory_trigger_schedules" {
  description = "All data_factory_trigger_schedule resources"
  value       = azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules
}
output "data_factory_trigger_schedules_activated" {
  description = "List of activated values across all data_factory_trigger_schedules"
  value       = [for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : v.activated]
}
output "data_factory_trigger_schedules_annotations" {
  description = "List of annotations values across all data_factory_trigger_schedules"
  value       = [for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : v.annotations]
}
output "data_factory_trigger_schedules_data_factory_id" {
  description = "List of data_factory_id values across all data_factory_trigger_schedules"
  value       = [for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : v.data_factory_id]
}
output "data_factory_trigger_schedules_description" {
  description = "List of description values across all data_factory_trigger_schedules"
  value       = [for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : v.description]
}
output "data_factory_trigger_schedules_end_time" {
  description = "List of end_time values across all data_factory_trigger_schedules"
  value       = [for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : v.end_time]
}
output "data_factory_trigger_schedules_frequency" {
  description = "List of frequency values across all data_factory_trigger_schedules"
  value       = [for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : v.frequency]
}
output "data_factory_trigger_schedules_interval" {
  description = "List of interval values across all data_factory_trigger_schedules"
  value       = [for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : v.interval]
}
output "data_factory_trigger_schedules_name" {
  description = "List of name values across all data_factory_trigger_schedules"
  value       = [for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : v.name]
}
output "data_factory_trigger_schedules_pipeline" {
  description = "List of pipeline values across all data_factory_trigger_schedules"
  value       = [for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : v.pipeline]
}
output "data_factory_trigger_schedules_pipeline_name" {
  description = "List of pipeline_name values across all data_factory_trigger_schedules"
  value       = [for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : v.pipeline_name]
}
output "data_factory_trigger_schedules_pipeline_parameters" {
  description = "List of pipeline_parameters values across all data_factory_trigger_schedules"
  value       = [for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : v.pipeline_parameters]
}
output "data_factory_trigger_schedules_schedule" {
  description = "List of schedule values across all data_factory_trigger_schedules"
  value       = [for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : v.schedule]
}
output "data_factory_trigger_schedules_start_time" {
  description = "List of start_time values across all data_factory_trigger_schedules"
  value       = [for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : v.start_time]
}
output "data_factory_trigger_schedules_time_zone" {
  description = "List of time_zone values across all data_factory_trigger_schedules"
  value       = [for k, v in azurerm_data_factory_trigger_schedule.data_factory_trigger_schedules : v.time_zone]
}

