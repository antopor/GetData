This document describes the structure of tidy dataset produced by the script "run_analysis.R".

## Dimension
Final dataset contains 180 rows and 68 columns.

## Features
Resulting dataset has the following columns:
<br/>1. subject   - identifier of the subject who carried out the experiment [1:30]
<br/>2. activity  - activity label {WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING}

Features from the original dataset, containing only mean or std data
<br/>3. tBodyAcc-mean()-X 
<br/>4. tBodyAcc-mean()-Y
<br/>5. tBodyAcc-mean()-Z
<br/>6. tBodyAcc-std()-X
<br/>7. tBodyAcc-std()-Y
<br/>8. tBodyAcc-std()-Z
<br/>9. tGravityAcc-mean()-X
<br/>10. tGravityAcc-mean()-Y
<br/>11. tGravityAcc-mean()-Z
<br/>12. tGravityAcc-std()-X
<br/>13. tGravityAcc-std()-Y
<br/>14. tGravityAcc-std()-Z
<br/>15. tBodyAccJerk-mean()-X
<br/>16. tBodyAccJerk-mean()-Y
<br/>17. tBodyAccJerk-mean()-Z
<br/>18. tBodyAccJerk-std()-X
<br/>19. tBodyAccJerk-std()-Y
<br/>20. tBodyAccJerk-std()-Z
<br/>21. tBodyGyro-mean()-X
<br/>22. tBodyGyro-mean()-Y
<br/>23. tBodyGyro-mean()-Z
<br/>24. tBodyGyro-std()-X
<br/>25. tBodyGyro-std()-Y
<br/>26. tBodyGyro-std()-Z
<br/>27. tBodyGyroJerk-mean()-X
<br/>28. tBodyGyroJerk-mean()-Y
<br/>29. tBodyGyroJerk-mean()-Z
<br/>30. tBodyGyroJerk-std()-X
<br/>31. tBodyGyroJerk-std()-Y
<br/>32. tBodyGyroJerk-std()-Z
<br/>33. tBodyAccMag-mean()
<br/>34. tBodyAccMag-std()
<br/>35. tGravityAccMag-mean()
<br/>36. tGravityAccMag-std()
<br/>37. tBodyAccJerkMag-mean()
<br/>38. tBodyAccJerkMag-std()
<br/>39. tBodyGyroMag-mean()
<br/>40. tBodyGyroMag-std()
<br/>41. tBodyGyroJerkMag-mean()
<br/>42. tBodyGyroJerkMag-std()
<br/>43. fBodyAcc-mean()-X
<br/>44. fBodyAcc-mean()-Y
<br/>45. fBodyAcc-mean()-Z
<br/>46. fBodyAcc-std()-X
<br/>47. fBodyAcc-std()-Y
<br/>48. fBodyAcc-std()-Z 
<br/>49. fBodyAccJerk-mean()-X
<br/>50. fBodyAccJerk-mean()-Y
<br/>51. fBodyAccJerk-mean()-Z
<br/>52. fBodyAccJerk-std()-X
<br/>53. fBodyAccJerk-std()-Y
<br/>54. fBodyAccJerk-std()-Z
<br/>55. fBodyGyro-mean()-X
<br/>56. fBodyGyro-mean()-Y
<br/>57. fBodyGyro-mean()-Z
<br/>58. fBodyGyro-std()-X
<br/>59. fBodyGyro-std()-Y
<br/>60. fBodyGyro-std()-Z
<br/>61. fBodyAccMag-mean()
<br/>62. fBodyAccMag-std()
<br/>63. fBodyBodyAccJerkMag-mean()
<br/>64. fBodyBodyAccJerkMag-std()
<br/>65. fBodyBodyGyroMag-mean()
<br/>66. fBodyBodyGyroMag-std()
<br/>67. fBodyBodyGyroJerkMag-mean()
<br/>68. fBodyBodyGyroJerkMag-std()

To see description for the features from the original dataset take a look to the file "features_info.txt" at "UCI HAR Dataset"

Data from columns 3..68 represent average values from data from the original dataset grouped by subject and activity.
