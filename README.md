# Employment Equity: An Analysis of Distribution of Salary Ranges of Public Service of Canada Employees


## About
This repository contains code to visualize  employee salary data from the Government of Canada's Treasury Board, [publically available here](https://www.canada.ca/en/treasury-board-secretariat/services/innovation/human-resources-statistics/diversity-inclusion-statistics.html). A webpage with outputs and findings can be found [here](https://klaxonklaxoff.github.io/ee_dv/).

## The Data
This data is based on self identification of equity-deserving groups, and represents pre-tax salary ranges excluding bonuses and promotions. In order to obtain the data, the webpage was scraped with the R package `rvest`. Then, `dplyr` and `tidyr` were used to clean it up and plotting was done with `ggplot` and `plotly`. 

## Results
The data shows systemic career stagnation in Canadian Black public servants. 


## Conclusions
These results affirm the Canadian Clerk of the Privy Council and Secretary to the Cabinet’s Call to Action on Anti-Racism, Equity, and Inclusion in the Federal Public Service, which includes a direction for public service leaders to transition racialized employees to leadership roles via career development and talent management. This analysis is novel because the disaggregated data allows for the elucidation of trends in subgroups within the recognized “visible minority” employment equity group which has historically been presented and analyzed as a single classification. Our findings demonstrate that although representation in the core public services may have increased to mirror work force availability, career stagnation indicates additional barriers faced by this subgroup that must be addressed to achieve equitable representation. The clear disadvantage in career progression amongst Black public servants must be addressed with a strategic plan to improve retention and success to levels achieved by their non-racialized peers. 

  
## Acknowledgements
 This project was initatated as a request for peer review and data visualization from Dr. Martin Nicholas (Health Canada), Shamir Kanji (Canada Revenue Agency), Sean Karmali (Statistics Canada), Niha Shahzad (Natural Resources Canada), and Muhammed Ali Khan (Indigenous Services Canada). Web scraping and data vizualization was completed by Brittny Vongdara and Catalina Albury (Statistics Canada). 

## Disclaimer 
This is not an official Statistics Canada product. The opinions reflected here are our own, and do not reflect our employers. 






