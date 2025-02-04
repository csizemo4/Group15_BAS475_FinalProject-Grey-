library(fpp3)
library(feasts)
library(lubridate)

Credits <- read.csv("credit.csv")

Credits %>% 
  mutate(Month = c(1:492)) %>% 
  as_tsibble(index = Month) -> Empire_Credits


Empire_Credits %>% 
  autoplot(credit_in_millions)




