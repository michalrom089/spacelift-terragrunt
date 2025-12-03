locals {
  repo_root = get_repo_root()
  repo_path = get_path_from_repo_root()
}

terraform {
	source = "${local.repo_root}/shared"
}

dependency "env1" {
	config_path = "../env1"

    mock_outputs = {
        random_id = "mock-random-id"
        random_id_b64 = "mock-random-id-b64"
        timestamp = "mock-timestamp"
    }
}


inputs = {}











