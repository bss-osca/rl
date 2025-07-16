#### When start course again ####

## Prepare
# - Copy previous course at Brightspace
# - Delete the old answers in the Google Form https://forms.gle/6ambTd9RDuwZcvxw6 (under responses click ...)
# - Signin to datacamp using Econ email and create a new classroom "Tools for Analytics YYYY" at 
#   https://www.datacamp.com/universities#classroom-form. ONLY DO IT WHEN WANT IF (valid for half a year after)
#     - Under members create an invite link with domains post.au.dk, au.dk, relund.dk, econ.au.dk
#     - Copy the link and add it on line 11 in links.md
#     - Add assignments Introduction to Python, Data manipulation with pandas, Intermediate Python

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
# <details>
#    <summary>Solution</summary>
#    This is a 2-bandit problem with actions of choosing coin 1 or 2.
# </details>
#
# or #@title for code


remotes::install_github("mitchelloharawild/icons", force = T)
remotes::install_github("ROpenSci/bibtex")
renv::install()

# extract code
knitr::purl("book/03_bandit.qmd")
