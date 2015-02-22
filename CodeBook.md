#CODEBOOK
#Getting and Cleaning Data, Third week project

## Introduction
After extracting the zip file "getdata-projectfiles-UCI HAR Dataset", a folder named "UCI HAR Dataset" is created. The folder contains two folders ("test" and "train") and four text files ("activity_labels", "features", "features_info" and "README").

###From instructions:
You should create one R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement. 

3. Uses descriptive activity names to name the activities in the data set

4. Appropriately labels the data set with descriptive variable names. 

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


### Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See "features_info.txt" for more details. 

For each record it is provided:
Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
Triaxial Angular velocity from the gyroscope.
A 561-feature vector with time and frequency domain variables.
Its activity label.
An identifier of the subject who carried out the experiment.

###The dataset includes the following files:

"README.txt"
"features_info.txt": Shows information about the variables used on the feature vector.
"features.txt": List of all features.
"activity_labels.txt": Links the class labels with their activity name.
"train/X_train.txt": Training set.
"train/y_train.txt": Training labels.
"test/X_test.txt": Test set.
"test/y_test.txt": Test labels.


The following files are available for the train and test data. Their descriptions are equivalent. 

"train/subject_train.txt": Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

"train/Inertial Signals/total_acc_x_train.txt": The acceleration signal from the smartphone accelerometer X axis in standard gravity units "g". Every row shows a 128 element vector. The same description applies for the "total_acc_x_train.txt" and "total_acc_z_train.txt" files for the Y and Z axis. 

"train/Inertial Signals/body_acc_x_train.txt": The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

"train/Inertial Signals/body_gyro_x_train.txt": The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

### Steps
Based on the comments from the R file run_analysis:

STEP 1
READ, read data from files (read.table command)
NAME, name them with appropriate names (colnames command)
MERGE, merge them to create one data set (cbind, rbind commands)

STEP 2
MEAN AND STANDARD DEVIATION DATA, extract only the measurements with mean and standrard deviation (use of a logical vector to select specific columns)

STEP 3 and STEP 4
CHANGE NAMES, add acitivity label at the end of the table and rename column names (gsub command)

STEP 5
AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY AND EACH SUBJECT, mean of each variable for each activity and each subject and add again the activity label. Export tidyData as a text file (aggregate, write.table commands)

activityLabels: data from the downloaded file "activity_labels"
features: data from the downloaded file "features"
subjectTest: data from the downloaded file "subject_test" in the folder "test"
xTest: data from the downloaded file "X_test" in the folder "test"
yTest: data from the downloaded file "y_test" in the folder "test"
subjectTrain: data from the downloaded file "subject_train" in the folder "train"
xTrain: data from the downloaded file "X_train" in the folder "train"
yTrain: data from the downloaded file "y_train" in the folder "train"

testData: xTest, yTest and subjectTest data
trainData: xTrain, yTrain and subjectTrain data
allData: testData and trainData
allData2: only the desired columns (mean and standard deviation)
allData3: add acitivity label at the end of the table in order to understand the activity
tidyData: final data
