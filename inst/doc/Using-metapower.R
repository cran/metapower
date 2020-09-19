## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(metapower)

## -----------------------------------------------------------------------------
my_power <- mpower(effect_size = .2, sample_size = 20, k = 10, es_type = "d")

## -----------------------------------------------------------------------------
print(my_power)

## ----fig.height=7, fig.width=7, dpi = 300,out.width = "100%", out.height = "100%"----
plot_mpower(my_power)

## -----------------------------------------------------------------------------
str(my_power$power_range)

## -----------------------------------------------------------------------------
(homogen_test_power <- homogen_power(effect_size = .25, sample_size = 20, k = 30, es_type = "d"))

## ----fig.height=7, fig.width=7, dpi = 300,out.width = "100%", out.height = "100%"----
plot_homogen_power(homogen_test_power)

## -----------------------------------------------------------------------------
my_mod <- subgroup_power(n_groups = 2, 
                    effect_sizes = c(.2,.5), 
                    sample_size = 20,
                    k = 30,
                    es_type = "d")

## -----------------------------------------------------------------------------
print(my_mod)

