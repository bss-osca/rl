## This file is used by GHA

sink("render_book.log", append=F, split=T)
sessionInfo()

## render book
bookdown::render_book("book", quiet = TRUE)

## copy slides 
dir.create("book/_book/slides", showWarnings = FALSE)
setwd("slides")
file.copy(list.files(pattern = ".html"), "../book/_book/slides/", overwrite = T)
file.copy("libs", "../book/_book/slides/", recursive = T)
file.copy("img", "../book/_book/slides/", recursive = T)

### copy misc stuff 
setwd("..")
dir.create("book/_book/misc", showWarnings = FALSE)
setwd("exam")
file.copy(list.files(pattern = ".html"), "../book/_book/misc/", overwrite = T)
setwd("../project")
file.copy(list.files(pattern = ".html"), "../book/_book/misc/", overwrite = T)

warnings()
sink()
