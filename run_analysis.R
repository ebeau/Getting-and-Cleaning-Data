# Week 3
# Project

# You should create one R script called run_analysis.R that does the following. 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. Creates a second, independent tidy data set with the average of each variable for
#    each activity and each subject. 



if (!file.exists("~/Coursera/gettingAndCleaningData/project")) {
        dir.create("~/Coursera/gettingAndCleaningData/project")
}

# right-click on the link given, click on 'Copy Link Location', and paste it
# Don't break the line.  If you do, you get an error message when try to unzip it.
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

# Telling computer that I want to put the file in the working directory and call it 
# Dataset.zip
# method = 'curl' is for https, the secured website
download.file(fileUrl, destfile = "~/Coursera/gettingAndCleaningData/project/Dataset.zip",
              method = "curl")

# Keep track of the downloaded date, because the site content might change 
dateDownloaded <- date() # "Mon Jun 16 09:50:58 2014"

# unzip the file
unzip('Dataset.zip')

# check what files are in the directory
list.files("~/Coursera/gettingAndCleaningData/project") # "Dataset.zip" "UCI HAR Dataset"

# unzipping created the 'UCI HAR Dataset' directory.  Set the working directory to there.
setwd('~/Coursera/gettingAndCleaningData/project/UCI HAR Dataset')
list.files(".") # print out the content of the current working directory
# It contains 3 .txt files, README file, and 2 subdirectories. Open and read README file
# about variables.

# print out the content of the subdirectories 
list.files("test")
list.files("train")

######################################### PART 1 #######################################
# load all .txt files into R
# View(), str(), head(), or tail() them
X_test <- read.table("test/X_test.txt") # 2947 obs, 561 vars; float
y_test <- read.table("test/y_test.txt") # 2947 obs, 1 var; int
subject_test <- read.table("test/subject_test.txt") # 2947 obs, 1 var; int
X_train <- read.table("train/X_train.txt") # 2947 obs, 561 vars; float
y_train <- read.table("train/y_train.txt") # 2947 obs, 1 var; int
subject_train <- read.table("train/subject_train.txt") # 2947 obs, 1 var; int
features <- read.table("features.txt") # 561 obs, 2 vars; (int, Acc-mean...)
labels <- read.table("activity_labels.txt") # 6 obs, 2 vars; (int, WALKING...)

# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# The columns in all the files have the default variable names V1, V2, ..., etc. 
# Override this default and use read.table's optional argument col.names to assign
# variable names. This argument takes a vector of names.
# Let's read in the files with this optional argument.
X_test <- read.table("test/X_test.txt", col.names = features[,2])
X_train <- read.table("train/X_train.txt", col.names = features[,2])
y_test <- read.table("test/y_test.txt", col.names = c('activity'))
y_train <- read.table("train/y_train.txt", col.names = c('activity'))

# Make sure they have right labels.
head(X_test, 2)
head(y_test, 2)
head(X_train, 2)
head(y_train, 2)

# 1. Merges the training and the test sets to create one data set.
x <- rbind(X_train, X_test) # 10299 obs. of  561 variables; float
y <- rbind(y_train, y_test) # 10299 obs. of  1 variable; int


# 2. Extracts only the measurements on the mean and standard deviation for each
#    measurement.
# I only need to read in the second column from features.txt for this purpose.
sub.features <- features[grep("(mean|std)\\(", features[,2]),]
# Subsetting x
mean_and_std <- x[, sub.features[,1]]

# Preparing to add the activity column
for (i in 1:nrow(labels)) {
        code <- as.numeric(labels[i, 1])
        name <- as.character(labels[i, 2])
        y[y$activity == code, ] <- name
}

# Adding the activity column
x_with_activity <- cbind(y, x) # x with all measurement variables - the activity column added.
x_with_activity_trimmed <- cbind(y, mean_and_std) # x with just mean and std + the activity column.

## write first result data set to csv
write.csv(x_with_activity_trimmed, "x_trimmed.txt")


####################################### PART 2 #########################################
# 5. Creates a second, independent tidy data set with the average of each variable
# for each activity and each subject.
subject_test <- read.table("test/subject_test.txt", col.names = c('subject'))
subject_train <- read.table("train/subject_train.txt", col.names = c('subject'))
subject <- rbind(subject_test, subject_train)
averages <- aggregate(x, by = list(activity = y[,1], subject = subject[,1]), mean)

write.csv(averages, file='result.txt', row.names=FALSE)