terraform {
	source = "../shared"
}

inputs = {
	env = "This is env1"
	path = "${get_path_from_repo_root()}"
}















