

# Plot with hypohetical department


# Load required packages
library(dplyr)
library(ggplot2)
library(png)
library(ggimage)
library(ggwaffle) #devtools::install_github("liamgilbey/ggwaffle")
library(emojifont)
library(MetBrewer)
library(tidyverse)

# Plot 1: Distribution of Groups in Department X --------------------------


## Create df ---------------------------------------------------------------
# Create dataframe with group numbers repeated
Dept_data <- tibble(Group_count = rep("A", 20) %>% c(rep("B", 20)) %>% c(rep("C", 460)) )

# Move data to waffle object for plotting
Dept_data_waffle <- waffle_iron(Dept_data, aes_d(group = Group_count), rows = 20) %>% mutate(label = fontawesome('fa-male'))

# 

## Plot symbols -----------------------------------------------

# Create color pallette 
colors <- c(met.brewer("Johnson", 5)[c(1,5)], "#808080")

# Plot as waffle   
ggplot(Dept_data_waffle, aes(x, y, colour = group)) + 
  geom_text(aes(label=label), family='fontawesome-webfont', size=6) +
  coord_equal() + 
  scale_colour_manual(values = c(colors)) + 
  theme_waffle()  +
  theme(axis.title.x = element_blank(),
        axis.title.y = element_blank()) + 
  guides(color=guide_legend(title="Group"))



# Plot 2: Employees on scaffolding --------------------------------------------------

 # Create data 
Group <- c(rep("A", 20), rep("B", 20))
Salary <- c(rep("100.0K+", 4), rep("85.0-99.9K", 4), rep("70.0-84.9K", 5), rep("60.0-69.9K", 4), rep("<60.0K", 3),"100.0K+", rep("85.0-99.9K", 3), rep("70.0-84.9K", 4), rep("60.0-69.9K", 6), rep("<60.0K", 6))
Placement <- c(1,2,3,4,1,2,3,4,1,2,3,4,5,1,2,3,4,1,2,3,1,1,2,3,1,2,3,4,1,2,3,4,5,6,1,2,3,4,5,6)
Dept_data_salaries <- data.frame(Group, Salary, Placement) %>% mutate(label = fontawesome('fa-male') )

Dept_data_salaries$Salary <- factor(Dept_data_salaries$Salary, 
                                    levels = c("<60.0K", "60.0-69.9K", "70.0-84.9K", "85.0-99.9K", "100.0K+"))

    
ggplot(Dept_data_salaries, aes(x = Group, y = Salary)) +
  geom_dotplot(binaxis = "y", stackdir = "center", aes(fill=Group)) +
  scale_fill_manual(values = colors) +
  theme_minimal() +
  geom_text(aes(label=label), family='fontawesome-webfont', size=6, color = "white")



