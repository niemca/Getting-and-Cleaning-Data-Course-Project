# Code Book

This code book summarizes the resulting data fields in tidy_data.txt.

## ID Columns

* activity Name: read subheading below.
* subject: identifier for each of the 30 volunteers that participated on the experiment.

## Activities

Activities performed by each volunteer that  participated in the experiment. The activities performed were:

* WALKING (Original Data Set ID = 1).
* WALKING_UPSTAIRS (Original Data Set ID = 2).
* WALKING_DOWNSTAIRS (Original Data Set ID = 3).
* SITTING (Original Data Set ID = 4).
* STANDING (Original Data Set ID = 5).
* LAYING (Original Data Set ID = 6).

## Measurements.

The file tidy_data.txt contains in each row the average of each of the following variables for each activity performed by each subject:

* Frequency_BodyAcc_Mean_X
* Frequency_BodyAcc_Mean_Y
* Frequency_BodyAcc_Mean_Z
* Frequency_BodyAcc_StandardDeviation_X
* Frequency_BodyAcc_StandardDeviation_Y
* Frequency_BodyAcc_StandardDeviation_Z
* Frequency_BodyAccJerk_Mean_X:
* Frequency_BodyAccJerk_Mean_Y
* Frequency_BodyAccJerk_Mean_Z
* Frequency_BodyAccJerk_StandardDeviation_X
* Frequency_BodyAccJerk_StandardDeviation_Y
* Frequency_BodyAccJerk_StandardDeviation_Z
* Frequency_BodyAccMag_Mean
* Frequency_BodyAccMag_StandardDeviation
* Frequency_BodyBodyAccJerkMag_Mean
* Frequency_BodyBodyAccJerkMag_StandardDeviation
* Frequency_BodyBodyGyroJerkMag_Mean
* Frequency_BodyBodyGyroJerkMag_StandardDeviation
* Frequency_BodyBodyGyroMag_Mean
* Frequency_BodyBodyGyroMag_StandardDeviation
* Frequency_BodyGyro_Mean_XFrequency_BodyGyro_Mean_Y
* Frequency_BodyGyro_Mean_Z
* Frequency_BodyGyro_StandardDeviation_X
* Frequency_BodyGyro_StandardDeviation_Y
* Frequency_BodyGyro_StandardDeviation_Z
* Time_BodyAcc_Mean_X
* Time_BodyAcc_Mean_Y
* Time_BodyAcc_Mean_Z
* Time_BodyAcc_StandardDeviation_X
* Time_BodyAcc_StandardDeviation_Y
* Time_BodyAcc_StandardDeviation_Z
* Time_BodyAccJerk_Mean_X
* Time_BodyAccJerk_Mean_Y
* Time_BodyAccJerk_Mean_Z
* Time_BodyAccJerk_StandardDeviation_X
* Time_BodyAccJerk_StandardDeviation_Y
* Time_BodyAccJerk_StandardDeviation_Z
* Time_BodyAccJerkMag_Mean
* Time_BodyAccJerkMag_StandardDeviation
* Time_BodyAccMag_Mean
* Time_BodyAccMag_StandardDeviation
* Time_BodyGyro_Mean_X
* Time_BodyGyro_Mean_Y
* Time_BodyGyro_Mean_Z
* Time_BodyGyro_StandardDeviation_X
* Time_BodyGyro_StandardDeviation_Y
* Time_BodyGyro_StandardDeviation_Z
* Time_BodyGyroJerk_Mean_X
* Time_BodyGyroJerk_Mean_Y
* Time_BodyGyroJerk_Mean_Z
* Time_BodyGyroJerk_StandardDeviation_X
* Time_BodyGyroJerk_StandardDeviation_Y
* Time_BodyGyroJerk_StandardDeviation_Z
* Time_BodyGyroJerkMag_Mean
* Time_BodyGyroJerkMag_StandardDeviation
* Time_BodyGyroMag_Mean
* Time_BodyGyroMag_StandardDeviation
* Time_GravityAcc_Mean_X
* Time_GravityAcc_Mean_Y
* Time_GravityAcc_Mean_Z
* Time_GravityAcc_StandardDeviation_X
* Time_GravityAcc_StandardDeviation_Y
* Time_GravityAcc_StandardDeviation_Z
* Time_GravityAccMag_Mean
* Time_GravityAccMag_StandardDeviation

## Comments on the measurements and the original data set.

The measurements from the previous section were constructed in the following way.

The original measurements come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

where:

* '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
* The 't' at the start indicates 'time domain signals'.
* The 'f' at the start indicates 'frequency domain signals'.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

Several statistics and variables were calculated from this measurements. As previously stated, only the mean and standard deviation were kept.

Finally, each of were averaged
