---
output:
  pdf_document: default
  html_document: default
---

# INTRO
The repo contains the following 4 files immediately below, **Note**has been added to give further highlight but is not an existing file in the repo

## README.md
This project requires the creation of a data structure whichs keeps every variable in a column and each observation in a row. The data consists of 4 variables namely:
 - *SUbjetcs* - consists volunteers of the prject  
 - *Activity* - consists activities each subject performed  
 - *Measurement* - a vector of  features/measurements with    mean() or std() inherent  
 - *value* - contains the average value of mean() or std() inherent features/measurements for every activity of each subject 

  
## run_analysis.R
This Contains the codes for all processes beginning from creating a destination directory for the downloaded data, through data import, stacking all necessary files with their appropriate halves, extracting only mean() and std() inherent features or measurements to grouped analysis and data tidying


## CodeBook.md
This contains a fair summary and description of methodology used for data wrangling, and variables and names of the wrangled data(tidy data).


**NOTE**
*Average*
Values are bounded within [-1,1]. Each subject has an average value for all mean() inherent measurements or features as well as std() inherent features for each activity they performed.