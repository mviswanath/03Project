#-------------------------------------
# NAME: Mala Viswanath
# DATE: 05/22/2015
# CLASS: Coursera - Week 3 - Getting and Cleaning Data
#
# PROJECT:
# Project downloads a dataset with data related to wearable computing 
# In this project we merge training and test data sets, rename
# rows and column variables, clean the data set for future analysis,
# subset the data to columns with measurements related to mean and standard
# deviation, and prepare a report that groups data.
#
#--------------------------------------

#---------------------------------
# Load packages for executing the R program
#--------------------------------
options(warn = -1)
library(plyr)
library(dplyr)

#--------------------------------
#1. Merges the training and the test sets to create one data set.
#--------------------------------

#(a) Build TEST Data Frame - dim(FTEST) is 2947  563
STEST <- read.table("subject_test.txt")
ATEST <- read.table("y_test.txt")
DTEST <- read.table("X_test.txt")
FTEST <- cbind(STEST, ATEST, DTEST)
names(FTEST)[1:2] <- c("Subject", "Activity")

#(b) Build TRAIN Data Frame - dim(FTRAIN) is 7352  563
STRAIN <- read.table("subject_train.txt")
ATRAIN <- read.table("y_train.txt")
DTRAIN <- read.table("X_train.txt")
FTRAIN <- cbind(STRAIN, ATRAIN, DTRAIN)
names(FTRAIN)[1:2] <- c("Subject", "Activity")

#(c) rbind TEST and TRAIN Data Frames - dim(MSET) is 10299   563
MSET <- rbind(FTRAIN, FTEST)

#------------------------------------------------
#2.Extracts only the measurements on the mean and 
#  standard deviation for each measurement
#  Step 2 will be performed after steps 3 and 4.
#------------------------------------------------

# Preserving original merged set for debugging purposes

ESET <- MSET

#-----------------------------
#3.Uses descriptive activity names to 
#  name the activities in the data set
#-----------------------------

ALables <- read.table("activity_labels.txt")
ALevel <- levels(ALables$V2)
ESETROW <- nrow(ESET)
ESET$Activity[1:ESETROW] <- ALevel[as.numeric(ESET$Activity[1:ESETROW])]

#-----------------------------
#4.Appropriately labels the data set 
# with descriptive variable names. 
#-----------------------------

FEATURES <- read.table("features.txt")
FLevel <- levels(FEATURES$V2)
FFactor <- factor(FEATURES$V2)
names(ESET)[3:563] <- FLevel[FFactor[1:561]]

#------------------------------------------------
#2.Extracts only the measurements on the mean and 
#  standard deviation for each measurement
#------------------------------------------------

#TIDY DATA Rule #1.Each variable forms a column.
#Removing duplicate columns - Assuming the first instance 
#of variable in the dataset is the desired one.
#Impact - Number of columns go down from 561 to 479
#-------

ESET <- ESET[, !duplicated(colnames(ESET))]

#TIDY DATA Rule #2.2.Each observation forms a row
#Removing duplicate rows
#Impact - None. There is no drop in the row numbers
#--------------

ESET <- ESET[!duplicated(ESET), ]

# Get index for columns names that contain "mean()" or "std()"
MVector <- grep("mean[(][)]", names(ESET))
SVector <- grep("std", names(ESET))
MeanStd <- append(MVector, SVector)

# Append column index for Subject and Activity
AllVector <- append(c(1,2), MeanStd)

# Extract columns with mean() and std() to create first tidy data set
TIDY_SET1 <- select(ESET, AllVector)

#-----------------------------
#5.From the data set in step 4, creates a second, 
# independent tidy data set with the average of 
# each variable for each activity and each subject.
#
# Write the output to a txt file.Use read,table to verify output
# data <- read.table("W3_Project_Result.txt", header = TRUE)
#-----------------------------

TIDY_SET2 <- ddply(TIDY_SET1, .(Subject, Activity), numcolwise(mean))

#Clean up names of variables 66, 67, 68 - "..BodyBody .."
  names(TIDY_SET2)[66] <- "fBodyAccJerkMag.std.."
  names(TIDY_SET2)[67] <- "fBodyGyroMag.std.."
  names(TIDY_SET2)[68] <- "fBodyGyroJerkMag.std.."

#Write output file
write.table(TIDY_SET2, "W3_Project_Result.txt")
