---
title: "Code Book"
author: "Stephen Aboagye-Ntow"
date: "9/25/2020"
output: pdf_document
---


# Methodology

Thirty (30) subjects volunteered to participate in an experiment which involves each subject performing six **activities** each while wearing a smartphone (Samsung Galaxy S II) on the waist 

## Activities
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING



## Signals
Using its embedded accelerometer and gyroscope, the samsung galaxy SII was used to captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz and the following **signals** were generated

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag


## Variables
The set of variables that were estimated from the **signals** are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.



## features
For each **Signal**, **Variables** was generated. These are the features or measurements of each activity for each subject.

*First 50 elements of features*
1 tBodyAcc-mean()-X
2 tBodyAcc-mean()-Y
3 tBodyAcc-mean()-Z
4 tBodyAcc-std()-X
5 tBodyAcc-std()-Y
6 tBodyAcc-std()-Z
7 tBodyAcc-mad()-X
8 tBodyAcc-mad()-Y
9 tBodyAcc-mad()-Z
10 tBodyAcc-max()-X
11 tBodyAcc-max()-Y
12 tBodyAcc-max()-Z
13 tBodyAcc-min()-X
14 tBodyAcc-min()-Y
15 tBodyAcc-min()-Z
16 tBodyAcc-sma()
17 tBodyAcc-energy()-X
18 tBodyAcc-energy()-Y
19 tBodyAcc-energy()-Z
20 tBodyAcc-iqr()-X
21 tBodyAcc-iqr()-Y
22 tBodyAcc-iqr()-Z
23 tBodyAcc-entropy()-X
24 tBodyAcc-entropy()-Y
25 tBodyAcc-entropy()-Z
26 tBodyAcc-arCoeff()-X,1
27 tBodyAcc-arCoeff()-X,2
28 tBodyAcc-arCoeff()-X,3
29 tBodyAcc-arCoeff()-X,4
30 tBodyAcc-arCoeff()-Y,1
31 tBodyAcc-arCoeff()-Y,2
32 tBodyAcc-arCoeff()-Y,3
33 tBodyAcc-arCoeff()-Y,4
34 tBodyAcc-arCoeff()-Z,1
35 tBodyAcc-arCoeff()-Z,2
36 tBodyAcc-arCoeff()-Z,3
37 tBodyAcc-arCoeff()-Z,4
38 tBodyAcc-correlation()-X,Y
39 tBodyAcc-correlation()-X,Z
40 tBodyAcc-correlation()-Y,Z
41 tGravityAcc-mean()-X
42 tGravityAcc-mean()-Y
43 tGravityAcc-mean()-Z
44 tGravityAcc-std()-X
45 tGravityAcc-std()-Y
46 tGravityAcc-std()-Z
47 tGravityAcc-mad()-X
48 tGravityAcc-mad()-Y
49 tGravityAcc-mad()-Z
50 tGravityAcc-max()


## Data from Experiment
The obtained dataset from the excersice has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% for the test data


To have a full table of observations from the excercise, both test and train sets must be merged into a one.


To communicate more meaning, the numeric values of the **Activity** column must be replace with their corresponding character variables as indicated under the Activity sub-heading

Now we replace the numerics with characters 

Since the estimated variables of interest are only mean and std, we subset only features or measurements with mean() and std()


## Ordering
The data is then ordered by the subjects variable in a descending order of magnitude


The data was structured such that each variable is in its own column and each observation in a row to conform to the "so called tidy data" philosophy introduced by Hadley Wickham. 


The dataset was then divided into groups, thus into separate dataframes based on the unique variable amongst the measurements which are:

 - mean()  
 - std()


## Grouped analysis 
The average of the mean() measurements  as well as the average of the std() measurements for every activity of each subject in the immediate-above dataframes is then computed.

Resultant dataframes from immediate-above are merged ones again by row to achieve the data format which adheres to the so called "tidy data" philosophy and ordered afterwards using the subject variable or column to communicate more meaning and create ease for further analysis on the data.



# Data Dictionary

## Subjects
Volunteered persons for the study :
 
 - 1 - subject1  
 - 2 - subject2  
 - 3 - subject3  
 - 4 - subject4  
 - 5 - subject5  
 - 6 - subject6  
 - 7 - subject7  
 - 8 - subject8  
 - 9 - subject9  
 - 10 - subject10  
 - 11 - subject11  
 - 12 - subject12  
 - 13 - subject13  
 - 14 - subject14  
 - 15 - subject15  
 - 16 - subject16  
 - 17 - subject17  
 - 18 - subject18  
 - 19 - subject19  
 - 20 - subject20  
 - 21 - subject21  
 - 22 - subject22  
 - 23 - subject23  
 - 24 - subject24  
 - 25 - subject25  
 - 26 - subject26  
 - 27 - subject27  
 - 28 - subject28  
 - 29 - subject29  
 - 30 - subject30  

## Activities
Each Subject undertook six activities:
 
 - 1.walking  
 - 2.walking_upstairs  
 - 3.walking_downstairs  
 - 4.sitting  
 - 5.standing  
 - 6.laying  
 
## Measurements
Of the 17 variables estimated from the signals, the analysis only required the computation of the average of only the measurements or features with mean() and std() variables inherent in them for each **Activity** and each **Subject**.
              
mean_av - representing all mean() inherent measurements for each                  activity and               each subject
std_av - representing all std() inherent measurements for each activity          and each subject  

## Average
Average value of mean() or std() inherent measurements for each activity and for each subject 
