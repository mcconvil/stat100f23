# Courses from Week 3 Mon Lecture
july_2019 <- read_csv("data/july_2019.csv")


## Question: How to change the violin plot so that the area is
## proportional to the number of observations?
## Answer: scale = "count"

# Here's the default
ggplot(data = july_2019, 
       mapping = aes(x = Occasion, 
                     y = Total,
                     fill = Occasion)) +
  geom_violin(scale = "area") +
  guides(fill = "none")

# Here's one that is proportional to the number of obs
# Note: We have the same number of obs for both occasions so the plot doesn't change!
ggplot(data = july_2019, 
       mapping = aes(x = Occasion, 
                     y = Total,
                     fill = Occasion)) +
  geom_violin(scale = "count") +
  guides(fill = "none")

# Let's switch to penguins
# Notice the Chinstrap violin is the smallest because there are less of this 
# species in the sample
library(palmerpenguins)
ggplot(data = penguins, 
       mapping = aes(x = species, 
                     y = flipper_length_mm,
                     fill = species)) +
  geom_violin(scale = "count") +
  guides(fill = "none")


## Question: What controls the smoothness of the violin plot?
## Answer: It is the adjust argument.

# Here's the default
ggplot(data = july_2019, 
       mapping = aes(x = Occasion, 
                     y = Total,
                     fill = Occasion)) +
  geom_violin(adjust = 1) +
  guides(fill = "none")

# Here's one where the individual data points impact the shape more
ggplot(data = july_2019, 
       mapping = aes(x = Occasion, 
                     y = Total,
                     fill = Occasion)) +
  geom_violin(adjust = .25) +
  guides(fill = "none")

