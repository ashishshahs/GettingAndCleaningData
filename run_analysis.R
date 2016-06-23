## create one R script called run_analysis.R that does the following.
## 1 - Merges the training and the test sets to create one data set.
## 2 - Extracts only the measurements on the mean and standard deviation for each measurement.
## 3 - Uses descriptive activity names to name the activities in the data set
## 4 - Appropriately labels the data set with descriptive variable names.
## 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Note that the zipped folder "UCI HAR Dataset" is downloaded to local harddrive already.

# Reading test data:
testX <- read.table("UCI HAR Dataset/test/X_test.txt")
testY <- read.table("UCI HAR Dataset/test/Y_test.txt")
TestSubject <- read.table("UCI HAR Dataset/test/subject_test.txt")

## Reading train data:
trainX <- read.table("UCI HAR Dataset/train/X_train.txt")
trainY <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt")

## Reading feature and activity data.
features <- read.table("UCI HAR Dataset/features.txt")
activity <- read.table("UCI HAR Dataset/activity_labels.txt")

##Requirement 1 - Merges the training and the test sets to create one data set.
XData <- rbind(testX, trainX)
YData <- rbind(testY, trainY)
SubjectData <- rbind(TestSubject, trainSubject)

##Requirement 2 - Extracts only the measurements on the mean and standard deviation for each measurement.

##getting features index which contain mean() and std() in their name
index <- grep("mean\\(\\)|std\\(\\)", features[,2])
## count of features
length(index)

## getting variables with mean/stdev
XData <- XData[,index]
## chceking X dimension
dim(X)

##Requirement 3 - Uses descriptive activity names to name the activities in the data set
## Replace numeric values with lookup value from activity;
YData[,1] <- activity[YData[,1],2]

##Requirement 4 - Appropriately labels the data set with descriptive variable names.
## Get variable names
names <- features[index,2]
## updating colNames for new dataset
names(XData) <- names
names(SubjectData) <- "SubjectID"
names(YData) <- "Activity"
CleanedData <- cbind(SubjectData, YData, XData)
## list first 5 columns
head(CleanedData[,c(1:4)])

##Requirement 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
## Load data.table from library
library(data.table)
CleanedData <- data.table(CleanedData)

## features average by Subject and by activity
TidyData <- CleanedData[, lapply(.SD, mean), by = 'SubjectID,Activity']
write.table(TidyData, file = "Tidy.txt", row.names = FALSE)
## Display first 5 columns
head(TidyData[order(SubjectID)][,c(1:5), with = FALSE]) 