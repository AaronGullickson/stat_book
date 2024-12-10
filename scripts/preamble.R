# preamble.R
# A place to put any preamble code that I want in every chapter

# create standard objects for model summary stats and p-value thresholds
star_standard <- c('*' = .05, '**' = .01, '***' = .001)
gof_standard <- list(list("raw" = "nobs", "clean" = "N", "fmt" = 0),
                     list("raw" = "r.squared", "clean" = "R-squared", "fmt" = 3))

