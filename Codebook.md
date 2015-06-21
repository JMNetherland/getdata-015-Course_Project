---
title: "Codebook"
author: "Jason M. Netherland"
date: "2015-06-13"
output:
  html_document:
    keep_md: yes
---

##Description of the variables in the data_means.txt file
data.frame:     2640 obs. of  4 variables:

        Subject : int  1 1 1 1 1 1 1 1 1 1 ...

        Activity: chr  "WALKING" "WALKING" "WALKING" "WALKING" ...

        Feature : Factor w/ 66 levels "tBodyAcc-mean()-X",..: 1 2 3 4 5 6 7 8 9 10 ...

        Mean    : num  0.2657 -0.0183 -0.1078 -0.5458 -0.3677 ...

###Subject
This variable is used to identify the subject

 - The variable is int
 - Ranges from 1 to 30 for the 30 test subjects
 
###Activity
This variable is used to identify the Activity taking place at time of measurement

 - They are character strings
 - There are 6 different Activities
        
        1. WALKING
        2. WALKING_UPSTAIRS
        3. WALKING_DOWNSTAIRS
        4. SITTING
        5. STANDING
        6. LAYING
        
###Feature
This variable is used to describe the feature measurement

 - The variable is factor
 - There are 66 different Features all dealing with a Mean or Standard Deviation Measurement
        
        1. tBodyAcc-mean()-X          
        2. tBodyAcc-mean()-Y          
        3. tBodyAcc-mean()-Z          
        4. tBodyAcc-std()-X          
        5. tBodyAcc-std()-Y           
        6. tBodyAcc-std()-Z           
        7. tGravityAcc-mean()-X       
        8. tGravityAcc-mean()-Y      
        9. tGravityAcc-mean()-Z       
        10. tGravityAcc-std()-X        
        11. tGravityAcc-std()-Y        
        12. tGravityAcc-std()-Z       
        13. tBodyAccJerk-mean()-X      
        14. tBodyAccJerk-mean()-Y      
        15. tBodyAccJerk-mean()-Z      
        16. tBodyAccJerk-std()-X      
        17. tBodyAccJerk-std()-Y       
        18. tBodyAccJerk-std()-Z       
        19. tBodyGyro-mean()-X         
        20. tBodyGyro-mean()-Y        
        21. tBodyGyro-mean()-Z         
        22. tBodyGyro-std()-X          
        23. tBodyGyro-std()-Y          
        24. tBodyGyro-std()-Z         
        25. tBodyGyroJerk-mean()-X     
        26. tBodyGyroJerk-mean()-Y     
        27. tBodyGyroJerk-mean()-Z     
        28. tBodyGyroJerk-std()-X     
        29. tBodyGyroJerk-std()-Y      
        30. tBodyGyroJerk-std()-Z      
        31. tBodyAccMag-mean()         
        32. tBodyAccMag-std()         
        33. tGravityAccMag-mean()      
        34. tGravityAccMag-std()       
        35. tBodyAccJerkMag-mean()     
        36. tBodyAccJerkMag-std()     
        37. tBodyGyroMag-mean()        
        38. tBodyGyroMag-std()         
        39. tBodyGyroJerkMag-mean()    
        40. tBodyGyroJerkMag-std()    
        41. fBodyAcc-mean()-X          
        42. fBodyAcc-mean()-Y          
        43. fBodyAcc-mean()-Z          
        44. fBodyAcc-std()-X          
        45. fBodyAcc-std()-Y           
        46. fBodyAcc-std()-Z           
        47. fBodyAccJerk-mean()-X      
        48. fBodyAccJerk-mean()-Y     
        49. fBodyAccJerk-mean()-Z      
        50. fBodyAccJerk-std()-X       
        51. fBodyAccJerk-std()-Y       
        52. fBodyAccJerk-std()-Z      
        53. fBodyGyro-mean()-X         
        54. fBodyGyro-mean()-Y         
        55. fBodyGyro-mean()-Z         
        56. fBodyGyro-std()-X         
        57. fBodyGyro-std()-Y          
        58. fBodyGyro-std()-Z          
        59. fBodyAccMag-mean()         
        60. fBodyAccMag-std()         
        61. fBodyBodyAccJerkMag-mean() 
        62. fBodyBodyAccJerkMag-std()  
        63. fBodyBodyGyroMag-mean()    
        64. fBodyBodyGyroMag-std()    
        65. fBodyBodyGyroJerkMag-mean()
        66. fBodyBodyGyroJerkMag-std()
        

###Mean
This variable is a calculated field based giving the mean for each Subject, Activity, and Feature group.

 - The variable is numeric