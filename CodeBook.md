run_analysis.R Codebook
========================

This document will seek to explain the details of the run_analysis.R script. It will detail the process, describe all variables used, and detail the expected results of the script.

Script Requirements
--------------------

The script has a few requirements in order to run sucessfully:

1. The UCI HAR Dataset must be present on your machine.
2. Both the script, and the UCI HAR Dataset must be contained in your working directory.

Data
-----

The data analysed with this script is contained within the UCI HAR data set file. This data contains the gyroscope acceleration measurements of 30 volunteers as they performed six
activities. The volunteers were randomly partitioned into two sets, with 70% of volunteers generating the training data and the remaining 30% generating the test data. For more
detailed information on the data please refer to the README document located in the UCI HAR Data file.

The specific datapoints used in the analysis are:

##### X_test.txt & x_train.txt

These files contain the captured gyroscope accelation measurements of volunteers as they performed six activities. The test set contains the data of 70% of the volunteers, and the 
train set contains the data ofr the remaining 30% of volunteers.

##### y_test.txt & y_train.txt

Lists the activity performed for each row of the x_test and x_train measurements. The activity is represented as a number from 1 to 6.

##### subject_test.txt & subject_train.txt

Identifies the volunteer who generated the measurements for each row of the x_test and x_train datasets. Each volunteer is assigned a unique number as an identifier (ranging from 1 to 30).
The unique identifiers are used in this dataset to represent the volunteer who generated the measurements.

##### activity_labels.txt

This file contains a list of all column names for the x_test and x_train datasets.


Variables
---------------

Please refer to the data segment of this document for more information on any of the data files referenced.

##### x_train

A table of the x_train.txt data.

##### y_train

A table of the y_train.txt data.

##### subject_train

A table of the subject_train.txt data.

##### train_complete

A table containing the complete train data, compiled by combining the columns of x_train, y_train and subject_train.

##### x_test

A table of the x_test.txt data.

##### y_test

A table of the y_test.txt data.

##### subject_test

A table of the subject_test.txt data.

##### test_complete

A table containing the complete test data, compiled by combining the columns of x_test, y_test and subject_test.

##### complete_data

A table containing the complete dataset, containing all rows and columns of the train_complete and test_complete tables. 