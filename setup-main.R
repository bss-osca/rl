devtools::install("package/rl/", quick = T, force = T)   # local
remotes::install_github("bss-osca/rl/package/rl", upgrade = FALSE)      # github
renv::snapshot(prompt = FALSE, force = TRUE)

