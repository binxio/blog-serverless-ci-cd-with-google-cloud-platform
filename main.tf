provider google {
}

variable email {
}

variable project {
}

data google_project current {
  project_id = var.project
}

resource google_project_service cloudbuild {
  service = "cloudbuild.googleapis.com"
  project = data.google_project.current.project_id
}

resource google_project_service sourcerepo {
  service = "sourcerepo.googleapis.com"
  project = data.google_project.current.project_id
}

resource google_project_service containerregistry {
  service = "containerregistry.googleapis.com"
  project = data.google_project.current.project_id
}
