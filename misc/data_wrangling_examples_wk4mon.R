# Want to know the average income and median income based on the sex of the principal earner

fmli %>%
  group_by(SEX) %>%
  mutate(SEX = case_when(SEX == 1 ~ "Male",
                         SEX == 2 ~ "Female")) %>%
  summarize(mean_income = mean(FINCBTAX), median_income = median(FINCBTAX))

# Try different orders
# Try separating the summarize()
# New name or same name?

# Only focus on households where the principal earner is 40 or older
fmli %>%
  filter(AGE >= 40) %>%
  group_by(SEX) %>%
  mutate(SEX = case_when(SEX == 1 ~ "Male",
                         SEX == 2 ~ "Female")) %>%
  summarize(mean_income = mean(FINCBTAX), median_income = median(FINCBTAX))

# For urban and rural places what proportion of households have a female as the principal earner
fmli %>%
  count(BLS_URBN, SEX) %>%
  group_by(BLS_URBN) %>%
  mutate(prop = n/sum(n))
