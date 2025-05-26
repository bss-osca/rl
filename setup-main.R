#### When start course again ####

## Prepare
# - Copy previous course at Brightspace
# - Make a copy of the pref sheet https://docs.google.com/spreadsheets/d/14LOGGBGnriLFOAOxXPMsmjruxlMoN2Acl1Xf2FE5nnY/edit?usp=sharing (so can clean and use the current)
# - Delete the prefs (so the same link is valid) in sheet https://docs.google.com/spreadsheets/d/14LOGGBGnriLFOAOxXPMsmjruxlMoN2Acl1Xf2FE5nnY/edit?usp=sharing
# - Delete the old answers in the Google Form (under responses click ...)
# - Signin to datacamp using Econ email and create a new classroom "Tools for Analytics YYYY" at 
#   https://www.datacamp.com/universities#classroom-form. ONLY DO IT WHEN WANT IF (valid for half a year after)
#     - Under members create an invite link with domains post.au.dk, au.dk, relund.dk, econ.au.dk
#     - Copy the link and add it on line 11 in links.md
#     - Add assignments Introduction to Python, Data manipulation with pandas, Intermediate Python



## Update slides
# This is done without GitHub actions. Just Knit and push afterwards

remotes::install_github("mitchelloharawild/icons", force = T)
remotes::install_github("ROpenSci/bibtex")
renv::install()
