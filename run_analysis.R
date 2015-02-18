####### Column names for x sets ########
x_names <- read.table("UCI HAR Dataset/features.txt")

##### Read and Merge Train Sets ########
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
names(x_train) <- x_names[,2]

y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
names(y_train) <- "Activity"

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
names(subject_train) <- "Subject"

train_complete <- x_train
train_complete[,c(562,563)] <- c(y_train, subject_train)

##### Remove un-needed train sets #######

rm(x_train)
rm(y_train)
rm(subject_train)

# Read and Merge Test sets

x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
names(x_test) <- x_names[,2]

y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
names(y_test) <- "Activity"

subject_test <-  read.table("UCI HAR Dataset/test/subject_test.txt")
names(subject_test) <- "Subject"

test_complete <- x_test
test_complete[,c(562,563)] <- c(y_test, subject_test)

##### Remove un-needed test sets ##########

rm(x_test)
rm(y_test)
rm(subject_test)

##### Merge Train and Test sets ########

combined_data <- rbind(test_complete, train_complete)

#completeSet <- rbind(x_train, x_test)

#names(y) <- "Subject"
