

# (APPENDIX) Appendix {- #mod-apdx}

# Setting up R {#mod-r-setup} 

[R] is a programming language and free software environment. The R language is widely used among statisticians and data miners for developing statistical software and data analysis. For a further overview and description of the history of R see [Chapter 2](https://bookdown.org/rdpeng/rprogdatascience/history-and-overview-of-r.html) in @rdpeng. R can be run from a terminal but in general you use an IDE (integrated development environment) [RStudio] for running R and to saving your work.

R and RStudio can either be run from your laptop or using [RStudio Cloud][rstudio-cloud] which run R in the cloud using your browser. During this course **it is recommend to use RStudio on your laptop** since there is no limit on CPU usage. If you need to install R and RStudio on your laptop [check this out](https://bss-osca.github.io/tfa/mod-r-install.html#r-install).

If you need a brushup on R have a look at DataCamp. First, signup for a [course group](https://www.datacamp.com/groups/shared_links/f0b49a9981de99c5822b7cbe9b90fc9f82f28774a33642896b39d59efe219eb9). Next, have a look at the free courses such as [Introduction to R][datacamp-r-intro]. DataCamp runs all the courses in your browser. That is, R is run on a server and you do not use RStudio here. 


# Working in groups {#groups}

During the course you have been allocated into groups. You are expected to solve the exercises and write the project report in your group. Before you start, it is a good idea to agree on a set of group rules. First, agree on a [coding convention](#coding-convention) when you are going to use R. Most people in the R community use snake case but camel case is also okay. Next, setup rules on when to meet and how you will organize the work. For instance, it is a good idea that all try to solve some of the exercises before you meet and you then discuss the answers, problems etc. Finally, it is a good idea to have a common place for your code. You have different options:

1) Use a cloud storage services such as Dropbox, OneDrive or Google Drive.
2) Use a version control system such as Git together with [GitHub]. GitHub is a code sharing and publishing service and may be seen as a social networking site for programmers. 
3) If you use RStudio Cloud then one person in the group can create a shared workspace with projects: 
   - First create a new workspace named e.g. _Shared_. 
   - Press _Members_ and add the group members as moderators.
   - Now go back to _Projects_ in the _RL_ workspace and move one project to the shared workspace. Rename it to e.g. _Group Project_. 
   Members will now have access to this project where you can share code. NOTE you can not work collectively on a file simultaneously. That is, only one member can change a file at a time! Hence it is a good idea to have your own private project to work on and use this project as a place where you can share code. If you want to download a project to your laptop then press the export button. 

The benefit of a cloud storage service is that it is well known to you and easy to setup. Cons are that you cannot work on the same file simultaneously. The benefit of Git and GitHub is that it manages the evolution of a set of files – called a repository – in a sane, highly structured way. If you have no idea what I'm talking about, think of it as the "Track Changes" features from Microsoft Word on steroids. Here you can work on files simultaneously. Moreover, it can be used from within RStudio. Cons are that it is harder to setup and learn. For a detailed description see [Why Git? Why GitHub?][hg-why].

<!-- ## Joint R project structure {-} -->

<!-- I suggest to have an R project with subfolders `joint`, `[student1 name]`, `[student2 name]`, ..., `[student5 name]`. Student folders contain files only a single student work on (good when you do some exercises before class). Folder `joint` contains joint work. That could for instance be a joint answer of an exercise (based on the work you did in the student folders) and a sub-folder with the project report.   -->


# Coding/naming convention {#coding-convention}

The main reason for using a consistent set of coding conventions is to standardize the structure and coding style of an application so that you and others can easily read and understand the code. Good coding conventions result in precise, readable, and unambiguous source code that is consistent with other language conventions and as intuitive as possible. 

Different ways of naming you variables exists. You are advised to adopt a naming convention; some use [snake case][wiki-snake-case] others use [camel case][wiki-camel-case]. The R community mostly use snake case but camel case is also okay. Choose the naming convention you like best in your study group. But stick only to one of them. A few examples:

```
this_is_snake_case   # note you do not use capital letters here
thisIsCamelCase      # you start each word with a capital letter (except the first)
```
When defining variables and functions, it is in general good practice to use nouns for variables and verbs for functions.


## Commenting your code

It is always good practice to comment your code. Such that others can get a fast overview and understand your code easier. We will use [roxygen documentation](https://roxygen2.r-lib.org/) comments which are widely known. 


``` r
#' Subtract two vectors
#'
#' @param x First vector.
#' @param y Vector to be subtracted.
#'
#' @return The difference.
#' @export
#'
#' @examples
#' subtract(x = c(5,5), y = c(2,3))
subtract <- function(x, y) {
  return(x-y)
}
```

You can add a roxygen skeleton automatically using **Code > Insert Roxygen Skeleton** in RStudio. 


# Annotate the course notes {#annotate}

I recommend using [hypothes.is] to annotate the online course notes. You can create both private and public annotations. Collaborative annotation helps people connect to each other and what they’re reading, even when they’re keeping their distance. You may also use public notes to help me indicate spell errors, unclear content etc. in the notes. 


# Getting help {#help}

We all get stuck sometimes and need some help. Below are some advises on how to help yourself and ask for help:

If you have a question related to the theory of RL:

  * Ask it during the lecture or in the breaks
  * Ask it at our [course forum][course-help] and we (the teacher and other students) will try to answer your question asap. 

If you have a question related to R:

  * First try to understand the error message and solve the problem. You may try to debug your code by inserting `browser()` in your R code. Further details about debugging can be seen [here][debug-in-r].  
  * [Google is your friend](http://xkcd.com/627/). This is always the next step. Try searches like "r dplyr filter", "r tidyverse", "r subset vector", etc.
  * Do you need help for a specific function in R then try `?[function-name]` such as `?geom_line`, `?mutate`, etc. Mostly, focus on the last section with examples. Moreover, some packages may have written vignettes try `browseVignettes(package = "package_name")` to check.
  * Have a look at **Help > Cheatsheets** in RStudio.
  * If you can't find an answer then it is time to ask on-line. I recommend asking a question at [stackoverflow](http://stackoverflow.com). To make your question effective, the idea is to make things as easy as possible for someone to answer. This stack overflow thread [How to make a great R reproducible example?](http://stackoverflow.com/questions/5963269/how-to-make-a-great-r-reproducible-example/5963610#5963610) give you some good hints. The process of providing a good minimal reproducible example (reprex) often causes you to answer your own question! See also [Stack Exchange's 'How to ask'](https://codereview.stackexchange.com/help/how-to-ask) and [How to make a reprex](https://www.tidyverse.org/help/) at tidyverse.
  * Ask it at our [course forum][course-help] and we (the teacher and other students) will try to answer your question asap.   

__Note help using mail correspondence is not supported!__



# Learning goals {#mod-lg-course}

The purpose of this course is to give you an introduction and knowledge about reinforcement learning (RL). After having participated in the course, you must, in addition to achieving general academic skills, demonstrate: 

Knowledge of

   1.	RL for Bandit problems 
   2.	Markov decision processes and ways to optimize them
   3.	the exploration vs exploitation challenge in RL and approaches for addressing this challenge 
   4.	the role of policy evaluation with stochastic approximation in the context of RL

Skills to

   5.	define the key features of RL that distinguishes it from other machine learning techniques
   6.	discuss fundamental concepts in RL
   7.	describe the mathematical framework of Markov decision processes
   8.	formulate and solve Markov and semi-Markov decision processes for realistic problems with finite state space under different objectives
   9.	apply fundamental techniques, results and concepts of RL on selected RL problems.
   10. given an application problem, decide if it should be formulated as a RL problem and define it formally (in terms of the state space, action space, dynamics and reward model)

Competences to

   11. identify areas where RL are valuable
   12. select and apply the appropriate RL model for a given business problem
   13. interpret and communicate the results from RL




<!-- # Schedule {}  -->

<!-- The schedule for the course is given below. -->

<!-- ```{r, echo=FALSE, message=FALSE, cache=FALSE, eval=FALSE} -->
<!-- source("common.R") -->
<!-- library(googlesheets4) -->
<!-- sheets_deauth() -->
<!-- sheet <- read_sheet("https://docs.google.com/spreadsheets/d/1-fSG3KWip0Vm5Uwf9T6vUMuH0ReBhpITHT3rl896vwc/edit?usp=sharing", -->
<!--            sheet = "Schedule") -->
<!-- knitr::kable(sheet) -->
<!-- ``` -->

<!-- <p><iframe width="1300" height="600" frameborder="0" src="https://docs.google.com/spreadsheets/d/e/2PACX-1vRka2NKE77BvtIoJc1GW-Dr_oABzQdQhMC94KpPjW7DpSTnepN9RV3m6w1ILKe3YoQwUj0C6JAe3K1T/pubhtml?gid=1591856300&amp;single=true&amp;widget=true&amp;headers=false"></iframe></p> -->




# Colophon {}

These notes was written in [bookdown](http://bookdown.org/) inside [RStudio](http://www.rstudio.com/ide/). 
<!-- The website [stat545.com](https://stat545.com) is hosted with [Netlify](https://www.netlify.com), and automatically updated after every commit by [Travis-CI](https://travis-ci.org). The complete source is available from [GitHub](https://github.com/rstudio-education/stat545). -->

This version of the notes was built with:


```
#> Finding R package dependencies ... Done!
#>  setting  value
#>  version  R version 4.4.3 (2025-02-28)
#>  os       Ubuntu 24.04.2 LTS
#>  system   x86_64, linux-gnu
#>  ui       X11
#>  language (EN)
#>  collate  C.UTF-8
#>  ctype    C.UTF-8
#>  tz       UTC
#>  date     2025-03-31
#>  pandoc   3.1.11 @ /opt/hostedtoolcache/pandoc/3.1.11/x64/ (via rmarkdown)
```

Along with these packages:


```{=html}
<div class="datatables html-widget html-fill-item" id="htmlwidget-320bf05014da5aeaf0df" style="width:100%;height:auto;"></div>
<script type="application/json" data-for="htmlwidget-320bf05014da5aeaf0df">{"x":{"filter":"top","vertical":false,"filterHTML":"<tr>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n  <\/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n  <\/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n  <\/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n  <\/td>\n<\/tr>","data":[["askpass","backports","base64enc","bit","bit64","blob","bookdown","brew","brio","broom","bslib","cachem","callr","cellranger","cli","clipr","colorspace","commonmark","conflicted","cpp11","crayon","credentials","crosstalk","curl","data.table","DBI","dbplyr","desc","devtools","dichromat","diffobj","digest","downlit","dplyr","DT","dtplyr","ellipsis","evaluate","fansi","farver","fastmap","fontawesome","forcats","fs","gapminder","gargle","gender","genderdata","generics","geonames","gert","ggplot2","gh","gitcreds","glue","googledrive","googlesheets4","gridExtra","gt","gtable","haven","highr","hms","htmltools","htmlwidgets","httpuv","httr","httr2","ids","ini","isoband","jquerylib","jsonlite","knitr","labeling","later","lattice","lazyeval","lifecycle","lubridate","magrittr","MASS","Matrix","memoise","mgcv","mime","miniUI","modelr","munsell","nlme","openssl","pillar","pkgbuild","pkgconfig","pkgdown","pkgload","praise","prettyunits","processx","profvis","progress","promises","ps","purrr","R6","ragg","rappdirs","rcmdcheck","RColorBrewer","Rcpp","readr","readxl","rebird","rematch","rematch2","remotes","reprex","rlang","rmarkdown","roxygen2","rplos","rprojroot","rstudioapi","rversions","rvest","sass","scales","selectr","sessioninfo","shiny","sourcetools","stringi","stringr","sys","systemfonts","testthat","textshaping","tibble","tidyr","tidyselect","tidyverse","timechange","tinytex","tzdb","urlchecker","usethis","utf8","uuid","vctrs","viridis","viridisLite","vroom","waldo","whisker","withr","xfun","xml2","xopen","xtable","yaml","zip"],[null,null,null,null,null,null,"0.41",null,null,null,"0.8.0","1.1.0",null,null,"3.6.3",null,"2.1-1",null,"1.2.0",null,null,null,null,null,null,null,null,null,"2.4.5",null,null,"0.6.37",null,"1.1.4",null,null,"0.3.2","1.0.1","1.0.6",null,"1.2.0",null,"1.0.0","1.6.5",null,null,null,null,"0.1.3",null,null,"3.5.1",null,null,"1.8.0",null,null,null,null,"0.3.6",null,null,"1.1.3","0.5.8.1","1.6.4","1.6.15",null,null,null,null,null,"0.1.4","1.8.9","1.48",null,"1.3.2","0.22-6",null,"1.0.4","1.9.3","2.0.3",null,null,"2.0.1",null,"0.12","0.1.1.1",null,"0.5.1",null,null,"1.9.0","1.4.5","2.0.3",null,"1.4.0",null,null,null,"0.4.0",null,"1.3.0",null,"1.0.2","2.5.1",null,null,null,"1.1-3","1.0.13-1","2.1.5",null,null,null,null,"2.5.0",null,"1.1.4","2.29",null,null,"2.0.4","0.17.1",null,null,"0.4.9","1.3.0",null,"1.2.2","1.9.1",null,"1.8.4","1.5.1",null,"1.1.0",null,null,"3.2.1","1.3.1","1.2.1","2.0.0","0.3.0",null,"0.4.0","1.0.1","3.0.0","1.2.4",null,"0.6.5",null,"0.4.2",null,null,null,"3.0.2","0.49","1.3.6",null,"1.8-4","2.3.10",null],["2024-10-04","2024-05-23","2015-07-28","2024-09-20","2024-09-22","2023-03-17","2024-10-16","2023-12-16","2024-04-24","2024-09-26","2024-07-29","2024-05-16","2024-03-25","2016-07-27","2024-06-21","2022-02-22","2024-07-26","2024-10-04","2023-02-01","2024-08-27","2024-06-20","2024-10-04","2023-11-23","2024-11-05","2024-10-10","2024-06-02","2024-03-19","2023-12-10","2022-10-11",null,"2021-10-05","2024-08-19","2024-06-10","2023-11-17","2024-04-04","2023-03-22","2021-04-29","2024-10-10","2023-12-08","2024-05-13","2024-05-15","2023-08-19","2023-01-29","2024-10-30",null,"2023-07-20",null,null,"2022-07-05",null,"2024-10-14","2024-04-23","2024-03-28","2022-09-08","2024-09-30","2023-06-11","2023-06-11","2017-09-09",null,"2024-10-25","2023-11-30","2024-05-26","2023-03-21","2024-04-04","2023-12-06","2024-03-26","2023-08-15","2024-11-04","2017-05-31","2018-05-20","2022-12-20","2021-04-26","2024-09-20","2024-07-07","2023-08-29","2023-12-06","2024-03-20","2019-03-15","2023-11-07","2023-09-27","2022-03-30","2024-06-13","2024-10-18","2021-11-26","2023-12-21","2021-09-28","2018-05-18","2023-03-22","2024-04-01","2024-08-14","2024-09-20","2023-03-22","2024-10-28","2019-09-22","2024-09-17","2024-06-28","2015-08-11","2023-09-24","2024-03-16","2024-09-20","2023-12-06","2024-04-05","2024-10-28","2023-08-10","2021-08-19","2024-09-11","2021-01-31","2021-09-27","2022-04-03","2024-11-02","2024-01-10","2023-07-06",null,"2023-08-30","2020-05-01","2024-03-17","2024-07-06","2024-06-04","2024-11-04","2024-06-28",null,"2023-11-05","2024-10-22","2022-08-31","2024-02-12","2024-03-15","2023-11-28","2019-11-20","2021-12-06","2024-08-01","2023-02-01","2024-05-06","2023-11-14","2024-10-04","2024-05-15","2024-04-14","2024-05-24","2023-03-20","2024-01-24","2024-03-11","2023-02-22","2024-01-18","2024-11-01","2023-05-12","2021-11-30","2024-07-29","2023-10-22","2024-07-29","2023-12-01","2024-01-29","2023-05-02","2023-12-05","2024-11-07","2022-12-05","2024-10-28","2024-10-31","2023-12-04","2024-04-25","2019-04-21","2024-07-26","2024-01-27"],["RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)",null,"RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)",null,"RSPM (R 4.4.0)",null,null,"RSPM (R 4.4.0)",null,"RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)",null,"RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","CRAN (R 4.4.3)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","CRAN (R 4.4.3)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)",null,"RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)",null,"RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)","RSPM (R 4.4.0)"]],"container":"<table class=\"cell-border stripe\">\n  <thead>\n    <tr>\n      <th>package<\/th>\n      <th>loadedversion<\/th>\n      <th>date<\/th>\n      <th>source<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"pageLength":161,"autoWidth":true,"bInfo":false,"paging":false,"columnDefs":[{"name":"package","targets":0},{"name":"loadedversion","targets":1},{"name":"date","targets":2},{"name":"source","targets":3}],"order":[],"orderClasses":false,"orderCellsTop":true,"lengthMenu":[10,25,50,100,161]},"selection":{"mode":"multiple","selected":null,"target":"row","selectable":null}},"evals":[],"jsHooks":[]}</script>
```






[BSS]: https://bss.au.dk/en/
[bi-programme]: https://kandidat.au.dk/en/businessintelligence/

[course-help]: https://github.com/bss-osca/rl/issues
[cran]: https://cloud.r-project.org
[cheatsheet-readr]: https://rawgit.com/rstudio/cheatsheets/master/data-import.pdf
[course-welcome-to-the-tidyverse]: https://github.com/rstudio-education/welcome-to-the-tidyverse

[DataCamp]: https://www.datacamp.com/
[datacamp-signup]: https://www.datacamp.com/groups/shared_links/cbaee6c73e7d78549a9e32a900793b2d5491ace1824efc1760a6729735948215
[datacamp-r-intro]: https://learn.datacamp.com/courses/free-introduction-to-r
[datacamp-r-rmarkdown]: https://campus.datacamp.com/courses/reporting-with-rmarkdown
[datacamp-r-communicating]: https://learn.datacamp.com/courses/communicating-with-data-in-the-tidyverse
[datacamp-r-communicating-chap3]: https://campus.datacamp.com/courses/communicating-with-data-in-the-tidyverse/introduction-to-rmarkdown
[datacamp-r-communicating-chap4]: https://campus.datacamp.com/courses/communicating-with-data-in-the-tidyverse/customizing-your-rmarkdown-report
[datacamp-r-intermediate]: https://learn.datacamp.com/courses/intermediate-r
[datacamp-r-intermediate-chap1]: https://campus.datacamp.com/courses/intermediate-r/chapter-1-conditionals-and-control-flow
[datacamp-r-intermediate-chap2]: https://campus.datacamp.com/courses/intermediate-r/chapter-2-loops
[datacamp-r-intermediate-chap3]: https://campus.datacamp.com/courses/intermediate-r/chapter-3-functions
[datacamp-r-intermediate-chap4]: https://campus.datacamp.com/courses/intermediate-r/chapter-4-the-apply-family
[datacamp-r-functions]: https://learn.datacamp.com/courses/introduction-to-writing-functions-in-r
[datacamp-r-tidyverse]: https://learn.datacamp.com/courses/introduction-to-the-tidyverse
[datacamp-r-strings]: https://learn.datacamp.com/courses/string-manipulation-with-stringr-in-r
[datacamp-r-dplyr]: https://learn.datacamp.com/courses/data-manipulation-with-dplyr
[datacamp-r-dplyr-bakeoff]: https://learn.datacamp.com/courses/working-with-data-in-the-tidyverse
[datacamp-r-ggplot2-intro]: https://learn.datacamp.com/courses/introduction-to-data-visualization-with-ggplot2
[datacamp-r-ggplot2-intermediate]: https://learn.datacamp.com/courses/intermediate-data-visualization-with-ggplot2
[dplyr-cran]: https://CRAN.R-project.org/package=dplyr
[debug-in-r]: https://rstats.wtf/debugging-r-code.html

[google-form]: https://forms.gle/s39GeDGV9AzAXUo18
[google-grupper]: https://docs.google.com/spreadsheets/d/1DHxthd5AQywAU4Crb3hM9rnog2GqGQYZ2o175SQgn_0/edit?usp=sharing
[GitHub]: https://github.com/
[git-install]: https://git-scm.com/downloads
[github-actions]: https://github.com/features/actions
[github-pages]: https://pages.github.com/
[gh-rl-student]: https://github.com/bss-osca/rl-student
[gh-rl]: https://github.com/bss-osca/rl

[happy-git]: https://happygitwithr.com
[hg-install-git]: https://happygitwithr.com/install-git.html
[hg-why]: https://happygitwithr.com/big-picture.html#big-picture
[hg-github-reg]: https://happygitwithr.com/github-acct.html#github-acct
[hg-git-install]: https://happygitwithr.com/install-git.html#install-git
[hg-exist-github-first]: https://happygitwithr.com/existing-github-first.html
[hg-exist-github-last]: https://happygitwithr.com/existing-github-last.html
[hg-credential-helper]: https://happygitwithr.com/credential-caching.html
[hypothes.is]: https://web.hypothes.is/

[osca-programme]: https://kandidat.au.dk/en/operationsandsupplychainanalytics/

[Peergrade]: https://peergrade.io
[peergrade-signup]: https://app.peergrade.io/join
[point-and-click]: https://en.wikipedia.org/wiki/Point_and_click
[pkg-bookdown]: https://bookdown.org/yihui/bookdown/
[pkg-openxlsx]: https://ycphs.github.io/openxlsx/index.html
[pkg-ropensci-writexl]: https://docs.ropensci.org/writexl/
[pkg-jsonlite]: https://cran.r-project.org/web/packages/jsonlite/index.html

[R]: https://www.r-project.org
[RStudio]: https://rstudio.com
[rstudio-cloud]: https://rstudio.cloud/spaces/176810/join?access_code=LSGnG2EXTuzSyeYaNXJE77vP33DZUoeMbC0xhfCz
[r-cloud-mod12]: https://rstudio.cloud/spaces/176810/project/2963819
[r-cloud-mod13]: https://rstudio.cloud/spaces/176810/project/3020139
[r-cloud-mod14]: https://rstudio.cloud/spaces/176810/project/3020322
[r-cloud-mod15]: https://rstudio.cloud/spaces/176810/project/3020509
[r-cloud-mod16]: https://rstudio.cloud/spaces/176810/project/3026754
[r-cloud-mod17]: https://rstudio.cloud/spaces/176810/project/3034015
[r-cloud-mod18]: https://rstudio.cloud/spaces/176810/project/3130795
[r-cloud-mod19]: https://rstudio.cloud/spaces/176810/project/3266132
[rstudio-download]: https://rstudio.com/products/rstudio/download/#download
[rstudio-customizing]: https://support.rstudio.com/hc/en-us/articles/200549016-Customizing-RStudio
[rstudio-key-shortcuts]: https://support.rstudio.com/hc/en-us/articles/200711853-Keyboard-Shortcuts
[rstudio-workbench]: https://www.rstudio.com/wp-content/uploads/2014/04/rstudio-workbench.png
[r-markdown]: https://rmarkdown.rstudio.com/
[ropensci-writexl]: https://docs.ropensci.org/writexl/
[r4ds-pipes]: https://r4ds.had.co.nz/pipes.html
[r4ds-factors]: https://r4ds.had.co.nz/factors.html
[r4ds-strings]: https://r4ds.had.co.nz/strings.html
[r4ds-iteration]: https://r4ds.had.co.nz/iteration.html


[stat-545]: https://stat545.com
[stat-545-functions-part1]: https://stat545.com/functions-part1.html
[stat-545-functions-part2]: https://stat545.com/functions-part2.html
[stat-545-functions-part3]: https://stat545.com/functions-part3.html
[slides-welcome]: https://bss-osca.github.io/rl/slides/00-rl_welcome.html
[slides-m1-3]: https://bss-osca.github.io/rl/slides/01-welcome_r_part.html
[slides-m4-5]: https://bss-osca.github.io/rl/slides/02-programming.html
[slides-m6-8]: https://bss-osca.github.io/rl/slides/03-transform.html
[slides-m9]: https://bss-osca.github.io/rl/slides/04-plot.html
[slides-m83]: https://bss-osca.github.io/rl/slides/05-joins.html
[sutton-notation]: https://bss-osca.github.io/rl/misc/sutton-notation.pdf

[tidyverse-main-page]: https://www.tidyverse.org
[tidyverse-packages]: https://www.tidyverse.org/packages/
[tidyverse-core]: https://www.tidyverse.org/packages/#core-tidyverse
[tidyverse-ggplot2]: https://ggplot2.tidyverse.org/
[tidyverse-dplyr]: https://dplyr.tidyverse.org/
[tidyverse-tidyr]: https://tidyr.tidyverse.org/
[tidyverse-readr]: https://readr.tidyverse.org/
[tidyverse-purrr]: https://purrr.tidyverse.org/
[tidyverse-tibble]: https://tibble.tidyverse.org/
[tidyverse-stringr]: https://stringr.tidyverse.org/
[tidyverse-forcats]: https://forcats.tidyverse.org/
[tidyverse-readxl]: https://readxl.tidyverse.org
[tidyverse-googlesheets4]: https://googlesheets4.tidyverse.org/index.html
[tutorial-markdown]: https://commonmark.org/help/tutorial/
[tfa-course]: https://bss-osca.github.io/tfa/

[Udemy]: https://www.udemy.com/

[vba-yt-course1]: https://www.youtube.com/playlist?list=PLpOAvcoMay5S_hb2D7iKznLqJ8QG_pde0
[vba-course1-hello]: https://youtu.be/f42OniDWaIo

[vba-yt-course2]: https://www.youtube.com/playlist?list=PL3A6U40JUYCi4njVx59-vaUxYkG0yRO4m
[vba-course2-devel-tab]: https://youtu.be/awEOUaw9q58
[vba-course2-devel-editor]: https://youtu.be/awEOUaw9q58
[vba-course2-devel-project]: https://youtu.be/fp6PTbU7bXo
[vba-course2-devel-properties]: https://youtu.be/ks2QYKAd9Xw
[vba-course2-devel-hello]: https://youtu.be/EQ6tDWBc8G4

[video-install]: https://vimeo.com/415501284
[video-rstudio-intro]: https://vimeo.com/416391353
[video-packages]: https://vimeo.com/416743698
[video-projects]: https://vimeo.com/319318233
[video-r-intro-p1]: https://www.youtube.com/watch?v=vGY5i_J2c-c
[video-r-intro-p2]: https://www.youtube.com/watch?v=w8_XdYI3reU
[video-r-intro-p3]: https://www.youtube.com/watch?v=NuY6jY4qE7I
[video-subsetting]: https://www.youtube.com/watch?v=hWbgqzsQJF0&list=PLjTlxb-wKvXPqyY3FZDO8GqIaWuEDy-Od&index=10&t=0s
[video-datatypes]: https://www.youtube.com/watch?v=5AQM-yUX9zg&list=PLjTlxb-wKvXPqyY3FZDO8GqIaWuEDy-Od&index=10
[video-control-structures]: https://www.youtube.com/watch?v=s_h9ruNwI_0
[video-conditional-loops]: https://www.youtube.com/watch?v=2evtsnPaoDg
[video-functions]: https://www.youtube.com/watch?v=ffPeac3BigM
[video-tibble-vs-df]: https://www.youtube.com/watch?v=EBk6PnvE1R4
[video-dplyr]: https://www.youtube.com/watch?v=aywFompr1F4

[wiki-snake-case]: https://en.wikipedia.org/wiki/Snake_case
[wiki-camel-case]: https://en.wikipedia.org/wiki/Camel_case
[wiki-interpreted]: https://en.wikipedia.org/wiki/Interpreted_language
[wiki-literate-programming]: https://en.wikipedia.org/wiki/Literate_programming
[wiki-csv]: https://en.wikipedia.org/wiki/Comma-separated_values
[wiki-json]: https://en.wikipedia.org/wiki/JSON
