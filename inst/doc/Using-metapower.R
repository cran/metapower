## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(metapower)

## -----------------------------------------------------------------------------
my_power <- mpower(effect_size = .2, study_size = 20, k = 10, i2 = .50, es_type = "d")

## -----------------------------------------------------------------------------
print(my_power)

## ----fig.height=7, fig.width=7, dpi = 300,out.width = "100%", out.height = "100%"----
plot_mpower(my_power)

## -----------------------------------------------------------------------------
str(my_power$power_range)

## -----------------------------------------------------------------------------
(my_homogen_power <- homogen_power(effect_size = .25, study_size = 20, k = 30,i2 = .50, es_type = "d"))

## ----fig.height=7, fig.width=7, dpi = 300,out.width = "100%", out.height = "100%"----
plot_homogen_power(my_homogen_power)

## -----------------------------------------------------------------------------
my_subgroup_power <- subgroup_power(n_groups = 2, 
                    effect_sizes = c(.2,.5), 
                    study_size = 20,
                    k = 30,
                    i2 = .5,
                    es_type = "d")

## ----fig.height=7, fig.width=7, dpi = 300,out.width = "100%", out.height = "100%"----
print(my_subgroup_power)
plot_subgroup_power(my_subgroup_power)

