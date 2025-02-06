terraform {
  source = "."
}

inputs = {
  path = "${get_path_from_repo_root()}"
}
