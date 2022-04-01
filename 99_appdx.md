

# (APPENDIX) Appendix {- #mod-apdx}

# Setting up R {#r-setup} 

[R] is a programming language and free software environment. The R language is widely used among statisticians and data miners for developing statistical software and data analysis. For a further overview and description of the history of R see [Chapter 2](https://bookdown.org/rdpeng/rprogdatascience/history-and-overview-of-r.html) in @rdpeng. R can be run from a terminal but in general you use an IDE (integrated development environment) [RStudio] for running R and to saving your work.

R and RStudio can either be run from your laptop or using [RStudio Cloud][rstudio-cloud] which run R in the cloud using your browser. During this course **it is recommend to use RStudio on your laptop** as much as possible; however, you also need to have an [RStudio Cloud][rstudio-cloud] account. Some pros and cons of using R in the cloud vs on the laptop are 

__Cloud ([RStudio Cloud][rstudio-cloud])__

Pros:

- Log in and you are ready to use R.
- No need to download anything.
- Packages easier to install.
- Everything can be run using a browser.

Cons:

- There is a limit on user time and CPU time. You need to pay if need more time. 
- Often slower than the desktop version. 
- Need an internet connection. 
- Risky to use at the exam if the internet connection is slow or is down. Use the laptop version instead.

__Laptop ([R] and [RStudio])__

Pros:

- Can be used without any internet connection.
- No limit on user time and CPU usage.
- Good if computations takes a lot of time.

Cons:

- You need to install R and RStudio to get started.
- Packages must be installed.
- Other needed programs may have to be installed.
- Updates must be installed.

If you need to install RStudio on your laptop [check this out](https://bss-osca.github.io/tfa/mod-r-install.html).

RStudio Cloud works as your laptop version except that a workspace with projects for each module already is created. 

 

* Join the _Tools for Analytics_ workspace on [RStudio Cloud][rstudio-cloud] (signup if you have not done it yet).
* Click the _Projects_ link (in the top) and open the project _00-module-11_. A personal copy of the project is loaded for you.
* Put your cursor in the pane labeled Console, which is where you interact with the live R process. Create a simple object using code like `x <- 2 * 4` (followed by enter or return). Then inspect the `x` object by typing `x` followed by enter or return. You should see the value 8 print to screen. 
* Try to open a new file **File > New File > New RMarkdown...**. Use the defaults and press **OK**. Next save the file and compile it using **Knit** (Ctrl+Shift+K). You have now compiled a document with R code embedded. 









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

## Joint R project structure {-}

I suggest to have an R project with subfolders `joint`, `[student1 name]`, `[student2 name]`, ..., `[student5 name]`. Student folders contain files only a single student work on (good when you do some exercises before class). Folder `joint` contains joint work. That could for instance be a joint answer of an exercise (based on the work you did in the student folders) and a sub-folder with the project report.  


# Coding/naming convention {#coding-convention}

The main reason for using a consistent set of coding conventions is to standardize the structure and coding style of an application so that you and others can easily read and understand the code. Good coding conventions result in precise, readable, and unambiguous source code that is consistent with other language conventions and as intuitive as possible. 

Different ways of naming you variables exists. You are advised to adopt a naming convention; some use [snake case][wiki-snake-case] others use [camel case][wiki-camel-case]. The R community mostly use snake case but camel case is also okay. Choose the naming convention you like best in your study group. But stick only to one of them. A few examples:

```
this_is_snake_case   # note you do not use capital letters here
thisIsCamelCase      # you start each word with a capital letter (except the first)
```
When defining variables and functions, it is in general good practice to use nouns for variables and verbs for functions.


## Commenting your code

It is always good practice to comment your code. Such that others can get a fast overview and understand your code easier. We will use [roxygen documentation](https://roxygen2.r-lib.org/) comments which are widely known. A few examples in VBA are

The top of a module file:

```
'' Module description.
'  Can be more than one line.
' 
' @remarks Put your remarks on the module implementation here
' @author Lars Relund <junk@relund.dk>
' @date 2016-08-26
```

Before each `sub`, `function` etc. write:

```
'' Sub description
' 
' @pre Precondition 
' @post Postcondition
'
' @param strA	Explanation of input parameter strA
' @param intB Explanation of input parameter intB
' @return Return value (if a function)
' @remarks Further remarks 
Public Function MyFunc(strA As String, intB As Integer) As Integer {
   ...
}
```

Further tags (i.e. keywords starting with @) can be seen [here](https://roxygen2.r-lib.org/articles/rd.html).

In R we use a 'hash' (#') to comment functions:




# Annotate the course notes {#annotate}

I recommend using [hypothes.is] to annotate the online course notes. You can create both private and public annotations. Collaborative annotation helps people connect to each other and what they’re reading, even when they’re keeping their distance. You may also use public notes to help me indicate spell errors, unclear content etc. in the notes. 


# Getting help {#help}

We all get stuck sometimes and need some help. Below are some advises on how to help yourself and ask for help:

If you have a question related to the theory of RL:

  * Ask it during the lecture or in the breaks
  * Ask it at our [course forum][course-help] and we (the teacher and other students) will try to answer your question asap. 

If you have a question related to R:

  * First try to understand the error message and solve the problem. You may try to debug your code by inserting `browser()` in your R code. See [Chapter 11][debug-in-r] in @wtf for further details.  
  * [Google is your friend](http://xkcd.com/627/). This is always the next step. Try searches like "vba range", "r dplyr filter", "r tidyverse", "r subset vector", etc.
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
   10.	given an application problem, decide if it should be formulated as a RL problem and define it formally (in terms of the state space, action space, dynamics and reward model)

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

This book was written in [bookdown](http://bookdown.org/) inside [RStudio](http://www.rstudio.com/ide/). 
<!-- The website [stat545.com](https://stat545.com) is hosted with [Netlify](https://www.netlify.com), and automatically updated after every commit by [Travis-CI](https://travis-ci.org). The complete source is available from [GitHub](https://github.com/rstudio-education/stat545). -->

This version of the book was built with:


```
#> Finding R package dependencies ... Done!
#>  setting  value
#>  version  R version 4.1.3 (2022-03-10)
#>  os       Ubuntu 20.04.4 LTS
#>  system   x86_64, linux-gnu
#>  ui       X11
#>  language (EN)
#>  collate  C.UTF-8
#>  ctype    C.UTF-8
#>  tz       UTC
#>  date     2022-04-01
#>  pandoc   2.14.2 @ /usr/bin/ (via rmarkdown)
```

Along with these packages:


```{=html}
<div id="htmlwidget-a735a305b5a3f0f66c76" style="width:100%;height:auto;" class="datatables html-widget"></div>
<script type="application/json" data-for="htmlwidget-a735a305b5a3f0f66c76">{"x":{"filter":"top","vertical":false,"filterHTML":"<tr>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n  <\/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n  <\/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n  <\/td>\n  <td data-type=\"character\" style=\"vertical-align: top;\">\n    <div class=\"form-group has-feedback\" style=\"margin-bottom: auto;\">\n      <input type=\"search\" placeholder=\"All\" class=\"form-control\" style=\"width: 100%;\"/>\n      <span class=\"glyphicon glyphicon-remove-circle form-control-feedback\"><\/span>\n    <\/div>\n  <\/td>\n<\/tr>","data":[["askpass","assertthat","backports","base64enc","bit","bit64","blob","bookdown","brew","brio","broom","bslib","cachem","callr","cellranger","cli","clipr","colorspace","commonmark","cpp11","crayon","credentials","crosstalk","curl","data.table","DBI","dbplyr","desc","devtools","dichromat","diffobj","digest","dplyr","DT","dtplyr","ellipsis","evaluate","fansi","farver","fastmap","forcats","fs","gapminder","gargle","gender","genderdata","generics","geonames","gert","ggplot2","gh","gitcreds","glue","googledrive","googlesheets4","gridExtra","gt","gtable","haven","highr","hms","htmltools","htmlwidgets","httr","ids","ini","isoband","jquerylib","jsonlite","knitr","labeling","later","lattice","lazyeval","lifecycle","lubridate","magrittr","MASS","Matrix","memoise","mgcv","mime","modelr","munsell","nlme","openssl","pillar","pkgbuild","pkgconfig","pkgload","praise","prettyunits","processx","progress","promises","ps","purrr","R6","rappdirs","rcmdcheck","RColorBrewer","Rcpp","readr","readxl","rebird","rematch","rematch2","remotes","reprex","rlang","rmarkdown","roxygen2","rplos","rprojroot","rstudioapi","rversions","rvest","sass","scales","selectr","sessioninfo","stringi","stringr","sys","testthat","tibble","tidyr","tidyselect","tidyverse","tinytex","tzdb","usethis","utf8","uuid","vctrs","viridis","viridisLite","vroom","waldo","whisker","withr","xfun","xml2","xopen","yaml","zip"],[null,"0.2.1","1.4.1",null,null,null,null,"0.24",null,"1.1.3","0.7.12","0.3.1","1.0.6","3.7.0","1.1.0","3.2.0",null,"2.0-3",null,null,"1.5.0",null,null,null,null,"1.1.2","2.1.1","1.4.1","2.4.3",null,null,"0.6.29","1.0.8",null,null,"0.3.2","0.15","1.0.2",null,"1.1.0","0.5.1","1.5.2",null,"1.2.0",null,null,"0.1.2",null,null,"3.3.5",null,null,"1.6.2","2.0.0","1.0.0",null,null,"0.3.0","2.4.3",null,"1.1.1","0.5.2","1.5.4","1.4.2",null,null,null,"0.1.4","1.8.0","1.37",null,null,null,null,"1.0.1","1.8.0","2.0.2",null,null,"2.0.1",null,null,"0.1.8","0.5.0",null,null,"1.7.0","1.3.1","2.0.3","1.2.4",null,"1.1.1","3.5.2",null,null,"1.6.0","0.3.4","2.5.1",null,null,"1.1-2","1.0.8.2","2.1.2","1.3.1",null,null,null,"2.4.2","2.0.1","1.0.2","2.13",null,null,"2.0.2","0.13",null,"1.0.2","0.4.0","1.1.1",null,"1.2.2","1.7.6","1.4.0",null,"3.1.2","3.1.6","1.2.0","1.1.2","1.3.1",null,"0.2.0","2.1.5","1.2.2",null,"0.3.8",null,"0.4.0",null,null,null,"2.5.0","0.30","1.3.3",null,"2.3.5",null],["2019-01-13","2019-03-21","2021-12-13","2015-07-28","2020-08-04","2020-08-30","2021-07-23","2021-09-02","2022-02-04","2021-11-30","2022-01-28","2021-10-06","2021-08-19","2021-04-20","2016-07-27","2022-02-14","2022-02-22","2022-02-21","2022-03-09","2021-11-30","2022-02-14","2021-11-29","2021-11-04","2021-06-23","2021-09-27","2021-12-20","2021-04-06","2022-03-06","2021-11-30",null,"2021-10-05","2021-12-01","2022-02-08","2022-02-26","2022-01-19","2021-04-29","2022-02-18","2022-01-14","2021-02-28","2021-01-25","2021-01-27","2021-12-08",null,"2021-07-02",null,null,"2022-01-31",null,"2022-01-03","2021-06-25","2021-04-30","2020-12-04","2022-02-24","2021-07-08","2021-07-21","2017-09-09",null,"2019-03-25","2021-08-04","2021-04-16","2021-09-26","2021-08-25","2021-09-08","2020-07-20","2017-05-31","2018-05-20","2021-07-13","2021-04-26","2022-02-22","2021-12-16","2020-10-20","2021-08-18","2021-09-22","2019-03-15","2021-09-24","2021-10-07","2022-01-26","2022-01-16","2021-12-08","2021-11-26","2022-02-24","2021-09-28","2020-05-19","2018-06-12","2022-01-16","2022-03-02","2022-02-01","2021-12-20","2019-09-22","2021-11-30","2015-08-11","2020-01-24","2021-04-30","2019-05-16","2021-02-11","2021-02-28","2020-04-17","2021-08-19","2021-01-31","2021-09-27","2014-12-07","2022-03-11","2022-01-30","2019-03-13",null,"2016-04-21","2020-05-01","2021-11-30","2021-08-05","2022-03-04","2022-03-10","2021-09-08",null,"2020-11-15","2020-11-12","2021-05-31","2021-10-16","2021-05-12","2020-05-11","2019-11-20","2021-12-06","2021-11-29","2019-02-10","2020-07-23","2022-01-20","2021-11-07","2022-02-01","2022-02-21","2021-04-15","2022-02-16","2021-10-27","2021-12-09","2021-07-24","2021-11-01","2021-04-29","2021-10-13","2021-04-13","2021-11-30","2021-09-14","2019-08-28","2022-03-03","2022-03-02","2021-11-30","2018-09-17","2022-02-21","2021-05-31"],["CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)",null,"CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)",null,"CRAN (R 4.1.3)",null,null,"CRAN (R 4.1.3)",null,"CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)",null,"CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)",null,"CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)",null,"CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)","CRAN (R 4.1.3)"]],"container":"<table class=\"cell-border stripe\">\n  <thead>\n    <tr>\n      <th>package<\/th>\n      <th>loadedversion<\/th>\n      <th>date<\/th>\n      <th>source<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"pageLength":146,"autoWidth":true,"bInfo":false,"paging":false,"columnDefs":[],"order":[],"orderClasses":false,"orderCellsTop":true,"lengthMenu":[10,25,50,100,146]}},"evals":[],"jsHooks":[]}</script>
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
