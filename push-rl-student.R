## This file is used by GHA

#### Update rl-student repo ####
# The subfolder student points to another repo which have been added using 
# git subtree add --prefix=student https://github.com/bss-osca/rl-student master


library(tidyverse)
## Prepare files for https://github.com/bss-osca/rl-student
# Remove book content from files so student can use them for notes and exercises.
rmd <- fs::dir_ls("book", type = "file", glob = "*.Rmd") 
rmd <- setdiff(rmd, c("book/99_appdx.Rmd"))
yml <- read_file("student/main.yaml")
for (f in rmd) {
   mod <- as.numeric(str_sub(fs::path_file(f), 1, 2))
   title <- if_else(mod > 0, str_c("Module", mod, "- Notes and Exercises", sep = " "), "Notes and Exercises", "Notes and Exercises")
   read_file(f) %>% 
      str_replace("---(.|\n)*?---", yml) %>%   # replace yaml
      str_replace("TITLE", title) %>%          # replace title
      str_remove_all("# .PART. .*") %>%        # remove PART statements
      str_remove_all("```.*solution.*=.*TRUE.*\n(.|\n)*?```") %>%        # remove solutions NOTE don't remove hints
      str_remove_all("```(.|\n)*?bookdown::serve_book(.|\n)*?```") %>%   # remove bookdown comments
      str_remove_all("`r strExercises`") %>%                             # remove exercises comment
      write_file(file = str_c("student/", fs::path_file(f)))             # save file in student folder
}
# Rename index.Rmd 
fs::file_move("student/index.Rmd", "student/00-intro.Rmd")
# Copy other files/folders
fs::dir_copy("book/img/", "student/img/", overwrite = T)
fs::dir_copy("renv/", "student/renv/", overwrite = T)
fs::file_copy("renv.lock", "student/renv.lock", overwrite = T)
fs::file_copy(".Rprofile", "student/.Rprofile", overwrite = T)
fs::file_copy("book/setup.R", "student/setup.R", overwrite = T)
fs::file_copy("book/links.md", "student/links.md", overwrite = T)

## Push to student GitHub repo
# system("git add student/.")                        # add new files
# system('git commit -m "Update student folder"')    # commit
# system("git subtree push --prefix=student https://github.com/bss-osca/rl-student master")  # push
