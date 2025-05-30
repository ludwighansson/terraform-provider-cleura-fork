
resource "cleura_shoot_cluster" "test" {
  project = var.project-id
  region = "sto2"
  name = "cleuratf-new"
  kubernetes_version = "1.32.4"
  provider_details = {
    worker_groups = [
	    {
        worker_group_name = "tstwg"
        machine_type = "b.2c4gb"
        min_nodes = 1
        max_nodes = 2
        image_version = "1592.8.0"
      },
    ]
  }
}

// Set via CLEURA_TEST_PROJECT_ID environment variable in test suite
variable "project-id" {
}
