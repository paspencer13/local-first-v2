library(tidyverse)
penguins <-read.csv("penguins.csv")
penguins |> 
  count(island)
penguins |> 
  summarize(mean_bill_length = mean(bill_length_mm, na.rm = TRUE))