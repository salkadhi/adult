library(tidyverse)
adult <- read_csv("data/adult.csv")
adult20 <- head(x = adult, n = 20)
library(ggplot2)
library(ggthemes)
library(here)


# DATA ####

ggplot(adult) +
 aes(x = income,fill=gender) +
 geom_bar(pstat="count") +
 theme_economist_white()

ggplot(adult) +
  aes(x = race) +
  geom_bar() +
  coord_flip()+
  theme_economist_white()

ggplot(adult) +
  aes(x = gender) +
  geom_bar() +
  theme_economist_white()

# EDA ####

# Hours per week
ggplot(adult) +
 aes(x = `hours-per-week`, y = gender) +
 geom_boxplot() +
  theme_economist_white()


adult %>% filter(-c(ggplot(adult) +
 aes(x = `hours-per-week`, y = education) +
 geom_boxplot() +
  theme_economist_white()
library(dplyr)
library(ggplot2)

adult20 %>%
 filter(!(education %in% c("11th", "10th", "7th-8th"))) %>%
 ggplot() +
 aes(x = `hours-per-week`, y = education) +
 geom_boxplot(fill = "#112446") +
 theme_minimal()


# Capital and gender
ggplot(adult) +
 aes(x = gender, y = `capital-gain`) +
 geom_col(fill = "#112446") +
  theme_economist()

ggplot(adult) +
 aes(x = gender, y = `capital-loss`) +
 geom_col(fill = "#112446") +
 theme_minimal()


ggplot(adult) +
 aes(x = `educational-num`, y = gender) +
 geom_boxplot(fill = "#112446") +
 ggthemes::theme_economist()

library(ggplot2)





