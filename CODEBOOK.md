---

Title: CODEBOOK.md

Author: Mala Viswanath

Date: May 24, 2015

Output: W3_Project_Result.txt

---

## Project Description
The purpose of this Coursera project is to demonstrate our ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

##Study design and data processing
The students use the above principles to clean the data set. The input is a collection of measurements gathered from a group of 30 volunteers while performing 6 different activities(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING). 
 
###Collection of the raw data
The volunteers were wearing a smartphone on the waist. The sensor signals (accelerometer and gyroscope)generated the raw data. 

Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

###Notes on the original (raw) data 

The data files for test are:
* test/X_test.txt': Test set (2947 x 561)
* test/y_test.txt': Test Activity Labels.(1 x 561)
* subject_test.txt: Subjects (1 x 561)

The data files for training are:
* test/X_train.txt': Train set (7352 x 561)
* test/y_train.txt': Train Activity Labels.(1 x 561)
* subject_train.txt: Subjects (1 x 561)

The files with label descriptions are:
* activity_lablel.txt: Labels for six different activity types
* features.txt: Labels for 561 features measured

##Creating the tidy datafile

###Guide to create the tidy data file

Download the zip file from this [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ). Unzip the files in your local drive. Use read.table to read the text files into R Studio variables. Combine data tables for subject_train.txt, y_train.txt and X_train.txt to create data table for training. Similarly combine data tables for subject_test.txt, y_test.txt and X_test.txt to create data table for testing.

###Cleaning of the data

The cleaning script executes the following steps to clean the data. 

* Merges the training and the test sets to create one data set.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* Extracts only the measurements on the mean and standard deviation
* Used above to create tidy data set with the average of each variable for each activity and each subject.

 Access the following [link](https://github.com/mviswanath/03Project/blob/master/README.md) for more deatiled review of the script.

##Description of the variables in the W3_Project_Result.txt file

General description of the file including:

 - Dimensions of the dataset: 180 x 68

 - Summary of the data: This is a tidy data set with the average of each variable measured for each activity and each subject.

 - Variables present in the dataset

####Variable 1 - Subject

The study had 30 volunteers. They have been identified with sequential ids 1 through 30. The first column tells us which subject performed the activity. There is no unit of measurement associated with this variable.

####Variable 2 - Activity

This is a factor varible with six levels. It represents the six activities performed by the subject. These levles are as follows:

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

####Variable 3,4,5 - tBodyAcc.mean
Var 3 - tBodyAcc.mean...X
Var 4 - tBodyAcc.mean...Y
Var 5 - tBodyAcc.mean...Z

tBodyAcc.mean-XYZ are mean of time domain signals (prefix 't' to denote time) that capture Body Acceleration(BodyAcc) across the three axis. The output file has mean of tBodyAcc.mean across the three axis.

####Variable 6,7,8 - tGravityAcc.mean
Var 3 - tGravityAcc.mean...X
Var 4 - tGravityAcc.mean...Y
Var 5 - tGravityAcc.mean...Z
 
tGravityAcc.mean-XYZ are mean of time domain signals (prefix 't' to denote time) that capture Gravity Acceleration(GravityAcc) across the three axis. The output file has mean of tGravityAcc.mean across the three axis.
 
####Variable 9,10,11 - tBodyAccJerk.mean
Var 9  - tBodyAccJerk.mean...X
Var 10 - tBodyAccJerk.mean...Y
Var 11 - tBodyAccJerk.mean...Z

tBodyAccJerk.mean-XYZ are mean of time domain signals (prefix 't' to denote time) that capture Body Acceleration Jerk signals (BodyAccJerk) across the three axis. Note the body linear acceleration was derived in time to obtain Jerk signals. The output file has mean of tBodyAccJerk.mean across the three axis.

####Variable 12,13,14 - tBodyGyro.mean
Var 12 - tBodyGyro.mean...X
Var 13 - tBodyGyro.mean...Y
Var 14 - tBodyGyro.mean...Z

tBodyGyro.mean-XYZ are mean of time domain signals (prefix 't' to denote time) that capture  signals from gyroscope(BodyGyro) across the three axis. The output file has mean of tBodyGyro.mean across the three axis.

####Variable 15,16,17 - tBodyGyroJerk.mean
Var 15 - tBodyGyroJerk.mean...X
Var 16 - tBodyGyroJerk.mean...Y
Var 17 - tBodyGyroJerk.mean...Z

The body linear acceleration was derived in time to obtain Jerk signals. tBodyGyroJerk.mean-XYZ variables are mean of time domain signals (prefix 't' to denote time) that capture  signals from gyroscope and do time derivation from these variables(BodyGyroJerk) across the three axis. The output file has mean of tBodyGyroJerk.mean across the three axis.

####Variable 18 - tBodyAccMag.mean

tBodyAccMag contains magnitude of the three-dimensional signal, tBodyAcc, that was calculated using the Euclidean norm. tBodyAccMag.mean is the mean of time domain signal tBodyAccMag. The output file has mean of tBodyAccMag.mean. 

####Variable 19 - tGravityAccMag.mean

tGravityAccMag contains magnitude of the three-dimensional signal, tGravityAcc, that was calculated using the Euclidean norm. tGravityAccMag.mean is the mean of time domain signal tGravityAccMag.The output file has mean of tGravityAccMag.mean.

####Variable 20 - tBodyAccJerkMag.mean

tBodyAccJerkMag contains magnitude of the three-dimensional signal, tBodyAccJerk, that was calculated using the Euclidean norm. tBodyAccJerkMag.mean is the mean of time domain signal tBodyAccJerkMag. The output file has mean of tBodyAccJerkMag.mean.

####Variable 21 - tBodyGyroMag.mean

tBodyGyroMag contains magnitude of the three-dimensional signal, tBodyGyro, that was calculated using the Euclidean norm. tBodyGyroMag.mean is the mean of time domain signal tBodyGyroMag.The output file has mean of tBodyGyroMag.mean.

####Variable 22 - tBodyGyroJerkMag.mean

tBodyGyroJerkMag contains magnitude of the three-dimensional signal, tBodyGyroJerk, that was calculated using the Euclidean norm. tBodyGyroJerkMag.mean is the mean of time domain signal tBodyGyroJerkMag. The output file has mean of tBodyGyroJerkMag.mean.

####Variable 23,24,25 - fBodyAcc.mean
Var 23 - fBodyAcc.mean...X
Var 24 - fBodyAcc.mean...Y
Var 25 - fBodyAcc.mean...Z

Fast Fourier Transform (FFT) was applied to Body Acceleration signals producing fBodyAcc-XYZ. fBodyAcc.mean are mean of frequency domain signals (prefix 'f' to denote frequency) that capture Body Acceleration(BodyAcc) across the three axis. The output file has mean of fBodyAcc.mean-XYZ in respective columns.

####Variable 26,27,28 - fBodyAccJerk.mean
Var 26 - fBodyAccJerk.mean...X
Var 27 - fBodyAccJerk.mean...Y
Var 28 - fBodyAccJerk.mean...Z

Fast Fourier Transform (FFT) was applied to Body Acceleration Jerk signals producing fBodyAccJerk-XYZ. fBodyAccJerk.mean are mean of frequency domain signals (prefix 'f' to denote frequency) that capture Body Acceleration Jerk(BodyAccJerk) across the three axis. The output file has mean of fBodyAccJerk.mean-XYZ in respective columns.

####Variable 29,30,31 - fBodyGyro.mean
Var 29 - fBodyGyro.mean...X
Var 30 - fBodyGyro.mean...Y
Var 31 - fBodyGyro.mean...Z

Fast Fourier Transform (FFT) was applied to Gyroscope signals producing fBodyGyro-XYZ. fBodyGyro.mean are means of frequency domain signals (prefix 'f' to denote frequency) that capture body gryroscope signals(BodyGyro) across the three axis. The output file has mean of fBodyGyro.mean-XYZ in respective columns.

####Variable 32 - fBodyAccMag.mean

fBodyAccMag contains Fast Fourier Transform (FFT) of, magnitude of Body Acceleration. fBodyAccMag.mean is the mean of frequency domain signal fBodyAccMag. The output file has mean of fBodyAccMag.mean

####Variable 33 - fBodyAccJerkMag.mean

fBodyAccJerkMag contains Fast Fourier Transform (FFT) of, magnitude of Body Acceleration Jerk signals.fBodyAccJerkMag.mean is the mean of frequency domain signal fBodyAccMag. The output file has mean of fBodyAccJerkMag.mean

####Variable 34 - fBodyGyroMag.mean

fBodyGyroMag contains Fast Fourier Transform (FFT) of, magnitude of Gyroscope signals. fBodyGyroMag.mean is the mean of frequency domain signal fBodyGyroMag. The output file has mean of fBodyGyroMag.mean

####Variable 35 - fBodyGyroJerkMag.mean

fBodyGyroMag contains Fast Fourier Transform (FFT) of, magnitude of Gyroscope Jerk signals. fBodyGyroJerkMag.mean is the mean of frequency domain signal fBodyGyroJerkMag. The output file has mean of fBodyGyroJerkMag.mean

####Variable 36 to 38 - tBodyAcc.std
Var 36: tBodyAcc.std...X
Var 37: tBodyAcc.std...Y
Var 38: tBodyAcc.std...Z

tBodyAcc.std-XYZ are standard deviation of time domain signals (prefix 't' to denote time) that capture Body Acceleration(BodyAcc) across the three axis. The output file has mean of tBodyAcc.std across the three axis.

####Variable 39 to 41 - tGravityAcc.std
Var 39: tGravityAcc.std...X
Var 40: tGravityAcc.std...Y
Var 41: tGravityAcc.std...Z

tGravityAcc.std-XYZ are standard deviation of time domain signals (prefix 't' to denote time) that capture Gravity Acceleration(GravityAcc) across the three axis. The output file has mean of tGravityAcc.std across the three axis.

####Variable 42 to 44 - tBodyAccJerk.std
Var 42: tBodyAccJerk.std...X
Var 43: tBodyAccJerk.std...Y
Var 44: tBodyAccJerk.std...Z

tBodyAccJerk.std-XYZ are standard deviation of time domain signals (prefix 't' to denote time) that capture Body Acceleration Jerk signals (BodyAccJerk) across the three axis. Note the body linear acceleration was derived in time to obtain Jerk signals. The output file has mean of tBodyAccJerk.std across the three axis.

####Variable 45 to 47 - tBodyGyro.std
Var 45: tBodyGyro.std...X
Var 46: tBodyGyro.std...Y
Var 47: tBodyGyro.std...Z

tBodyGyro.std-XYZ are standard deviation of time domain signals (prefix 't' to denote time) that capture  signals from gyroscope(BodyGyro) across the three axis. The output file has mean of tBodyGyro.std across the three axis.

####Variable 48 to 50 - tBodyGyroJerk.std
Var 48: tBodyGyroJerk.std...X
Var 49: tBodyGyroJerk.std...Y
Var 50: tBodyGyroJerk.std...Z

The body linear acceleration was derived in time to obtain Jerk signals. tBodyGyroJerk.std-XYZ variables are standard deviation of time domain signals (prefix 't' to denote time) that capture  signals from gyroscope and do time derivation from these variables(BodyGyroJerk) across the three axis. The output file has mean of tBodyGyroJerk.std across the three axis.

Var 51: tBodyAccMag.std..

tBodyAccMag contains magnitude of the three-dimensional signal, tBodyAcc, that was calculated using the Euclidean norm. tBodyAccMag.std is the standard deviation of time domain signal tBodyAccMag. The output file has mean of tBodyAccMag.std.

Var 52: tGravityAccMag.std..

tGravityAccMag contains magnitude of the three-dimensional signal, tBodyAccJerk, that was calculated using the Euclidean norm. tGravityAccMag.std is the standard deviation of time domain signal tGravityAccMag. The output file has mean of tGravityAccMag.std.

Var 53: tBodyAccJerkMag.std..

tBodyAccJerkMag contains magnitude of the three-dimensional signal, tBodyAccJerk, that was calculated using the Euclidean norm. tBodyAccJerkMag.std is the standard deviation of time domain signal tBodyAccJerkMag. The output file has mean of tBodyAccJerkMag.std.

Var 54: tBodyGyroMag.std..

tBodyGyroMag contains magnitude of the three-dimensional signal, tBodyGyro, that was calculated using the Euclidean norm. tBodyGyroMag.std is the standard deviation of time domain signal tBodyGyroMag.The output file has mean of tBodyGyroMag.std.

Var 55: tBodyGyroJerkMag.std..

tBodyGyroJerkMag contains magnitude of the three-dimensional signal, tBodyGyroJerk, that was calculated using the Euclidean norm. tBodyGyroJerkMag.std is the standard deviation of time domain signal tBodyGyroJerkMag. The output file has mean of tBodyGyroJerkMag.std.

####Variable 56 to 58 - fBodyAcc.std
Var 56: fBodyAcc.std...X
Var 57: fBodyAcc.std...Y
Var 58: fBodyAcc.std...Z

Fast Fourier Transform (FFT) was applied to Body Acceleration signals producing fBodyAcc-XYZ. fBodyAcc.std are standard deviation of frequency domain signals (prefix 'f' to denote frequency) that capture Body Acceleration(BodyAcc) across the three axis. The output file has mean of fBodyAcc.std-XYZ in respective columns.

####Variable 59 to 61 - fBodyAccJerk.std
Var 59: fBodyAccJerk.std...X
Var 60: fBodyAccJerk.std...Y
Var 61: fBodyAccJerk.std...Z

Fast Fourier Transform (FFT) was applied to Body Acceleration Jerk signals producing fBodyAccJerk-XYZ. fBodyAccJerk.std are standard deviation of frequency domain signals (prefix 'f' to denote frequency) that capture Body Acceleration Jerk(BodyAccJerk) across the three axis. The output file has mean of fBodyAccJerk.std-XYZ in respective columns.

####Variable 62 to 64 - fBodyGyro.std
Var 62: fBodyGyro.std...X
Var 63: fBodyGyro.std...Y
Var 64: fBodyGyro.std...Z

Fast Fourier Transform (FFT) was applied to Gyroscope signals producing fBodyGyro-XYZ. fBodyGyro.std are standard deviation of frequency domain signals (prefix 'f' to denote frequency) that capture body gryroscope signals(BodyGyro) across the three axis. The output file has mean of fBodyGyro.std-XYZ in respective columns.

Var 65: fBodyAccMag.std..
fBodyAccMag contains Fast Fourier Transform (FFT) of, magnitude of Body Acceleration. fBodyAccMag.std is standard deviation of frequency domain signal fBodyAccMag. The output file has mean of fBodyAccMag.std.

Var 66: fBodyAccJerkMag.std..
fBodyAccJerkMag contains Fast Fourier Transform (FFT) of, magnitude of Body Acceleration Jerk signals.fBodyAccJerkMag.std is standard deviation of frequency domain signal fBodyAccMag. The output file has mean of fBodyAccJerkMag.std.

Var 67: fBodyGyroMag.std..
fBodyGyroMag contains Fast Fourier Transform (FFT) of, magnitude of Gyroscope signals. fBodyGyroMag.std is standard deviation of frequency domain signal fBodyGyroMag. The output file has mean of fBodyGyroMag.std.

Var 68: fBodyGyroJerkMag.std..
fBodyGyroMag contains Fast Fourier Transform (FFT) of, magnitude of Gyroscope Jerk signals. fBodyGyroJerkMag.std is standard deviation of frequency domain signal fBodyGyroJerkMag. The output file has mean of fBodyGyroJerkMag.std.