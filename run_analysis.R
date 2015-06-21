##Source Packages needed in script
library(plyr)
library(reshape2)

## Downloads file from internet then unzips it into the a data directory
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,  destfile = "./dataset.zip")
zipfile <- "./dataset.zip"
unzip(zipfile, exdir = "./data")

## Read in the Labels and Features 
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", head = FALSE, stringsAsFactors = FALSE)
features_raw <-read.table("./data/UCI HAR Dataset/features.txt", head = FALSE, stringsAsFactors = FALSE)

## Create a vector of the ranges for the mean and std columns
mean_std <- grep("mean\\(\\)|std\\(\\)",features_raw$V2)

## Create a vector for the features to be used to create column names for X data
features <- features_raw$V2

##  Bring in RAW test data
test_y_raw <- read.table("./data/UCI HAR Dataset/test/y_test.txt", head = FALSE, stringsAsFactors = FALSE)
test_x_raw <- read.table("./data/UCI HAR Dataset/test/x_test.txt", head = FALSE, stringsAsFactors = FALSE)
test_subject_raw <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", head = FALSE, stringsAsFactors = FALSE)

##  Merge activity_labels with test_y_raw
test_activity_labels <- merge(test_y_raw, activity_labels)

## Set test column names
colnames(test_x_raw) <- features
colnames(test_activity_labels) <- c("Activity_ID", "Activity")
colnames(test_subject_raw) <- c("Subject")

## Create Partition_Group column for test
test_subject_raw$Subject_Group <- "Test"

## Create a data frame of text x with only mean and std observations
test_x <- test_x_raw[,mean_std]

##  Combine Subject, x, and y data
test_data <- cbind(test_subject_raw,test_activity_labels,test_x)

##  Bring in RAW train data
train_y_raw <- read.table("./data/UCI HAR Dataset/train/y_train.txt", head = FALSE, stringsAsFactors = FALSE)
train_x_raw <- read.table("./data/UCI HAR Dataset/train/x_train.txt", head = FALSE, stringsAsFactors = FALSE)
train_subject_raw <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", head = FALSE, stringsAsFactors = FALSE)

##  Merge activity_labels with train_y_raw
train_activity_labels <- merge(train_y_raw, activity_labels)

## Set train column names
colnames(train_x_raw) <- features
colnames(train_activity_labels) <- c("Activity_ID", "Activity")
colnames(train_subject_raw) <- c("Subject")

## Create Partition_Group column for train
train_subject_raw$Subject_Group <- "Train"

## Create a data frame of text x with only mean and std observations
train_x <- train_x_raw[,mean_std]

##  Combine Subject, x, and y data
train_data <- cbind(train_subject_raw, train_activity_labels,train_x)

## Combine test_data with train data using rbind
full_data <- rbind(test_data,train_data)

## Drop unneeded columns
full_data_2 <- full_data[,c(1,4:70)]

## Melt data on Subject and Activity
full_melt <- melt(full_data_2, id = c(.(Subject,Activity)))

## Calculate Means on Subject, Activity and Feature
data_means <- ddply(full_melt, .(Subject, Activity, Feature = variable), summarize, Mean = mean(value))

## Write final tidy data table to txt file
write.table(data_means, file = "./data/data_means.txt", col.names = T, row.names = F)
