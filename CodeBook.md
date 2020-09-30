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
Using its embedded accelerometer and gyroscope, the samsung galaxy SII was used to captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz and the the sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. Hence, the following **signals** were generated

 - tBodyAcc-XYZ  
 - tGravityAcc-XYZ  
 - tBodyAccJerk-XYZ  
 - tBodyGyro-XYZ  
 - tBodyGyroJerk-XYZ  
 - tBodyAccMag  
 - tGravityAccMag  
 - tBodyAccJerkMag  
 - tBodyGyroMag  
 - tBodyGyroJerkMag  
 - fBodyAcc-XYZ  
 - fBodyAccJerk-XYZ  
 - fBodyGyro-XYZ  
 - fBodyAccMag  
 - fBodyAccJerkMag  
 - fBodyGyroMag  
 - fBodyGyroJerkMag  


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
For each **Signal**, **Variables** was generated. These are the features or measurements of each activity for each subject. The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 


*First 50 features of 561*
 - tBodyAcc-mean()-X  
 - tBodyAcc-mean()-Y  
 - tBodyAcc-mean()-Z  
 - tBodyAcc-std()-X  
 - tBodyAcc-std()-Y  
 - tBodyAcc-std()-Z  
 - tBodyAcc-mad()-X  
 - tBodyAcc-mad()-Y  
 - tBodyAcc-mad()-Z  
 - tBodyAcc-max()-X  
 - tBodyAcc-max()-Y  
 - tBodyAcc-max()-Z  
 - tBodyAcc-min()-X  
 - tBodyAcc-min()-Y  
 - tBodyAcc-min()-Z  
 - tBodyAcc-sma()  
 - tBodyAcc-energy()-X  
 - tBodyAcc-energy()-Y  
 - tBodyAcc-energy()-Z  
 - tBodyAcc-iqr()-X  
 - tBodyAcc-iqr()-Y  
 - tBodyAcc-iqr()-Z  
 - tBodyAcc-entropy()-X  
 - tBodyAcc-entropy()-Y  
 - tBodyAcc-entropy()-Z  
 - tBodyAcc-arCoeff()-X,1  
 - tBodyAcc-arCoeff()-X,2  
 - tBodyAcc-arCoeff()-X,3  
 - tBodyAcc-arCoeff()-X,4  
 - tBodyAcc-arCoeff()-Y,1  
 - tBodyAcc-arCoeff()-Y,2  
 - tBodyAcc-arCoeff()-Y,3  
 - tBodyAcc-arCoeff()-Y,4  
 - tBodyAcc-arCoeff()-Z,1  
 - tBodyAcc-arCoeff()-Z,2  
 - tBodyAcc-arCoeff()-Z,3  
 - tBodyAcc-arCoeff()-Z,4  
 - tBodyAcc-correlation()-X,Y  
 - tBodyAcc-correlation()-X,Z  
 - tBodyAcc-correlation()-Y,Z  
 - tGravityAcc-mean()-X  
 - tGravityAcc-mean()-Y  
 - tGravityAcc-mean()-Z  
 - tGravityAcc-std()-X  
 - tGravityAcc-std()-Y  
 - tGravityAcc-std()-Z  
 - tGravityAcc-mad()-X  
 - tGravityAcc-mad()-Y  
 - tGravityAcc-mad()-Z  
 - tGravityAcc-max()  


## Data from Experiment
The obtained dataset from the excersice has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% for the test data


To have a full table of observations from the excercise, both test and train sets must be merged into a one.


To communicate more meaning, the numeric values of the **Activity** column must be replace with their corresponding character variables as indicated under the Activity sub-heading

Now we replace the numerics with characters 

# Summary Choices
Since the estimated variables of interest are only mean() and std(), we subset only features/measurements meeting this criteria. eg:

 - tBodyAcc-mean()-X  
 - tBodyAcc-mean()-Y  
 - tBodyAcc-mean()-Z  
 - tBodyAcc-std()-X  
 - tBodyAcc-std()-Y  
 - tBodyAcc-std()-Z  
 - tGravityAcc-mean()-X  
 - tGravityAcc-mean()-Y  
 - tGravityAcc-mean()-Z  
 - tGravityAcc-std()-X  
 - tGravityAcc-std()-Z  
 
And for each activity of a subject, the average of mean() inherent fearures/measurements where computed and so was it for std() inherent measurements


## Ordering
The data is then ordered by the subjects variable in a descending order of magnitude


The data was structured such that each variable is in its own column and each observation in a row to conform to the "so called tidy data" philosophy introduced by Hadley Wickham. 


The dataset was then divided into groups, thus into separate dataframes based on the unique variable amongst the measurements which are:

 - mean()  
 - std()


## Grouped analysis 
The average of the mean() measurements  as well as the average of the std() measurements for every activity of each subject in the immediate-above dataframes is then computed.

Resultant dataframes from immediate-above are merged ones again by row to achieve the data format which adheres to the so called "tidy data" philosophy and ordered afterwards using the subject variable or column to communicate more meaning and create ease for further analysis on the data.

## Variables and Observations
Within the Tidy data data from the above operation, each column contains a variable which are:

 - Subjects  
 - Activities  
 - mean_av  
 - std_av  
 **subjects** *represents volunteered persons for the experiment*
 **Activities** *representing activities of daily living (ADL) for each subject* 
 **mean_av and std_av** *representing the average value of mean() and std() inherent measurements/features for each activity of each subject*
 
 *Each row is an observation of all column variables for each subject, thus, the average value of mean() inherent measurements and std() inherent measurements of a specific type activity for each subject*
 


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










