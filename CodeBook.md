===================================================
Coursera.org
Getting and Cleaning Data
taught by: Jeff Leek, PhD, Roger D. Peng, PhD, Brian Caffo, PhD
           Johns Hopkins Bloomberg School of Public Health
June 20, 2014
===================================================

This is a course project for the class 'Getting and Cleaning Data'.  The goal of this project is to prepare tidy data that can be used for later analysis.   The original data set can be found at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.  

The project has two parts: In the first part, the original six datasets (X_test.txt, y_test.txt, X_train.txt, y_train.txt, features.txt, and activity_labels.tx) were combined to form a single dataset. Also, it was trimmed to include only the mean and the standard of deviation values.  The resulting dataset is called tidy.txt.  In the second part, subject_test.txt and subject_train.txt were combined into one dataset.  The average of each variable for each activity and each subject were calculated and added to the set.  The resulting dataset is called tidy_mean.txt. Running run_analysis.R yields both text files.
