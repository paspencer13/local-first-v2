library(tidyverse)
penguins <-read.csv("penguins.csv")
penguins |> 
  count(island)
penguins |> 
  summarize(mean_bill_length = mean(bill_length_mm, na.rm = TRUE)) 
penguins |> 
  drop_na(flipper_length_mm, body_mass_g) |> 
  ggplot(data = penguins,
         mapping = aes(x = flipper_length_mm,
                       y = body_mass_g))+
  geom_point()