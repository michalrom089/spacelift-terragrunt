terraform {
	source = "../shared"
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
}
