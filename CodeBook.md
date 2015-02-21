run_analysis.R Codebook
========================

This document will seek to explain the details of the run_analysis.R script. It will detail the process, describe all variables used, and detail the expected results of the script.

Script Requirements
--------------------

The script has a few requirements in order to run sucessfully:

1. The UCI HAR Dataset must be present on your machine.You can acquire the data [from this link.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) Once downloaded the data should be extracted to your working directory.
2. Both the script, and the UCI HAR Dataset must be contained in your working directory.
3. Patience. The script has not been optimised and is "not the quickest of cats at the best of times", so please be patient while it runs :-)

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

##### required_fields

A list of all fileds being kept in the complete data set.

##### complete_data

A table containing all rows of data for all data sets. The columns kept are those listed in the required_fields variable. 

##### tidy_data

This table contains each unique Subject and Activity combination from the complete data set. Each subsequent column contains the average of that column for all rows with that Subject and 
Activity combination.


Analysis Process
-----------------

The run_analysis.R script will run automatically upon being sourced. Once run it will perform the following actions:

1. Read the features.txt data into a data.frame. This is stored under the variable x_names.
2. Read the x_train.txt data into a data.frame. This is stored under the x_train variable.
3. Label the columns of the x_train variable.
4. Read the y_train.txt data into a data.frame. This is stored under the y_train variable. 
5. Label the column of the y_train data variable. 
6. Read the subject_train.txt data into a data.frame. This is stored under the subject_train variable. 
7. Label the column subject_train variable. 
8. Combine the y_train, subject_train and x_train columns into a single data.frame. This is stored under the train_complete variable.
9. Read the x_test.txt data into a data.frame. This is stored under the variable x_test.
10. Label the columns of the x_test variable. 
11. read the y_test.txt data into a data.frame. This is stored under the variable y_test.
12. Label the column of the y_test cariable. 
13. Read the subject_test.txt data into a data.frame. This is stored under the variable subject_test.
14. Label the column of the subject_test variable. 
15. Combine the y_test, subject_test and x_test columns into a single data.frame. This is stored under the test_complete variable. 
16. Combine the rows of the train_complete and test_complete tables into a single data.frame. This is stored under the variable complete_data.
17. Read the activity_labels.txt data into a data.frame. This is stored under the variable activity_labels.
18. Replace each row of the Activity column of the complete_data table with the name of the activity. 
19. Create a new table containing each unique Subject + Activity combination from the complete_data table, and the average of all other columns for rows that match that Subject + Activity combination.