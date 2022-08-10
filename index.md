--- 
title: "Reinforcement Learning for Business (RL)"
subtitle: "Course notes"
author: 
- Lars Relund Nielsen
knit: "bookdown::render_book"
site: bookdown::bookdown_site
url: 'https\://bss-osca.github.io/rl/'
github-repo: bss-osca/rl
cover-image: img/logo.png
documentclass: book
bibliography: [rl.bib, packages.bib]
biblio-style: apalike
link-citations: yes
description: "Course notes for 'Reinforcement Learning for Business'"
favicon: assets/favicon.ico
date: "2022-08-10"
editor_options: 
  chunk_output_type: console
---



# About the course notes {- #mod-intro}







This site contains course notes for the course "Reinforcement Learning for Business" held at [Aarhus BSS][BSS]. It consists of a set of learning modules. The course is an elective course mainly for the [Operations and Supply Chain Analytics][osca-programme] and [Business Intelligence][bi-programme] programme and intended to give you an introduction to Reinforcement Learning (RL). You can expect the site to be updated while the course runs. The date listed above is the last time the site was updated.


## Learning outcomes {-}

By the end of this module, you are expected to:

* Understand the prerequisites and the goals for the course.
* Have downloaded the textbook.
* Know how the course is organized.
* Installed R and RStudio.
* Annotated the online notes.

The learning outcomes relate to the [overall learning goals](#mod-lg-course) number 3, 5 and 6 of the course.

<!-- SOLO increasing: identify · memorise · name · do simple procedure · collect data · -->
<!-- enumerate · describe · interpret · formulate · list · paraphrase · combine · do -->
<!-- algorithms · compare · contrast · explain causes · analyse · relate · derive · -->
<!-- evaluate · apply · argue · theorise · generalise · hypothesise · solve · reflect -->


## Purpose of the course {-}

The purpose of this course is to give an introduction and knowledge about reinforcement learning (RL).

RL may be seen as

* An approach of modelling sequential decision making problems.
* An approach for learning good decision making under uncertainty from experience.
* Mathematical models for learning-based decision making.
* Trying to optimize decisions in a sequential decision model. That is, making a good sequence of decisions.
* Estimating and finding near optimal decisions of a stochastic process with sequential decision making. 
* A model where given a state of a system, the agent wants to take actions to maximize future reward. Often the agent does not know the underlying setting and, thus, is bound to learn from experience.

RL can also be seen as a way of modelling intuition. As humans, we often learn by trial and error. For instance, when playing a game, our strategy is based on the game rules and what we have experienced works based on previous plays. In a RL setting, the system has specific states, actions and reward structure, that is, the rules of the game, and it is up to the agent how to solve the game, i.e. find actions that maximize the reward. Typically, the agent starts with totally random trials and finishes with sophisticated tactics and superhuman skills. By leveraging the power of search and many trials, RL is an effective way to find good actions. 

A classic RL example is the bandit problem: You are in a casino and want to choose one of many slot machines (one-armed bandits) in each round. However, you do not know the distribution of the payouts of the machines. In the beginning, you will probably just try out machines (exploration) and then, after some learning, you will prefer the best ones (exploitation). Now the problem arises that if you use a slot machine frequently, you will not be able to gain information about the others and may not even find the best machine (exploration-exploitation dilemma). RL focuses on finding a balance between exploration of uncharted territory and exploitation of current knowledge.

The course starts by giving a general overview over RL and introducing bandit problems. Next, the mathematical framework of Markov decision processes (MDPs) is given as a classical formalization of sequential decision making. In this case, actions influence not just immediate rewards, but also subsequent situations, or states, and therefore also future rewards. An MDP assumes that the dynamics of the underlying process and the reward structure are known explicitly by the decision maker. In the last part of the course, we go beyond the case of decision making in known environments and study RL methods for stochastic control. 


## Learning goals of the course {-}

After having participated in the course, you must, in addition to achieving general academic skills, demonstrate: 

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

## Reinforcement learning textbook {-}

The course uses the free textbook *Reinforcement Learning: An Introduction* by @Sutton18. The book is essential reading for anyone wishing to learn the theory and practice of modern Reinforcement learning. Read the weekly readings before the lecture to understand the material better, and perform better in the course.

Sutton and Barto's book is the most cited publication in RL research, and is responsible for making RL accessible to people around the world. The new edition, released in 2018, offers improved notation and explanations, additional algorithms, advanced topics, and many new examples; and it's totally free. Just follow the citation link to download it. 


## Course organization {-}

Each week considers a learning module. A learning module is related to a chapter in the textbook. The learning path in a typical week are 

- Before lectures: Read the chapter in the textbook and consider the extra module material.
- Lectures (at campus).
- After lectures: Module Exercises (in groups).

Lectures will not cover all the curriculum but focus on the main parts. In some weeks tutorials are given and we focus on a specific RL problem.

This module gives a short introduction to the course. Next, the site consists of different parts each containing teaching modules about specific topics:

   * [Part I](#mod-rl-intro) gives you a general introduction to RL and the bandit problem. 

   * [Part II](#mod-bandit) consider RL sequential decision problems where the state and state and action spaces are small enough so values can be represented as arrays, or tables. We start by considering bandit problems (Module \@ref(mod-bandit)) a RL problem in which there is only a single state. Next, Markov decision processes (the full model known) are considered as a general modelling framework (Module \@ref(mod-mdp-1)) and the concept of policies and value functions are discussed (Module \@ref(mod-mdp-2)). Model-based algorithms for finding the optimal policy (dynamic programming) are given in Module  \@ref(mod-dp). The next modules consider model-free methods for finding the optimal policy, i.e. methods that do not require full knowledge of the transition probabilities and rewards of the process. Monte Carlo sampling methods are presented in Module \@ref(mod-mc) and ...
   

<!-- The next three chapters describe three fundamental classes of methods for solving finite -->
<!-- Markov decision problems: dynamic programming, Monte Carlo methods, and temporaldi↵ -->
<!-- erence learning. Each class of methods has its strengths and weaknesses. Dynamic -->
<!-- programming methods are well developed mathematically, but require a complete and -->
<!-- accurate model of the environment. Monte Carlo methods don’t require a model and are -->
<!-- conceptually simple, but are not well suited for step-by-step incremental computation. -->
<!-- Finally, temporal-di↵erence methods require no model and are fully incremental, but are -->
<!-- more complex to analyze. The methods also di↵er in several ways with respect to their -->
<!-- efficiency and speed of convergence. -->
<!-- The remaining two chapters describe how these three classes of methods can be -->
<!-- combined to obtain the best features of each of them. In one chapter we describe how -->
<!-- the strengths of Monte Carlo methods can be combined with the strengths of temporaldi↵ -->
<!-- erence methods via multi-step bootstrapping methods. In the final chapter of this part -->
<!-- of the book we show how temporal-di↵erence learning methods can be combined with -->
<!-- model learning and planning methods (such as dynamic programming) for a complete -->
<!-- and unified solution to the tabular reinforcement learning problem. -->
   

   <!-- * [Part III](#mod-vba-random-numbers) contains extra modules useful when coding in VBA.  -->
   <!-- * [Part IV](#mod-vba-project) presents the mandatory VBA project. -->
   <!-- * [Part V](#mod-r-install) focuses on helping you install the needed programs on your computer (Module \@ref(mod-r-install)) and gives you a short introduction to R (Module \@ref(mod-r-workflow)). -->
   <!-- * [Part VI](#mod-r-loops-cond) gives you an overview over programming in R including loops and conditionals (Module \@ref(mod-r-loops-cond)) and functions (Module \@ref(mod-r-functions)). -->

   <!-- * [Part VII](#mod-r-tidyverse-intro) the focus is on import/export, tidy and transformation of data. Module \@ref(mod-r-tidyverse-intro) first gives you an introduction to the [tidyverse][tidyverse-main-page] packages and introduces you to literal programming using R Markdown. Next, Module \@ref(mod-r-io) shows you how to export and import data. Finally, Module \@ref(mod-r-transform) focuses on transformation of data. -->
   <!-- * [Part VIII](#mod-r-plot) considers visualization of data in R (Module \@ref(mod-r-plot)). -->
   <!-- * [Part IX](#mod-project) presents the mandatory R project. -->
   <!-- * [Part X](#mod-r-maps) contains extra modules useful when coding in R.  -->

The appendix contains different modules that may be helpful for you including hints on [how to work in groups](#groups), [how to get help](#help) if you are stuck and [how to annotate](#annotate) the course notes.
   



## Programming software {-}

We use [R] as programming software and it is assumed that you are familiar with using R. [R] is a programming language and free software environment. R can be run from a terminal but in general you use an IDE (integrated development environment) [RStudio] for running R and to saving your work. R and RStudio can either be run from your laptop or using [RStudio Cloud][rstudio-cloud] which run R in the cloud using your browser. 

It is assumed as a prerequisite that you know how to use R. If you need a brush-up on your R programming skills then have a look at Module \@ref(mod-r-setup)  in the appendix. 


## Acknowledgements and license {- #ack} 

Materials in this book are taken from various places:

* The notes are based on @Sutton18.
* The bookdown skeleton and some notes are based on the [Tools for Analytics][tfa-course] course.
* Some notes are adopted from [Scott Jeen](https://github.com/enjeeneer/sutton_and_barto), 
[Bryn Elesedy](https://github.com/brynhayder/reinforcement_learning_an_introduction) and [Peter Goldsborough](https://github.com/peter-can-write/david-silver-rl-notes).
* Some slides are inspired by the [RL specialization](https://www.coursera.org/specializations/reinforcement-learning) at Coursera.
* Some exercises are taken from @Sutton18 and modified slightly. 

<!-- * Some parts in Module \@ref(mod-intro) are inspired by [Chapter 1](https://r4ds.had.co.nz/introduction.html) in @r4ds. -->
<!-- * The VBA modules are inspired by the book @vba-book. This also holds for some of the exercises.  -->
<!-- * Module \@ref(mod-r-install) is inspired by [Chapter 1](https://stat545.com/block000_r-rstudio-install.html) in @stat545. -->
<!-- * Module \@ref(mod-r-workflow) is using some text and images from [Chapter 1](https://moderndive.netlify.app/1-getting-started.html) in @moderndrive and [Chapter 2](https://stat545.com/block002_hello-r-workspace-wd-project.html) in @stat545. A few exercises are inspired by [Chapter 2](https://rafalab.github.io/dsbook/r-basics.html) in @dsbook. -->
<!-- * Notes about git and GitHub in the appendix are based on @hgit. -->
<!-- * Exercise \@ref(ex-gapminder1) is a revision of Chapters 6-7 in @stat545. -->
<!-- * Exercise \@ref(ex-babynames1) is a revision of [Session 3](https://github.com/rstudio-education/welcome-to-the-tidyverse/blob/master/03-Transform/03-Transform-Exercises.Rmd) in the [Welcome to the tidyverse][course-welcome-to-the-tidyverse] course. -->
<!-- * Exercise \@ref(ex-gapminder2) is a revision of [Chapter 9](https://rafalab.github.io/dsbook/gapminder.html) in @dsbook. -->
<!-- * Exercise \@ref(ex-covid19) is inspired by the COVID19 application [exercise](https://raw.githubusercontent.com/rstudio-education/datascience-box/master/course-materials/application-exercises/ae-01b-covid/covid.Rmd) at the [data science in a box](https://github.com/rstudio-education/datascience-box) course. -->
<!-- * Exercise \@ref(ex-lego) is inspired by the Lego homework [exercise](https://github.com/rstudio-education/datascience-box/blob/master/course-materials/hw-instructions/hw-04/hw-04-legos-instructors.Rmd) at the [data science in a box](https://github.com/rstudio-education/datascience-box) course. -->
<!-- * Exercise \@ref(ex-fish) is inspired by the Fisheries application [exercise](https://github.com/rstudio-education/datascience-box/blob/master/course-materials/application-exercises/ae-05-fisheries-datajoins/fisheries.Rmd) at the [data science in a box](https://github.com/rstudio-education/datascience-box) course. -->


I would like to thank all for their inspiration. 

<!-- Also thanks to Solveig for proofreading the draft. -->

This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/).



## Exercises {#sec-intro-ex -}

Below you will find a set of exercises. Always have a look at the exercises before you meet in your study group and try to solve them yourself. Are you stuck, see the [help page](#help). Sometimes solutions can be seen by pressing the button besides a question. Beware, you will not learn by giving up too early. Put some effort into finding a solution!

### Exercise - How to annotate {#sec-intro-ex-annotate -}

The online course notes can be annotated using [hypothes.is]. You can create both private and public annotations. Collaborative annotation helps people connect to each other and what they’re reading, even when they’re keeping their distance. You may also use public notes to help indicate spell errors, unclear content etc. in the notes. 

<!-- <img src="img/annotate.png" align="right" alt="Hypothes.is icons" title="Hypothes.is icons" style = "float: right; margin: 0 0 0 15px;"> -->

   1) Sign-up at [hypothes.is]. If you are using Chrome you may also install the [Chrome extension](https://chrome.google.com/webstore/detail/hypothesis-web-pdf-annota/bjfhmglciegochdpefhhlphglcehbmek).
   2) Go back to this page and login in the upper right corner (there should be some icons e.g. `<`).
   3) Select some text and try to annotate it using both a private and public annotation (you may delete it again afterwards). 
   4) Go to the [slides for this module](https://bss-osca.github.io/rl/slides/00_intro-slides.html#6) and try to annotate the page with a private comment. 


### Exercise - Templates {#sec-intro-ex-templates -}

A template in RMarkdown of the course notes and exercises are available at [GitHub](gh-rl-student). You can download the repository and keep your own notes during the course by having an R project with it.

   1) Open R studio and do: **File > New Project ... > Version Control > Git**. Add `https://github.com/bss-osca/rl-student` as repository url and create the project.
   2) Run `renv::restore()` from the R command line to install needed packages (this may take some time). If you experience errors then try to install the packages one at a time using `install.packages("pkg name")`.
   3) Open e.g. the file `01_rl-intro.Rmd` and try to knit it using the Knit button in the upper left corner. A html file with the output will be made. You should be able to add you own notes and solve the exercises using the Rmd file for each module. 



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
[sutton-notation]: https://bss-osca.github.io/rl/sutton-notation.pdf

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
