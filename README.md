# Getting-and-Cleaning-Data-Course-Project

This is the course project for the Getting and Cleaning Data Coursera course. The goal of this project is to collect, work with, and clean a data set collected from the accelerometers from the Samsung Galaxy S smartphone.

The R script, run_analysis.R, does the following:

1) Loads column names, training/test sets, subjects and activities into R.
2) Assigns column names to training set and test set.
3) Adds the subjects and activities columns to the training and test data sets.
4) Merges train and test complete data frames
5) Takes the mean and standard deviation columns only, leaving aside every other statistic or index calculated (Minimum, Maximum, Entropy, Correlation, etc.).
6) Renames columns, in order to make them more understandable.
7) Assigns activities labels to each row, in order to have descriptive names for each activity in the data set.
8) Creates an independent tidy data set with the average of each variable for each activity and each subject.

The end result is shown in the file tidy_data.txt.
