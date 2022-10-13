

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

 
    


