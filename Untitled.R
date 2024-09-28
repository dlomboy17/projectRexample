#import required libraries
  library(tidyverse)
  library(abdwr3edata)

#print spahn data.frame -- first three rows and first 10 columns
spahn |>
  slice(1:3) |>
  select(1:10)

#print spahn data.frame -- selected columns and first 10 rows
spahn |>
  slice(1:10) |>
  select(Age, W, L, ERA)

spahn |>
  summarize(
    LO = min(ERA),
    QL = quantile(ERA, .25), 
    QU = quantile(ERA, .75), 
    M = median(ERA),
    HI = max(ERA)
  )

spahn |> 
  filter(ERA == min(ERA)) |>
  select(Age)
