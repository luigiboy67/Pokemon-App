pokeset <- read.csv("Pokemon.csv")

kanto <- pokeset %>%
  filter(Generation == 1)

johto <- pokeset %>%
  filter(Generation == 2)

hoenn <- pokeset %>%
  filter(Generation == 3)

sinnoh <- pokeset %>%
  filter(Generation == 4)

unova <- pokeset %>%
  filter(Generation == 5)

kalos <- pokeset %>%
  filter(Generation == 6)

alola <- pokeset %>%
  filter(Generation == 7)

galar <- pokeset %>%
  filter(Generation == 8)

paldea <- pokeset %>% 
  filter(Generation == 9)
