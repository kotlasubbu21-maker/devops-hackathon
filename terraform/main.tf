
# Patient Service
resource "google_cloud_run_service" "patient" {
  name     = "patient-service"
  location = var.region

  template {
    spec {
      containers {
        image = "us-central1-docker.pkg.dev/devops-hackathon-473519/microservices-repo/patient-service:latest"
        ports { container_port = 8080 }
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

# Appointment Service
resource "google_cloud_run_service" "appointment" {
  name     = "appointment-service"
  location = var.region

  template {
    spec {
      containers {
        image = "us-central1-docker.pkg.dev/devops-hackathon-473519/microservices-repo/appointment-service:latest"
        ports { container_port = 8080 }
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}