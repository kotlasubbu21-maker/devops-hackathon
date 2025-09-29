output "patient_service_url" {
  value = google_cloud_run_service.patient.status[0].url
}

output "appointment_service_url" {
  value = google_cloud_run_service.appointment.status[0].url
}