"# DevOps Hackathon Project" 
Title: DevOps Hackathon Challenge – Containerized Microservices Deployment on GCP
This project deploys Patient and Appointment microservices to GCP Cloud Run using Terraform.
 
GitHub Repository: https://github.com/kotlasubbu21-maker/devops-hackathon

1. Project Overview
This project demonstrates the deployment of a healthcare application with two microservices (Patient Service and Appointment Service) using GCP Cloud Run, Docker, and GitHub Actions. The aim is to containerize services, deploy them to a managed platform, and implement CI/CD pipelines.
2. Project Structure
devops-hackathon/
│
├── patient-service/
│   ├── patient-service.js
│   ├── package.json
│   ├── Dockerfile
│
├── appointment-service/
│   ├── appointment-service.js
│   ├── package.json
│   ├── Dockerfile
│
├── terraform/
│   ├── main.tf
│   ├── provider.tf
│   ├── backend.tf
│   ├── variables.tf
│   ├── outputs.tf
│
├── .github/
│   └── workflows/
│       └── terraform.yml
│
└── README.md


3. Microservices Setup
Patient Service
• Developed in Node.js
• Endpoints:
o GET /health – Service health check
o GET /patients – Retrieve all patients
o POST /patients – Add a new patient


Appointment Service
• Developed in Node.js
• Endpoints:
o GET /appointments – Retrieve all appointments
o POST /appointments – Add a new appointment
o GET /appointments/patient/:patientId – Retrieve appointments by patient ID


4. Docker Containerization
• Docker installed on Windows 11
• Docker images built for both services
• Images pushed to GCP Artifact Registry


5. Cloud Run Deployment
• Deployed both services to GCP Cloud Run
• Patient Service URL: https://patient-service-481243733919.us-central1.run.app
• Appointment Service URL: https://appointment-service-481243733919.us-central1.run.app

6. Testing & Logs
• Verified endpoints using browser/Postman:
o Patient Service: /health, /patients
o Appointment Service: /appointments, /appointments/patient/:id
• Logs verified in Cloud Run console


