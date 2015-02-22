# GettingCleaningData_Project

## Introduction

Coursera, Getting and Cleaning Data, Course Project

This repository contains the R code for the analysis of the data and a CodeBook.md file.

A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Files

R file "run_analysis.R" should be in the same folder with the "UCI HAR Dataset" folder (NOT inside the folder "UCI HAR Dataset")

"CodeBook.md" describes the variables, the data, and any transformations or work that was performed to clean up the data

"run_analysis.R" contains the code for the analysis and its output is a text file named "tidyData"

## How the script ("run_analysis.R") works

Based on the comments from the R file run_analysis:

### Step 1
READ, read data from files (read.table command)

NAME, name them with appropriate names (colnames command)

MERGE, merge them to create one data set (cbind, rbind commands)

### Step 2
MEAN AND STANDARD DEVIATION DATA, extract only the measurements with mean and standrard deviation (use of a logical vector to select specific columns)

### Step 3 and Step 4
CHANGE NAMES, add acitivity label at the end of the table and rename column names (gsub command)

### Step 5
AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY AND EACH SUBJECT, mean of each variable for each activity and each subject and add again the activity label. Export tidyData as a text file (aggregate, write.table commands)

## run_analysis variables

1. activityLabels: data from the downloaded file "activity_labels"

2. features: data from the downloaded file "features"

3. subjectTest: data from the downloaded file "subject_test" in the folder "test"

4. xTest: data from the downloaded file "X_test" in the folder "test"

5. yTest: data from the downloaded file "y_test" in the folder "test"

6. subjectTrain: data from the downloaded file "subject_train" in the folder "train"

7. xTrain: data from the downloaded file "X_train" in the folder "train"

8. yTrain: data from the downloaded file "y_train" in the folder "train"

9. testData: xTest, yTest and subjectTest data

10. trainData: xTrain, yTrain and subjectTrain data

11. allData: testData and trainData

12. allData2: only the desired columns (mean and standard deviation)

13. allData3: add acitivity label at the end of the table in order to understand the activity

14. tidyData: final data
