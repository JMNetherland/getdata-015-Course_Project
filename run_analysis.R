## Downloads file from internet then unzips it into the a data directory
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,  destfile = "./dataset.zip")
zipfile <- "./dataset.zip"
unzip(zipfile, exdir = "./data")

## Read in the Labels and Features 
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", head = FALSE, stringsAsFactors = FALSE)
features_raw <-read.table("./data/UCI HAR Dataset/features.txt", head = FALSE, stringsAsFactors = FALSE)

## Create a vector of the ranges for the mean and std columns
mean_std <- c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,266:271,345:350,424:429,503:504,516:517,529:530,542:543,556:561)

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
colnames(test_subject_raw) <- c("User_ID")

## Create a data frame of text x with only mean and std observations
test_x <- test_x_raw[,mean_std]

##  Combine Subject, x, and y data
test_data <- cbind(test_subject_raw,test_activity_labels,test_x)

## Create Partition_Group column for test
test_data$Partition_Group <- "Test"

##  Bring in RAW train data
train_y_raw <- read.table("./data/UCI HAR Dataset/train/y_train.txt", head = FALSE, stringsAsFactors = FALSE)
train_x_raw <- read.table("./data/UCI HAR Dataset/train/x_train.txt", head = FALSE, stringsAsFactors = FALSE)
train_subject_raw <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", head = FALSE, stringsAsFactors = FALSE)

##  Merge activity_labels with train_y_raw
train_activity_labels <- merge(train_y_raw, activity_labels)

## Set train column names
colnames(train_x_raw) <- features
colnames(train_activity_labels) <- c("Activity_ID", "Activity")
colnames(train_subject_raw) <- c("User_ID")

## Create a data frame of text x with only mean and std observations
train_x <- train_x_raw[,mean_std]

##  Combine Subject, x, and y data
train_data <- cbind(train_subject_raw,train_activity_labels,train_x)

## Create Partition_Group column for train
train_data$Partition_Group <- "Train"

## Combine test_data with train data using rbind
tidy_data <- rbind(test_data,train_data)

## Write final tidy data table to txt file
write.table(tidy_data, file = "./data/tidy_data.txt", col.names = T, row.names = F)

