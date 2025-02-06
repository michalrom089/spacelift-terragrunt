terraform {
	source = "../shared"
}

dependency "env1" {
	config_path = "../env1"
}

inputs = {
	env = "This is env2"
	path = "${get_path_from_repo_root()}"
}
