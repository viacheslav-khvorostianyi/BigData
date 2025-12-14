terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.0.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "6.38.0"
    }
  }
  required_version = ">= 1.2"

  backend "gcs" {
    bucket = "terraform-dev-data-ops"
    prefix = "state"
  }
}

provider "google" {
    credentials = file("../tmp/creds.json")
    project     = var.project_id
    region      = var.gcp_region
    zone        = var.zone
}


resource "google_dataproc_cluster" "dataproc_cluster" {
  name   = "vkhvorostianyi-2025-12-13"
  region = var.gcp_region
  cluster_config {
    staging_bucket = google_storage_bucket.dataproc_staging.name
    temp_bucket    = google_storage_bucket.dataproc_temp.name
    # Enable component gateway
    endpoint_config {
      enable_http_port_access = true
    }
    master_config {
      num_instances = 1
      machine_type  = "e2-standard-4"
      disk_config {
        boot_disk_size_gb = 1024
      }
    }
    worker_config {
      num_instances = 2
      machine_type  = "e2-standard-4"
      disk_config {
        boot_disk_size_gb = 1024
      }
    }

    preemptible_worker_config {
      num_instances = 0
    }

    software_config {
      image_version = "2.0.35-debian10"
      optional_components = ["ZEPPELIN"]
      override_properties = {
    "dataproc:dataproc.allow.zero.workers" = "false"
      }
    }
  }

  depends_on = [
    google_project_service.dataproc_api,
    google_project_service.compute_api,
    google_project_service.storage_api,
    google_project_service.iam_api,
    google_project_service.logging_api,
    google_project_service.monitoring_api,
    google_project_service.cloudresourcemanager_api,
    google_project_service.serviceusage_api,
  ]
}

resource "google_project_service" "dataproc_api" {
  project = var.project_id
  service = "dataproc.googleapis.com"
}

resource "google_project_service" "compute_api" {
  project = var.project_id
  service = "compute.googleapis.com"
}

resource "google_project_service" "storage_api" {
  project = var.project_id
  service = "storage.googleapis.com"
}

resource "google_project_service" "iam_api" {
  project = var.project_id
  service = "iam.googleapis.com"
}

resource "google_project_service" "logging_api" {
  project = var.project_id
  service = "logging.googleapis.com"
}

resource "google_project_service" "monitoring_api" {
  project = var.project_id
  service = "monitoring.googleapis.com"
}

resource "google_project_service" "cloudresourcemanager_api" {
  project = var.project_id
  service = "cloudresourcemanager.googleapis.com"
}

# optional but helpful when Terraform enables services
resource "google_project_service" "serviceusage_api" {
  project = var.project_id
  service = "serviceusage.googleapis.com"
}

resource "google_storage_bucket" "dataproc_staging" {
  name          = "${var.project_id}-staging"
  location      = var.gcp_region
  force_destroy = true

  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "dataproc_temp" {
  name          = "${var.project_id}-temp"
  location      = var.gcp_region
  force_destroy = true

  uniform_bucket_level_access = true
}

resource "google_storage_bucket_iam_member" "staging_bucket_sa" {
  bucket = google_storage_bucket.dataproc_staging.name
  role   = "roles/storage.objectAdmin"
  member = "serviceAccount:598631921278-compute@developer.gserviceaccount.com"
}

resource "google_storage_bucket_iam_member" "temp_bucket_sa" {
  bucket = google_storage_bucket.dataproc_temp.name
  role   = "roles/storage.objectAdmin"
  member = "serviceAccount:598631921278-compute@developer.gserviceaccount.com"
}

