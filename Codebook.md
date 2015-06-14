---
title: "Codebook"
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


###Cleaning of the data
Short, high-level description of what the cleaning script does. [link to the readme document that describes the code in greater detail]()

##Description of the variables in the tiny_data.txt file
General description of the file including:
 - Dimensions of the dataset
 - Summary of the data
 - Variables present in the dataset

(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

###Variable 1 (repeat this section for all variables in the dataset)
Short description of what the variable describes.

Some information on the variable including:
 - Class of the variable
 - Unique values/levels of the variable
 - Unit of measurement (if no unit of measurement list this as well)
 - In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels). 

(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

####Notes on variable 1:
If available, some additional notes on the variable not covered elsewehere. If no notes are present leave this section out.

##Sources
Sources you used if any, otherise leave out.

##Annex
If you used any code in the codebook that had the echo=FALSE attribute post this here (make sure you set the results parameter to 'hide' as you do not want the results to show again)