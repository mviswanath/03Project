##README.md

######Author: Mala Viswanath
######Date: May 24, 2015
######Context: Data Scientist Specialization Track
######Course: Getting and Cleaning Data - Week 3 - Project

###Purpose:
This README provides the reader an understanding of the script that was used to create Tidy Data set from measurements gathered by wearable computing devices.

###Background:
The purpose of this Coursera project is to demonstrate our ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. The principles of Tidy Data are as follows:

   1.Each variable forms a column.
   2.Each observation forms a row.
   3.Each type of observational unit forms a table. 

The students use the above principles to clean the data set. The input is a collection of measurements gathered from a group of 30 volunteers while performing 6 different activities. The volunteers were wearing a smartphone on the waist. The sensor signals (accelerometer and gyroscope)generated the raw data.  The output is a file with 180 rows (6 activities * 30 volunteers)and 68 columns (66 measurments, Subject col, Activity col).See Codebook.md for details on the input and output variables.

###GiHub Upload:
The GitHub Upload includes the following files:
- README.md - This md file.
- CODEBOOK.md - Data dictionary for the input and output variables
- Run_Analysis.R - Script that creates the Tidy data set for class project

###Script:

####Summary:
1. Merges the training and the test sets to create one data set.
2. Uses descriptive activity names to name the activities in the data set
3. Appropriately labels the data set with descriptive variable names. 
4. Extracts only the measurements on the mean and standard deviation
5. Used above to create tidy data set with the average of each variable for each activity and each subject.

####Detailed Script - Step 1: Merge Training and Test

(a) Build TEST Data Frame(FTEST). The measurements are in X_test.txt. The subjects and activities corresponding to the measurements are in subject_test.txt and y_test.txt. Use cbind to combine the three files into one table. Name the column 1 to "Subject" and column 2 to "Activity". The resulting dimension of the table is 2947 x 563.

(b) Build TRAIN Data Frame(FTRAIN).The measurements are in X_train.txt. The subjects and activities corresponding to the measurements are in subject_train.txt and y_train.txt. Use cbind to combine the three files into one table. Name the column 1 to "Subject" and column 2 to "Activity". The resulting dimension of the table is 7352 x 563.

(c) rbind TEST and TRAIN Data Frames(ESET). The resulting dimension of the data set is 10299  x 563.

####Detailed Script - Step 2: Descriptive activity names 

The activity names are in the file activity_labels.txt. Read the values into a table with read.table. Use levels command to extract the descriptive names of the activities(ALevel). Replace activity number in Activity column by indexing into Alevel.

####Detailed Script - Step 3: Label data frame columns

The feature names are in the features.txt. Read the values into a table with read.table (FEATURES). Extract the levels and factors associated with the features. 

Note column 1 and column 2 of the ESET are reserved for Subject and Activity. Hence label columns 3 through 563, with data from FEATURES table.

####Detailed Script - Step 4: Extract mean and standard deviation

Here we will execute script to clean the data set prior to extracting measurements for mean and standard deviation.

(a) Rule 1 - Each variable forms a column.Remove duplicate columns via duplicated function. I am sssuming the first instance of variable in the dataset is the desired one. The net impact of calling this function is the number of columns go down from 561 to 479.

(b) Rule 2 - Each observation forms a row. Call duplicated function to remove duplicate rows.There is no drop in the row numbers after executing this call. I am assuming there were no duplicate rows.

(c) Extract columns with mean() suffix in their name. Use grep command to search and extract column indexes. Extract columns with std() suffix in their name. Use grep command to search and extract column indexes.

(d) Make a single vector with indexes from above searches. Append indexes for subject and activity.

(e) Use select function call to select the columns with indexes in the vector generated in (d) to create the first Tidy data set. (TIDY_SET1)

####Detailed Script - Step 5: Compute average across multiple columns

(a) Use ddply function to create the final TIDY data set. Split the data frame by Subject and Activity. Apply mean to all measurement columns. Use numcolwise option for this (TIDY_SET2)

(b) Use write.table command to write the data into a txt file (W3_Project_Result.txt). Use data <- read.table("W3_Project_Result.txt", header = TRUE) to read the data back into a table in R.


