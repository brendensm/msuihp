## code to prepare `msu_palettes` dataset goes here

library(palettes)

msu_palettes_discrete <- pal_palette(

  branding <- c("#18453B","#008934", "#7BBD00", "#008208", "#0B9A6D"),
  nice_cats <- c("steelblue", "tomato2", "#008934", "plum3", "#F9C846", "#3E2F5B"),
  likert <- c("steelblue", "#A7BED9", "grey90", "#FFB09D", "tomato2")

)

names(msu_palettes_discrete) <-  c("branding", "nice_cats", "likert")

plot(msu_palettes_discrete)

usethis::use_data(msu_palettes_discrete, overwrite = TRUE)

msu_palettes_sequential <- pal_palette(
  excellence = pal_ramp(pal_colour(c("#0B9A6D", "#C3FFEC")), n = 7),
  kelly = pal_ramp(pal_color(c("#008208", "#33FF41")), n = 7),
  lime = pal_ramp(pal_color(c("#7BBD00","#C6FF5C")), n = 7),
  refresh = pal_ramp(pal_color(c("#008934", "#1FFF75")), n = 7),
  spartan = pal_ramp(pal_color(c("#18453B", "#3AA68F")), n = 7),
)

plot(msu_palettes_sequential)

usethis::use_data(msu_palettes_sequential, overwrite = TRUE)


msu_palettes <- c(
  msu_palettes_sequential,
  msu_palettes_discrete
)

plot(msu_palettes)

usethis::use_data(msu_palettes, overwrite = TRUE)

