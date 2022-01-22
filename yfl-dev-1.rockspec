package = "yfl"
version = "dev-1""0.0.1"
source = {
   url = "git+https://github.com/EwasteSolution/yfl.git"
}
description = {yad for lua a lua wrapper for yad a gtk dialog program }
   homepage = "https://github.com/EwasteSolution/yfl",
   license = "GNU ver3.0"
}
build = {
   type = "builtin",
   dependency=yad
   modules = {}
}
