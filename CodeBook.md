## create one R script called run_analysis.R that does the following.
## 1 - Merges the training and the test sets to create one data set.
## 2 - Extracts only the measurements on the mean and standard deviation for each measurement.
## 3 - Uses descriptive activity names to name the activities in the data set
## 4 - Appropriately labels the data set with descriptive variable names.
## 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Note that the zipped folder "UCI HAR Dataset" is downloaded to local harddrive already.

## Reading test data for X, Y & Subjects in variables testX, testY and TestSubject respectively
## Reading train data for X, Y & Subjects in variables trainX, trainY and TrainSubject respectively
## Reading feature and activity data in variables features and activity.
## Requirement 1 - Merges the training and the test sets to create one data set in valirable XData, YData and Subject Data
## Requirement 2 - Extracts only the measurements on the mean and standard deviation for each measurement.
## getting features index which contain mean() and std() in their name
## getting variables with mean/stdev
## Requirement 3 - Uses descriptive activity names to name the activities in the data set
## Replace numeric values with lookup value from activity;
## Requirement 4 - Appropriately labels the data set with descriptive variable names.
## Get variable names
## updating colNames for new dataset
## list first 5 columns
## Requirement 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
## Load data.table from library
## features average by Subject and by activity and write to new file tidy.txt
