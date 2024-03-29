#Getting and Cleaning Data, Third week project

## Introduction
After extracting the zip file "getdata-projectfiles-UCI HAR Dataset", a folder named "UCI HAR Dataset" is created. The folder contains two folders ("test" and "train") and four text files ("activity_labels", "features", "features_info" and "README").

## Data

A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


## Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See "features_info.txt" for more details. 

For each record it is provided:

1. Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration

2. Triaxial Angular velocity from the gyroscope

3. A 561-feature vector with time and frequency domain variables

4. Its activity label

5. An identifier of the subject who carried out the experiment

## The dataset includes the following files:

1. "README.txt"

2. "features_info.txt": Shows information about the variables used on the feature vector

3. "features.txt": List of all features

4. "activity_labels.txt": Links the class labels with their activity name

5. "train/X_train.txt": Training set

6. "train/y_train.txt": Training labels

7. "test/X_test.txt": Test set

8. "test/y_test.txt": Test labels


The following files are available for the train and test data. Their descriptions are equivalent. 

1. "train/subject_train.txt": Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

2. "train/Inertial Signals/total_acc_x_train.txt": The acceleration signal from the smartphone accelerometer X axis in standard gravity units "g". Every row shows a 128 element vector. The same description applies for the "total_acc_x_train.txt" and "total_acc_z_train.txt" files for the Y and Z axis. 

3. "train/Inertial Signals/body_acc_x_train.txt": The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

4. "train/Inertial Signals/body_gyro_x_train.txt": The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 
