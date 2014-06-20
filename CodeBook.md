CODE BOOK - Human Activity Recognition

Variables for tidy.txt:
"activity"                    "tBodyAcc.mean...X"           "tBodyAcc.mean...Y"          
"tBodyAcc.mean...Z"           "tBodyAcc.std...X"            "tBodyAcc.std...Y"           
"tBodyAcc.std...Z"            "tGravityAcc.mean...X"        "tGravityAcc.mean...Y"       
"tGravityAcc.mean...Z"        "tGravityAcc.std...X"         "tGravityAcc.std...Y"        
"tGravityAcc.std...Z"         "tBodyAccJerk.mean...X"       "tBodyAccJerk.mean...Y"      
"tBodyAccJerk.mean...Z"       "tBodyAccJerk.std...X"        "tBodyAccJerk.std...Y"       
"tBodyAccJerk.std...Z"        "tBodyGyro.mean...X"          "tBodyGyro.mean...Y"         
"tBodyGyro.mean...Z"          "tBodyGyro.std...X"           "tBodyGyro.std...Y"          
"tBodyGyro.std...Z"           "tBodyGyroJerk.mean...X"      "tBodyGyroJerk.mean...Y"     
"tBodyGyroJerk.mean...Z"      "tBodyGyroJerk.std...X"       "tBodyGyroJerk.std...Y"      
"tBodyGyroJerk.std...Z"       "tBodyAccMag.mean.."          "tBodyAccMag.std.."          
"tGravityAccMag.mean.."       "tGravityAccMag.std.."        "tBodyAccJerkMag.mean.."     
"tBodyAccJerkMag.std.."       "tBodyGyroMag.mean.."         "tBodyGyroMag.std.."         
"tBodyGyroJerkMag.mean.."     "tBodyGyroJerkMag.std.."      "fBodyAcc.mean...X"          
"fBodyAcc.mean...Y"           "fBodyAcc.mean...Z"           "fBodyAcc.std...X"           
"fBodyAcc.std...Y"            "fBodyAcc.std...Z"            "fBodyAccJerk.mean...X"      
"fBodyAccJerk.mean...Y"       "fBodyAccJerk.mean...Z"       "fBodyAccJerk.std...X"       
"fBodyAccJerk.std...Y"        "fBodyAccJerk.std...Z"        "fBodyGyro.mean...X"         
"fBodyGyro.mean...Y"          "fBodyGyro.mean...Z"          "fBodyGyro.std...X"          
"fBodyGyro.std...Y"           "fBodyGyro.std...Z"           "fBodyAccMag.mean.."         
"fBodyAccMag.std.."           "fBodyBodyAccJerkMag.mean.."  "fBodyBodyAccJerkMag.std.."  
"fBodyBodyGyroMag.mean.."     "fBodyBodyGyroMag.std.."      "fBodyBodyGyroJerkMag.mean.."
"fBodyBodyGyroJerkMag.std.." 

NOTES:
1.  activity: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
2.  The original six datasets (X_test.txt, y_test.txt, X_train.txt, y_train.txt, features.txt, and activity_labels.tx) were combined to form a single dataset. 
3.  The default variable names, V1, V2, etc., in X_test.txt and X_train.txt were replaced by the more descriptive names in features.txt.
4.  The default variable names, V1, V2, etc., in y_test.txt and y_train.txt were replaced by the string 'activity.'

5.  The measurements on the mean and standard deviation for each measurement were extracted from features.txt, and the merged dataset was subsetted to those two measures.
6.  The 'activity' column was added to the merged dataset to show different types of activities. (See tidy.txt.)
7.  The default variable names, V1, V2, etc., in subject_test.txt and subject_train.txt were replaced by the string 'subject,' and they were combined to form a single dataset.
8.  The activity and subject columns were added to the merged dataset.
9.  The average of each variable for each activity and each subject in the merged dataset was calculated using the mean function.
10. UNITS: none; values are normalized and bounded within [-1,1] as in the original.


  The resulting dataset is called tidy.txt.  In the second part, subject_test.txt and subject_train.txt were combined into one dataset.  The average of each variable for each activity and each subject were calculated and added to the set.  The resulting dataset is called tidy_mean.txt. Running run_analysis.R yields both text files.
