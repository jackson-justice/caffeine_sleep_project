# IMPORTING & READING DATA ##################################

library(tidyverse)

responses <- read_csv("data/Sleep_Caffeine_Survey - Responses.csv")


# 1. Does caffeine use relate to how much sleep adults get? ##################

t.test(sleep_hours ~ caffeine_daily, data = responses)
ggplot(responses, aes(x = caffeine_daily, 
                y = sleep_hours, 
                fill = caffeine_daily)) +
  geom_boxplot() +
  labs(x = "Do you drink caffeine daily?", 
       y = "Sleep Hours",
       title = "Sleep Hours by Daily Caffeine Use") +
  theme_minimal() +
  theme(legend.position = "none")


# 2. Is caffeine associated with daily energy levels? ########################

t.test(energy_level ~ caffeine_daily, data = responses)
ggplot(responses, aes(x = caffeine_daily, 
                y = energy_level, 
                fill = caffeine_daily)) +
  geom_boxplot() +
  labs(x = "Do you drink caffeine daily?", 
       y = "Energy Level (1–10)",
       title = "Energy Levels by Daily Caffeine Use") +
  theme_minimal() +
  theme(legend.position = "none")
