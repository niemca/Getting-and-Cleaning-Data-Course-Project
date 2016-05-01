## Make sure to save the data on you working directory before running this script

## Loads column names, training/test sets, subjects and activities into R

column_names <- read.table("./UCI HAR Dataset/features.txt")
activities_names <- read.table("./UCI HAR Dataset/activity_labels.txt")
colnames(activities_names) <- c("activity", "activity_name")

train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
train_set <- read.table("./UCI HAR Dataset/train/X_train.txt")
train_activities <- read.table("./UCI HAR Dataset/train/Y_train.txt")

test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
test_set <- read.table("./UCI HAR Dataset/test/X_test.txt")
test_activities <- read.table("./UCI HAR Dataset/test/Y_test.txt")

## Assigns column names to training set and test set

column_names2 <- column_names[ , 2]
colnames(train_set) <- column_names2
colnames(test_set) <- column_names2

## Adds the columns for subjects and activities to the training and test data sets

train_complete <- cbind(train_subject, train_activities, train_set)
colnames(train_complete) <- c("subject", "activity", as.character(column_names2))
test_complete <- cbind(test_subject, test_activities, test_set)
colnames(test_complete) <- c("subject", "activity", as.character(column_names2))

## Merges train and test complete data frames

complete_sample <- rbind(train_complete, test_complete)

## Takes the mean and standard deviation columns only

library(reshape2)
mean_and_std_columns <- grep("-(mean|std)\\(\\)", column_names2)
sample_subset <- complete_sample[ , c("subject", "activity", grep("-(mean|std)\\(\\)", column_names2, value=TRUE))]

## Renames variables

colnames(sample_subset) <- gsub("-"," ", colnames(sample_subset))
colnames(sample_subset) <- gsub("\\(\\)","", colnames(sample_subset))
colnames(sample_subset) <- gsub("std","StandardDeviation", colnames(sample_subset))
colnames(sample_subset) <- gsub("mean","Mean", colnames(sample_subset))
colnames(sample_subset) <- gsub("^t","Time ", colnames(sample_subset))
colnames(sample_subset) <- gsub("^f","Frequency ", colnames(sample_subset))
colnames(sample_subset) <- gsub(" ","_", colnames(sample_subset))

## Assigns activities labels to each row, in order to have descriptive names for each activity in the data set

sample_subset <- merge(activities_names, sample_subset, by="activity", all.y=TRUE, sort=FALSE)

## Creates an independent tidy data set with the average of each variable for each activity and each subject

sample_melted <- melt(sample_subset, id = c("activity_name", "subject"), measure.vars = c(colnames(sample_subset)[4:69]))
sample_tidy <- dcast(sample_melted, activity_name + subject ~ colnames(sample_subset)[4:69], mean)
write.table(sample_tidy, "tidy_data.txt", row.name=FALSE)
