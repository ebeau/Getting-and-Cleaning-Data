===================================================
Coursera.org
Getting and Cleaning Data
taught by: Jeff Leek, PhD, Roger D. Peng, PhD, Brian Caffo, PhD
           Johns Hopkins Bloomberg School of Public Health
June 20, 2014
===================================================

This is a course project for the class 'Getting and Cleaning Data'.  The goal of this project is to prepare tidy data that can be used for later analysis.   The original data set can be found at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.  

The project has two parts: In the first part, the original six datasets (X_test.txt, y_test.txt, X_train.txt, y_train.txt, features.txt, and activity_labels.tx) were combined to form a single dataset. Also, it was trimmed to include only the mean and the standard of deviation values.  The resulting dataset is called tidy.txt.  In the second part, subject_test.txt and subject_train.txt were combined into one dataset.  The average of each variable for each activity and each subject were calculated and added to the set.  The resulting dataset is called tidy_mean.txt. Running run_analysis.R yields both text files.

Variables:
[1] "activity"                    "tBodyAcc.mean...X"           "tBodyAcc.mean...Y"          
 [4] "tBodyAcc.mean...Z"           "tBodyAcc.std...X"            "tBodyAcc.std...Y"           
 [7] "tBodyAcc.std...Z"            "tGravityAcc.mean...X"        "tGravityAcc.mean...Y"       
[10] "tGravityAcc.mean...Z"        "tGravityAcc.std...X"         "tGravityAcc.std...Y"        
[13] "tGravityAcc.std...Z"         "tBodyAccJerk.mean...X"       "tBodyAccJerk.mean...Y"      
[16] "tBodyAccJerk.mean...Z"       "tBodyAccJerk.std...X"        "tBodyAccJerk.std...Y"       
[19] "tBodyAccJerk.std...Z"        "tBodyGyro.mean...X"          "tBodyGyro.mean...Y"         
[22] "tBodyGyro.mean...Z"          "tBodyGyro.std...X"           "tBodyGyro.std...Y"          
[25] "tBodyGyro.std...Z"           "tBodyGyroJerk.mean...X"      "tBodyGyroJerk.mean...Y"     
[28] "tBodyGyroJerk.mean...Z"      "tBodyGyroJerk.std...X"       "tBodyGyroJerk.std...Y"      
[31] "tBodyGyroJerk.std...Z"       "tBodyAccMag.mean.."          "tBodyAccMag.std.."          
[34] "tGravityAccMag.mean.."       "tGravityAccMag.std.."        "tBodyAccJerkMag.mean.."     
[37] "tBodyAccJerkMag.std.."       "tBodyGyroMag.mean.."         "tBodyGyroMag.std.."         
[40] "tBodyGyroJerkMag.mean.."     "tBodyGyroJerkMag.std.."      "fBodyAcc.mean...X"          
[43] "fBodyAcc.mean...Y"           "fBodyAcc.mean...Z"           "fBodyAcc.std...X"           
[46] "fBodyAcc.std...Y"            "fBodyAcc.std...Z"            "fBodyAccJerk.mean...X"      
[49] "fBodyAccJerk.mean...Y"       "fBodyAccJerk.mean...Z"       "fBodyAccJerk.std...X"       
[52] "fBodyAccJerk.std...Y"        "fBodyAccJerk.std...Z"        "fBodyGyro.mean...X"         
[55] "fBodyGyro.mean...Y"          "fBodyGyro.mean...Z"          "fBodyGyro.std...X"          
[58] "fBodyGyro.std...Y"           "fBodyGyro.std...Z"           "fBodyAccMag.mean.."         
[61] "fBodyAccMag.std.."           "fBodyBodyAccJerkMag.mean.."  "fBodyBodyAccJerkMag.std.."  
[64] "fBodyBodyGyroMag.mean.."     "fBodyBodyGyroMag.std.."      "fBodyBodyGyroJerkMag.mean.."
[67] "fBodyBodyGyroJerkMag.std.." 
