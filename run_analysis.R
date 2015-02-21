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

##### Read and Merge Test sets ########

x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
names(x_test) <- x_names[,2]

y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
names(y_test) <- "Activity"

subject_test <-  read.table("UCI HAR Dataset/test/subject_test.txt")
names(subject_test) <- "Subject"

test_complete <- x_test
test_complete[,c(562,563)] <- c(y_test, subject_test)

##### Merge Train and Test sets ########

complete_data <- rbind(test_complete, train_complete)

##### Remove Columns Unrelated to mean or standard deviation #######

required_fields <- c("563","562",grep("mean()",names(complete_data)), grep("std()",names(complete_data)))
complete_data <- complete_data[,as.numeric(required_fields)]

##### Replace Activity Number With Activity Name ##########

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

for(i in c(1:nrow(activity_labels))){
  activity_code <- activity_labels[i,1]
  activity_value <- as.character(activity_labels[i,2])
  complete_data$Activity[complete_data$Activity == activity_code] <- activity_value
}

##### Create and write Tidy data Set #########

tidy_data <- aggregate(x= complete_data[,3:81], by= list("Subject" = complete_data$Subject,"Activity" = complete_data$Activity), mean)
write.table(tidy_data, file="tidy_data.txt", row.name= FALSE)

##### remove un-needed variables #########

rm(list = c('x_test','y_test','subject_test','test_complete','train_complete','x_names','x_train','y_train','subject_train','required_fields',
     'activity_code', 'activity_value', 'activity_labels','i'))

