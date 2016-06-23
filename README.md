# GettingAndCleaningData

Getting and Cleaning Data Course Project - Assignment for Week 4: The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.

The exercise includes the following:
1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement.
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive variable names.
5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The script written does the above.

It assumes that the zip file has been downloaded from the repository to the local file. 
1) Reading test data for X, Y & Subjects
2) Reading train data for X, Y & Subjects
3) Reading feature and activity data.
4) Merge the training and the test sets to create one data set
5) Extract only the measurements on the mean and standard deviation for each measurement.
6) get features index which contain mean() and std() in their name
7) get variables with mean/stdev
8) Uses descriptive activity names to name the activities in the data set
9) Appropriately labels the data set with descriptive variable names.
10) create a second, independent tidy data set with the average of each variable for each activity and each subject
