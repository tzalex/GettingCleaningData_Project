#run_analysis R file

#==========================================================================================
# READ

# data from files in "UCI HAR Dataset" folder
activityLabels = read.table('./UCI HAR Dataset/activity_labels.txt', header=FALSE);
features = read.table('./UCI HAR Dataset/features.txt', header=FALSE);

# data from files in "test" folder
subjectTest = read.table('./UCI HAR Dataset/test/subject_test.txt', header=FALSE);
xTest = read.table('./UCI HAR Dataset/test/X_test.txt', header=FALSE);
yTest = read.table('./UCI HAR Dataset/test/y_test.txt', header=FALSE);

# data from files in "train" folder
subjectTrain = read.table('./UCI HAR Dataset/train/subject_train.txt', header=FALSE);
xTrain = read.table('./UCI HAR Dataset/train/X_train.txt', header=FALSE);
yTrain = read.table('./UCI HAR Dataset/train/y_train.txt', header=FALSE);
#==========================================================================================
# NAME

# acivity_labels data
colnames(activityLabels) = c('activityID','activityLabel');

# test data
colnames(subjectTest) = "subjectID";
colnames(xTest) = features[,2]; 
colnames(yTest) = "activityID";

# train data
colnames(subjectTrain) = "subjectID";
colnames(xTrain) = features[,2]; 
colnames(yTrain) = "activityID";
#==========================================================================================
# MERGE

# xTest, yTest and subjectTest data
testData = cbind(subjectTest,xTest,yTest);

# xTrain, yTrain and subjectTrain data
trainData = cbind(subjectTrain,xTrain,yTrain);

# testData and trainData
allData = rbind(testData,trainData);
#==========================================================================================
# MEAN AND STANDARD DEVIATION DATA

# column names from "allData" table
colNames = colnames(allData); 
 
# create a logical vector (LV): TRUE for columns ID, mean and standard deviation and
# FALSE for anything else
LV = (grepl("activity..",colNames) | grepl("subject..",colNames) | grepl("-mean..",colNames) & !grepl("-meanFreq..",colNames) & !grepl("mean..-",colNames) | grepl("-std..",colNames) & !grepl("-std()..-",colNames));

# keep only the specific columns by subsetting "allData" table with LV
allData2 = allData[LV==TRUE];
#==========================================================================================
# CHANGE NAMES

# add acitivityLabel at the end of the table
allData3 = merge(allData2,activityLabels,by='activityID',all.x=TRUE);

# update colNames
colNames  = colnames(allData3); 

# rename column names
for (i in 1:length(colNames)) 
{
  colNames[i] = gsub("\\()","",colNames[i])
  colNames[i] = gsub("-mean","_Mean",colNames[i])
  colNames[i] = gsub("-std$","_StandardDeviation",colNames[i])
  colNames[i] = gsub("^(t)","Time",colNames[i])
  colNames[i] = gsub("^(f)","Frequency",colNames[i])
  colNames[i] = gsub("[Gg]yro","Gyro",colNames[i])
  colNames[i] = gsub("([Gg]ravity)","Gravity",colNames[i])
  colNames[i] = gsub("([Bb]ody[Bb]ody|[Bb]ody)","Body",colNames[i])
  colNames[i] = gsub("AccMag","AccelarationMagnitude",colNames[i])
  colNames[i] = gsub("([Bb]odyaccjerkmag)","BodyAccelarationJerkMagnitude",colNames[i])
  colNames[i] = gsub("JerkMag","JerkMagnitude",colNames[i])
  colNames[i] = gsub("GyroMag","GyroMagnitude",colNames[i])
};

# update colNames
colnames(allData3) = colNames;
#==========================================================================================
# AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY AND EACH SUBJECT

# Create a new table, without the "activityLabel" at the end to run the next command
allData4 = allData3[,names(allData3) != 'activityLabel'];

# mean of each variable for each activity and each subject
tidyData = aggregate(allData4[,names(allData4) != c('activityID','subjectID')],by=list(activityID=allData4$activityID,subjectID = allData4$subjectID),mean);

# add again "acitivityLabel" at the end of the table
tidyData = merge(tidyData,activityLabels,by='activityID',all.x=TRUE);

# export tidyData as a text file
write.table(tidyData, './tidyData.txt',row.names=TRUE,sep='\t');
#==========================================================================================
