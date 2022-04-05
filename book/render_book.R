## This file is used by GHA

sink("render_book.log", append=F, split=T)
sessionInfo()

## render book
bookdown::render_book("book", quiet = TRUE)

## copy slides to _book
dir.create("book/_book/slides", showWarnings = FALSE)
setwd("slides")
file.copy(list.files(pattern = ".html"), "../book/_book/slides/", overwrite = T)
file.copy("libs", "../book/_book/slides/", recursive = T)
file.copy("img", "../book/_book/slides/", recursive = T)

warnings()
sink()
