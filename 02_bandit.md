---
output: html_document
editor_options: 
  chunk_output_type: console
---






# (PART) Tabular methods {-}


# Multi-armed bandits {#mod-bandit}

This module consider the k-armed bandit problem which is a sequential decision problem with one state and $k$ actions. The problem is used to illustrate different learning methods used in RL. 

## Learning outcomes 

By the end of this module, you are expected to:

<!-- Define reward -->
<!-- Understand the temporal nature of the bandit problem -->
<!-- Define k-armed bandit -->
<!-- Define action-values -->
<!-- Define action-value estimation methods -->
<!-- Define exploration and exploitation -->
<!-- Select actions greedily using an action-value function -->
<!-- Define online learning -->
<!-- Understand a simple online sample-average action-value estimation method -->
<!-- Define the general online update equation -->
<!-- Understand why we might use a constant stepsize in the case of non-stationarity -->
<!-- Define epsilon-greedy -->
<!-- Compare the short-term benefits of exploitation and the long-term benefits of exploration -->
<!-- Understand optimistic initial values -->
<!-- Describe the benefits of optimistic initial values for early exploration -->
<!-- Explain the criticisms of optimistic initial values -->
<!-- Describe the upper confidence bound action selection method -->
<!-- Define optimism in the face of uncertainty -->


<!-- * Describe what VBA is. -->
<!-- * Setup Excel for VBA. -->
<!-- * Know how the macro recorder works. -->
<!-- * Make your first program. -->
<!-- * Have an overview over what VBA can do. -->
<!-- * Recorded you first macro using the macro recorder -->






<!-- The learning outcomes relate to the [overall learning goals](#mod-lg-course) number 2 and 4 of the course. -->

<!-- SOLO increasing: identify · memorise · name · do simple procedure · collect data · -->
<!-- enumerate · describe · interpret · formulate · list · paraphrase · combine · do -->
<!-- algorithms · compare · contrast · explain causes · analyse · relate · derive · -->
<!-- evaluate · apply · argue · theorise · generalise · hypothesise · solve · reflect -->


## Textbook readings

For this week, you will need to read Chapter 2 in @Sutton18. Read it before continuing this module.


## The k-armed bandit problem

Multi-armed bandits attempt to find the best option among a collection of alternatives by learning through trial and error. The name derives from “one-armed bandit,” a slang term for a slot machine — which is a perfect analogy for how these algorithms work. 

<div class="figure" style="text-align: center">
<img src="img/bandit.png" alt="A 4-armed bandit." width="100%" />
<p class="caption">(\#fig:bandit)A 4-armed bandit.</p>
</div>

Imagine you are facing a wall with $k$ slot machines (see Figure \@ref(fig:bandit)), and each one pays out at a different rate. A natural way to figure out how to make the most money (rewards) would be to try each at random for a while (exploration), and start playing the higher paying ones once you have gained some experience (exploitation). That is, from an agent/environment point of view the agent considers a single state at time $t$ and have to choose among $k$ actions given the environment representing the $k$ bandits. Only the rewards from the $k$ bandits are unknown, but the agent observe samples of the reward of an action and can use this to estimate the expected reward of that action. The objective is to find an optimal policy that maximize the total expected reward. Note since the process only have a single state, this is the same as finding an optimal policy $\pi^*(s) = \pi^* = a^*$ that chooses the action with the highest expected reward. Due to uncertainty, there is an exploration vs exploitation dilemma. The agent have one action that seems to be most valuable at a time point, but it is highly likely, at least initially, that there are actions yet to explore that are more valuable.

<!-- For finding the optimal action a learning strategy that balance the exploration vs. exploitation trade-off. -->

<!-- To summarize: -->

<!-- * The agent are faced repeatedly with a choice of $k$ actions. -->
<!-- * After each choice, you receive a reward from a stationary probability distribution. -->
<!-- * Objective is to maximise total reward over some time period, say 100 time steps. -->

<!-- * Each action has an expected or mean reward based on its probability distribution. We shall call thjs the \textit{value} of the action. We do not know these values with certainty. -->
<!-- * Because of this uncertainty, there is always an exploration vs exploitation problem. We always have one action that we deem to be most valuable at any instant, but it is highly likely, at least initially, that there are actions we are yet to explore that are more valuable. -->

Multi-armed bandits can  be used in e.g. [digital advertising](https://research.facebook.com/blog/2021/4/auto-placement-of-ad-campaigns-using-multi-armed-bandits/). Suppose you are an advertiser seeking to optimize which ads ($k$ to choose among) to show visitors on a particular website. For each visitor, you can choose one out of a collection of ads, and your goal is to maximize the number of clicks over time. 

<div class="figure" style="text-align: center">
<img src="img/bandit-choose.png" alt="Which ad to choose?" width="100%" />
<p class="caption">(\#fig:bandit-choose)Which ad to choose?</p>
</div>

It is reasonable to assume that each of these ads will have different effects, and some will be more engaging than others. That is, each ad has some theoretical — but unknown — click-through-rate (CTR) that is assumed to not change over time. How do we go about solving which ad we should choose (see Figure \@ref(fig:bandit-choose))?


## Estimating the value of an action

How can the value of an action be estimated, i.e. the expected reward of an action $q_*(a) = \mathbb{E}[R_t | A_t = a]$. Assume that at time $t$ action $a$ has been chosen $N_t(a)$ times. Then the estimated action value is
\begin{equation} 
	Q_t(a) = \frac{R_1+R_2+\cdots+R_{N_t(a)}}{N_t(a)},
\end{equation}
Storing $Q_t(a)$ this way is cumbersome since memory and computation requirements grow over time. Instead an incremental solution is better. If we assume that $N_t(a) = n-1$ and set $Q_t(a) = Q_n$ then $Q_{n+1}$ becomes:
\begin{align}
  Q_{n+1} &= \frac{1}{n}\sum_{i=1}^{n}R_i \nonumber \\
		    &= \frac{1}{n}\left( R_{n} + \sum_{i=1}^{n-1} R_i \right) \nonumber \\
		    &= \frac{1}{n}\left( R_{n} + (n-1)\frac{1}{n-1}\sum_{i=1}^{n-1} R_i \right) \nonumber \\
		    &= \frac{1}{n}\left( R_{n} + (n-1)Q_n \right) \nonumber \\
	       &= Q_n + \frac{1}{n} \left[R_n - Q_n\right].
\end{align}
That os, we can update the estimate of the value of $a$ using the previous estimate, the observed reward and how many times the action has occurred ($n$). 

A greedy approach for selecting the next action is
\begin{equation}
A_t =\arg \max_a Q_t(a).
\end{equation}
Here $\arg\max_a$ means the value of $a$ for which $Q_t(a)$ is maximised. A pure greedy approach do not explore other actions. Instead an $\varepsilon$-greedy ppproach is used in which with probability $\varepsilon$ we take a random draw from all of the actions (choosing each action with equal probability) and hereby providing some exploration.

<!-- \begin{itemize} -->
<!-- 	\item Simplest action selection rule is to select the action with the highest estimated value. -->
<!-- 	\item \(\epsilon\)-greedy methods are where the agent selects the greedy option most of the time, and selects a random action with probability \(\epsilon\). -->
<!-- 	\item Three algorithms are tried: one with \(e\)=0 (pure greedy), one with \(e\)=0.01 and another with \(e\)=0.1 -->
<!-- 	\item Greedy method gets stuck performing sub-optimal actions. -->
<!-- 	\item \(e\)=0.1 explores more and usually finds the optimal action earlier, but never selects it more that 91\% of the time. -->
<!-- 	\item \(e\)=0.01 method improves more slowly, but eventually performs better than the e=0.1 method on both performance measures. -->
<!-- 	\item It is possible to reduce \(e\) over time to try to get the best of both high and low values. -->
<!-- \end{itemize} -->

<!-- Note this is the general formula  -->

<!-- \begin{equation} -->
<!-- NewEstimate \leftarrow OldEstimate + StepSize \left[Target - OldEstimate \right] -->
<!-- \end{equation} -->


Let us try to implement the algorithm using an R6 agent and environment class. First we define the agent that do actions based on an $\epsilon$-greedy strategy, stores the estimated $Q$ values and the number of times an action has been chosen:



Next, the environment generating rewards. The true mean reward $q_*(a)$ of an action were selected according to a normal (Gaussian) distribution with mean 0 and variance 1. The observed reward was then generated using a normal distribution with mean $q_*(a)$ and variance 1:



To test the RL algorithm we use a function returning two plots that compare the performance:



We test the performance using 2000 runs over 1000 time steps.

<img src="02_bandit_files/figure-html/unnamed-chunk-6-1.png" width="672" style="display: block; margin: auto;" /><img src="02_bandit_files/figure-html/unnamed-chunk-6-2.png" width="672" style="display: block; margin: auto;" />




## Incremential value estimation



## The role of the step-size



## Optimistic initial values












## Exercises {#sec-bandit-ex}

Below you will find a set of exercises. Always have a look at the exercises before you meet in your study group and try to solve them yourself. Are you stuck, see the [help page](#help). Some of the solutions to each exercise can be seen by pressing the button at each question. Beware, you will not learn by giving up too early. Put some effort into finding a solution!

### Exercise - Self-Play 


<div class="modal fade bs-example-modal-lg" id="c4ZGLrADqBCDcUASLG5T" tabindex="-1" role="dialog" aria-labelledby="c4ZGLrADqBCDcUASLG5T-title"><div class="modal-dialog modal-lg" role="document"><div class="modal-content"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button><h4 class="modal-title" id="c4ZGLrADqBCDcUASLG5T-title">Solution</h4></div><div class="modal-body">

<p>If the exploration parameter is non-zero, the algorithm will continue to adapt until it reaches an equilibrium (either fixed or cyclical).</p>

</div><div class="modal-footer"><button class="btn btn-default" data-dismiss="modal">Close</button></div></div></div></div><button class="btn btn-default btn-xs" style="float:right" data-toggle="modal" data-target="#c4ZGLrADqBCDcUASLG5T">Solution</button>

Consider Tic-Tac-Toe and assume that instead of an RL player against a random opponent, the reinforcement learning algorithm described above
played against itself. What do you think would happen in this case? Would it learn a different way of playing?







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
