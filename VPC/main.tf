provider vra {
  url           = var.vra_url
  refresh_token = var.vra_refresh_token
}

data vra_project "this" {
  name = var.project_name
}
