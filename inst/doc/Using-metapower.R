## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(metapower)

## -----------------------------------------------------------------------------
my_power <- mpower(effect_size = .25, sample_size = 20, k = 30, es_type = "d")

## -----------------------------------------------------------------------------
print(my_power)

## ----fig.height=7, fig.width=7, dpi = 300,out.width = "100%", out.height = "100%"----
power_plot(my_power)

## -----------------------------------------------------------------------------
str(my_power$df)

## -----------------------------------------------------------------------------
(homogen_power <- mpower(effect_size = .25, sample_size = 20, k = 30, es_type = "d", sd = 3))

## ----fig.height=7, fig.width=7, dpi = 300,out.width = "100%", out.height = "100%"----
homogen_power_plot(homogen_power)

## -----------------------------------------------------------------------------
my_mod <- mod_power(n_groups = 2, 
                    effect_sizes = c(.2,.5), 
                    sample_size = 20,
                    k = 30,
                    es_type = "d")

## -----------------------------------------------------------------------------
print(my_mod)

