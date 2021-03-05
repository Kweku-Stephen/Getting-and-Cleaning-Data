---
output:
  pdf_document: default
  html_document: default
---

# INTRO
It involves group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. The project is to wrangle the data generated in the so called tidy data format as advocated by Hadley wickham; where each variable in its own column and each observation in its row.

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
