# Employment Equity: An Analysis of Distribution of Salary Ranges of Public Service of Canada Employees


## About
This repository contains code to visualize  employee salary data from the Government of Canada's Treasury Board, [publically available here](https://www.canada.ca/en/treasury-board-secretariat/services/innovation/human-resources-statistics/diversity-inclusion-statistics.html). A webpage with outputs and findings can be found [here](https://klaxonklaxoff.github.io/ee_dv/).

## The Data
This data is based on self identification of equity-deserving groups, and represents pre-tax salary ranges excluding bonuses and promotions. In order to obtain the data, the webpage was scraped with the R package `rvest`. Then, `dplyr` and `tidyr` were used to clean it up and plotting was done with `ggplot` and `plotly`. 

# Plot 1: Pros and Cons

[Here is a link to Plot 1 on the output webpage](https://klaxonklaxoff.github.io/ee_dv/#Plot_1:_DI_of_all_groups_by_salary_range). 

**Pros**: 

* This visualization allows for easy comparison between groups. 
* The dotted line allows the reader to compare to a baseline (all non-minority employees). 

**Cons**: 

* This is a static figure. 
* It is a little busier than others presented later. 

# Plot 2: Pros and Cons
[Here is a link to Plot 2 on the output webpage](https://klaxonklaxoff.github.io/ee_dv/#Plot_2:_DI_Share_by_subgroups_and_salary_range). 

**Pros:**

* Under/overrepresentation is easiest to identify in this figure. 
* This is an interactive visualization, allowing the user to hover on each bar and see the specific values associated with it. 

**Cons:**  

* Even values that would normally be considered "close enough" to 0, representing an about equitable DI share are designated a color, perhaps leading to some confusion. 
* Comparison between groups within a salary level is not as intuitive here.


# Plot 3: Pros and Cons

[Here is a link to Plot 3 on the output webpage](https://klaxonklaxoff.github.io/ee_dv/#Plot_3:_A_direct_comparison_of_DI_in_Black_Employees_vs_Non-Visible_Minority_Employees). 

**Pros:** 

* This plot tells the most focused story of the three. 
* Transparency represents salary range, with lighter colors representing lower salary. 

**Cons:** 

  * This is another static figure. 
  * Data from the other groups that would otherwise strengthen the core message is     not included for brevity's sake. 
  
## Acknowledgements
 This project was initatated as ask from Dr. Martin Nicholas (Health Canada), Shamir Kanji (Canada Revenue Agency), Sean Karmali (Statistics Canada), Niha Shahzad (Natural Resources Canada), and Muhammed Ali Khan (Indigenous Services Canada). Data vizualization was completed by Brittny Vongdara and Catalina Albury (Statistics Canada). 







