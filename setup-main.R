#### When start course again ####

## Prepare
# - Copy previous course at Brightspace
# - Delete the old answers in the Google Form https://forms.gle/6ambTd9RDuwZcvxw6 (under responses click ...)
# - Signin to datacamp using Econ email and create a new classroom "Tools for Analytics YYYY" at 
#   https://www.datacamp.com/universities#classroom-form. ONLY DO IT WHEN WANT IF (valid for half a year after)
#     - Under members create an invite link with domains post.au.dk, au.dk, relund.dk, econ.au.dk
#     - Copy the link and add it on line 11 in links.md
#     - Add assignments Introduction to Python, Data manipulation with pandas, Intermediate Python


## Setup project
# - Add groups in BS My Course > Groups > New Category (# of Groups – Self-Enrolment)
# - Add post:
# Dear students
# 
# For the projects, I need you to add yourself to a group on BS. In general, you may use the groups you already use at the study cafes. However, some may have been dissolved/changed. Given your group, each student in the group must go to My Course &gt; Groups and add their name to the group you chose.
# 
# I recommend that you are between 3 and 6 people in each group.
# 
# Note that your project solution will be used as a starting point at the exam. If you have not handed in a project, theoretical topics will be discussed instead at the exam. Hence, I highly recommend that you do the project!
#    
# Best Lars
#
# - Do Content > Project > Add existing > FeedbackFruits (delete old ones)
# - Import previous template
# - Add link to guinding solution under Given reviews > Feeedback criteria > Configure > (Edit instructions)

# Hints, solutions etc are added using callouts in quarto
# ::: {.callout-warning collapse="true" title="Solution"}
# It is possible to use 4 axis of symmetry to essentially fold the board down to a quarter of the size.
# :::
# 
# ::: {.callout-tip collapse="true" title="Hint"}
# This is an example of a callout with a title.
# :::
#
# In Colab use
<details>
   <summary>Solution</summary>
   This is a 2-bandit problem with actions of choosing coin 1 or 2.
</details>
#
# or #@title for code


remotes::install_github("mitchelloharawild/icons", force = T)
remotes::install_github("ROpenSci/bibtex")
renv::install()

# extract code
knitr::purl("book/09_mc.qmd")
