# Reinforcement Learning for Business

Teaching notes, modules, tutorials etc. for the 'Reinforcement Learning for Business' course. 

The course notes are automatically generated using GitHub Actions when push to GitHub and can be seen at https://bss-osca.github.io/rl/. They are stored in the branch `gh-pages`.

Folders:

   - `book` Files for the teaching nodes. Files related to modules are named `<module number>\_<desc>.Rmd`. Teaching notes can be seen at https://bss-osca.github.io/rl/. The course notes are automatically generated using GitHub Actions when push to GitHub.
   - `package` RL package (currently not used).
   - `renv` Package project library using [renv](https://rstudio.github.io/renv). Restore using `renv::restore()`.
   - `student` A clone of the repository https://github.com/bss-osca/rl-student with student resources. Changes are automatically pushed to the `rl-student` repo using GitHub Actions when push to GitHub.
   - `slides` Course slides. Files related to modules are named `<module number>\_<desc>-slides.Rmd`. The slides can be seen at https://bss-osca.github.io/rl/slides/. The slides are generated manually inside the `slides` folder and automatically copied to the `gh-pages` branch using GitHub Actions when push to GitHub.
