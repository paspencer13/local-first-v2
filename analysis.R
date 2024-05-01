library(tidyverse)
penguins <-read.csv("penguins.csv")
penguins |> 
  count(island)
