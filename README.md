# GetData
This repository contains solution for Coursera class "Getting and Cleaning Data".
It's necessary to download and unzip "UCI HAR dataset" (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
In order to reproduce results you need to run script "run_analysis.R".
This script load data from both parts of dataset - test and train. Files from directories "Inertial Signals" are EXCLUDED from precessing. So the list of files that will be imported is as follow:
<br/>1. ./activity_labels.txt
<br/>2. ./features.txt 
<br/>3. ./test/subject_test.txt 
<br/>4. ./test/X_test.txt 
<br/>5. ./test/y_test.txt 
<br/>6. ./train/subject_train.txt 
<br/>7. ./train/X_train.txt 
<br/>8. ./train/y_train.txt 

Data will be filtered to extract only the measurements on the mean and standard deviation for each measurement.
Resulting dataset will be saved into the file "data.txt" and will contain the average of each variable for each activity and each subject.
