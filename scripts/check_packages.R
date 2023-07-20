## check_packages.R

#Run this script to check for packages that the other R scripts will use. If missing, try to install.
#code borrowed from here:
#http://www.vikram-baliga.com/blog/2015/7/19/a-hassle-free-way-to-verify-that-r-packages-are-installed-and-loaded

packages = c("here",
             "tidyverse", "janitor", "glue",
             "scales",
             "gt", "gtExtras")

#packages = c("here","tidyverse", "broom","janitor","glue",
#             "ggalt","scales","ggrepel","gganimate","gifski",
#             "psych","car","VGAM","nlme","nnet",
#             "maptools","sp","rgeos","rgdal",
#             "sandwich","lmtest","survey","mice",
#             "margins","logistf",
#             "gapminder",
#             "texreg", "pander", "kableExtra", "gt")

package.check <- lapply(packages, FUN = function(x) {
  if (!require(x, character.only = TRUE)) {
    install.packages(x, dependencies = TRUE)
    library(x, character.only = TRUE)
  }
})
