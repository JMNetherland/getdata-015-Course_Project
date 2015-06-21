---
title: "README"
author: "Jason M. Netherland"
date: "2015-06-13"
output:
  html_document:
    keep_md: yes
---

## Project Description
The goal of the project is to create a tidy dataset from a collection of sensor
data that contains on the means and standard deviation observations.

##Study design and data processing

###Collection of the raw data
The data was downloaded from:
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip]()  

A full description is available at the site where the data was obtained: 
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]()

###Notes on the original (raw) data 
The original data is split into a test and train partition.

##Creating the tidy datafile

###Guide to create the tidy data file
1. download the data
2. unzip the data
3. import data into R
4. merge labels with y record
5. create column names
6. determine which rows are means or standard deviation rows
7. combine x, y, and subject data
8. add Partition Group column for test or train data
9. combine test and train data into a single data frame
10. melt data to create a thin tidy dataset
11. use ddply to group and calculate means
