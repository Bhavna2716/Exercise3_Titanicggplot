
#A convert the Titanic file into a Dataframe
titanic <- data.frame(Titanic)

#B install packages to help tidy and analize the dataframe
install.packages("tidyverse")
library(dplyr)
library(ggplot2)


# 1 - Check the structure of titanic
str(titanic)

# 2 - Plot the data to check the distribution of sexes within the class of passengers who boarded the ship 
ggplot(titanic, aes(x = Class, fill = Sex)) +
  geom_bar(position = "dodge")

# 3 - Bar plot doesn't seem like a good choice to estimate the chances of survival, add facet_grid() layer to better understand the possibility 
ggplot(titanic, aes(x = Class, fill = Sex)) +
  geom_bar(position = "dodge") +
  facet_grid(.~Survived)

# 4 - Define an object "posn.jd" for position jitterdodge to remove ambiguity
posn.jd <- position_jitterdodge(0.5, 0, 0.6)

# 5 - Add size and alpha attributes to enhance readability of the chart and change Sex to color in order to correctly color the scatter plots) . 
ggplot(titanic, aes(x = Class, y = Age, color = Sex)) +
  geom_point(size = 3, alpha = 0.5, position = posn.jd) +
  facet_grid(.~Survived)