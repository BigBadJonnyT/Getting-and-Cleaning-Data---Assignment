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

#### X_test.txt

Part of the test data, this file contains the captured gyroscope accelation measurements of volunteers as they performed the six activities.

#### y_test.txt

Lists the activity performed for each row of the x_test measurements. The activity is represented as a number from 1 to 6.

#### subject_test.txt

Identifies the volunteer who generated the measurements for each row of the x_test dataset. Each volunteer is assigned a unique number as an identifier (ranging from 1 to 30).
The unique identifiers are used in this dataset to represent the volunteer who generated the measurements.

Script Process
---------------

The script will run automatically upon being sourced into R. Once run the script will compile the separate data points into tables, and assign column names to the tables.
 
