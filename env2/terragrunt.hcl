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
        path_output = "mock-env1-output"
        env_output = "mock-env1-output"
    }
}


inputs = {
	env = "This is env2"
	path = "${get_path_from_repo_root()}"
	repo_root = "${local.repo_root}"
}










