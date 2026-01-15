
library(dplyr)

### T-TESTS: Compare AZ vs FL for each Peril ###

# Fire Damage
fire_data <- data %>% filter(Peril == "Fire")
t_fire <- t.test(Loss_Amount ~ State, data = fire_data)
t_fire

# Wind Damage
wind_data <- data %>% filter(Peril == "Wind")
t_wind <- t.test(Loss_Amount ~ State, data = wind_data)
t_wind

# Water Damage
water_data <- data %>% filter(Peril == "Water damage")
t_water <- t.test(Loss_Amount ~ State, data = water_data)
t_water

### ANOVA: Fire Losses by State ###
anova_model <- aov(Loss_Amount ~ State, data = fire_data)
anova_raw <- summary(anova_model)[[1]]
anova_raw
