

# Plot with hypohetical department


# Load required packages
library(dplyr)
library(ggplot2)
library(png)
library(ggimage)
library(ggwaffle) #devtools::install_github("liamgilbey/ggwaffle")
library(emojifont)
library(MetBrewer)

# Plot 1: Distribution of Groups in Department X --------------------------


## Create df ---------------------------------------------------------------
# Create dataframe with group numbers repeated
Dept_data <- tibble(Group_count = rep("A", 20) %>% c(rep("B", 20)) %>% c(rep("C", 460)) )

# Move data to waffle object for plotting
Dept_data_waffle <- waffle_iron(Dept_data, aes_d(group = Group_count), rows = 20) %>% mutate(label = fontawesome('fa-person'))

# 

## Plot symbols -----------------------------------------------

# Create color pallette 
colors <- c(met.brewer("Johnson", 5)[c(1,5)], "#808080")

ggplot(Dept_data_waffle, aes(x, y, fill = group)) + 
  geom_waffle() +
  coord_equal() +
  scale_fill_manual(values = c(colors)) +
  theme_waffle() + 
  theme(axis.title.x = element_blank(),
        axis.title.y = element_blank()) + 
  guides(fill=guide_legend(title="Group"))
  
  







# Plot 2: Employees on scaffolding --------------------------------------------------

 
    


