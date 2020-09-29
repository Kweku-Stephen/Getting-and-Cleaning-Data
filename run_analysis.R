#############################################################################################
#Project
setwd("F:\\R_PROJECTS\\Tidy Data")
#Statement to check and load the tidyverse package if unloaded
if("tidyverse" %in% installed.packages()){
       require(tidyverse)
}else{
       install.packages("tidyverse") %>% 
              require()
}

#Statement to check and create a destination directory for downloaded file if absent
if(!file.exists("data_proj")){
       dir.create("data_proj")
}
#File Download
download.file(
       "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
       destfile = "F:\\R_PROJECTS\\Tidy Data\\dataset.zip",
       method = "curl"
)

#Test mesasurements
test <- read.table(
       "X_test.txt", 
       header = F, 
       sep = ""
)

#Train measurements
train <- read.table(
       "X_train.txt",
       header = F,
       sep = ""
)

#Subjects of train measurements
subjects_train <- read.table(
       "subject_train.txt", 
       header = F,
       sep = "\t"
) %>% rename(Subjects = V1)

#Subjects of test measurements
subjects_test <- read.table(
       "subject_test.txt",
       header = F,
       sep = "\t"
) %>% rename(Subjects = V1 )

#Measured Activities of train measurements
y_train <- read.table(
       "y_train.txt",
       sep = "\t",
       header = F
) %>% rename(Activities = V1)

#Measured activities of test measurements
y_test <- read.table(
       "y_test.txt",
       sep = "\t",
       header = F
) %>% rename(Activities = V1)

#creating a Dataframe with subject, activity and measurement datasets for train and test meas.
Train <- data.frame(
       Subjects = subjects_train,
       Activities = y_train,
       train
)

Test <- data.frame(
       Subjects = subjects_test,
       Activities = y_test,
       test
)

#Naming columns of measurements with feature.txt
features <- read.table(
       "features.txt", 
       header = F,
       sep = "\t"
) %>% 
       unlist(
              use.names = F 
       ) %>% 
       strsplit(
              "\\ "
       ) %>% 
       sapply(
              function(x){x[2]}
       )
names(Train)[3:ncol(Train)] <- features
names(Test)[3:ncol(Test)] <- features


#Merging test and train by a common id "Activities" by row binding
rbind(
       Train,
       Test
) -> merged

#Ordering by Subjects
merged[order(merged$Subjects, decreasing = F), ] -> merged

#merge(
#        Train,
#        Test,
#        by.x = "Activities",
#       by.y = "Activities",
#        all = TRUE
#) -> merged


#Extracting means() and stds() from the above merged data
mean_std <- data.frame(
       merged[,1:2],
       merged[, grepl("mean[()]|std[()]", names(merged))]
       
) 


#Labeling Activities with descriptive activity names
factor(
       mean_std$Activities, 
       labels = c(
              "walking", "Walking_upstairs","walking_downstairs",
              "sitting","standing","laying"
       )
) -> mean_std$Activities

#Tidying Data 
gather(
       mean_std,
       "measurement",
       "value",
       3:ncol(mean_std)
) -> mean_std_tidy 

#Extracting measurements based on mean and std respectifully into two separate dataframes
#measurements with mean
mean_std_tidy[grepl("[Mm]ean",mean_std_tidy$measurement), ] -> mn
mean_std_tidy[grepl("[Ss]td",mean_std_tidy$measurement), ] -> std_n

#Aggregating and averaging measurements for each activity and each subject
data.frame(
       aggregate(
              value~Subjects+Activities,
              mn,
              mean,
              na.rm=T
       ),
       
       std_av = aggregate(
              value~Subjects+Activities,
              std_n,
              mean,
              na.rm=T
       )[,3]
       
)  %>% rename(
       mean_av = value
) %>% 
       arrange(
              Subjects
       ) -> tidy_data

#gather(
#       "Measurement",
#       "Average",
#       3:4
#) %>% arrange(
#       Subjects
#) -> tidy_data











