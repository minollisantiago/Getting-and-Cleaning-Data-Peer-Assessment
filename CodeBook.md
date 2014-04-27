#Code Book - Peer Assesment

###General Description
This dataset is based on the "Human Activity Recognition Using Smartphones Dataset - Version 1.0[1]", which
can be found here: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

For all the features included in the original dataset, only the mean and standard deviation measurements
were considered. Both the train set and test set were merged into one dataset and Activity and Subject 
labels were included. 

The dataset is composed by 180 observations (rows) for 68 variables (columns), where each row is a vector
that contains the average value of the mean and standard deviation measurements from the original dataset
for each activity and subject. 

The original dataset included 30 subjects and 6 activity labels, thus the number of observations of this 
dataset is equal to 30*6 = 180. The original dataset also included a total of 66 mean and standard deviation
measurements, the 2 additional columns included in this dataset are the Subject and Activity labels.

###Variable Description
More information about the original dataset, including the experiment's description, and a more detailed 
description of the features can be found in the link that was provided in the general description of this
dataset.

The features selected for the original dataset come from the accelerometer and gyroscope 3-axial raw signals 
tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate 
of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner 
frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity 
acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner 
frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated 
using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, 
fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

Several variables were estimated from these signals, but the only ones that were included in this dataset are the
following measurements: 

* mean(): Mean value
* std(): Standard deviation

The original experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing 
a smartphone (Samsung Galaxy S II) on the waist.

The measurements described above were averaged by each subject and activity. Two additional variables were included 
in the dataset, the first one (Subject) identifies the subject and the second one (Activity) identifies the activity.

An ordered list of all the dataset's variables is included below:  

1. Subject 
2. Activity 
3. tBodyAcc-mean()-X 
4. tBodyAcc-mean()-Y 
5. tBodyAcc-mean()-Z 
6. tBodyAcc-std()-X 
7. tBodyAcc-std()-Y 
8. tBodyAcc-std()-Z 
9. tGravityAcc-mean()-X 
10. tGravityAcc-mean()-Y 
11. tGravityAcc-mean()-Z 
12. tGravityAcc-std()-X 
13. tGravityAcc-std()-Y 
14. tGravityAcc-std()-Z 
15. tBodyAccJerk-mean()-X 
16. tBodyAccJerk-mean()-Y 
17. tBodyAccJerk-mean()-Z 
18. tBodyAccJerk-std()-X 
19. tBodyAccJerk-std()-Y 
20. tBodyAccJerk-std()-Z 
21. tBodyGyro-mean()-X 
22. tBodyGyro-mean()-Y 
23. tBodyGyro-mean()-Z 
24. tBodyGyro-std()-X 
25. tBodyGyro-std()-Y 
26. tBodyGyro-std()-Z 
27. tBodyGyroJerk-mean()-X 
28. tBodyGyroJerk-mean()-Y 
29. tBodyGyroJerk-mean()-Z 
30. tBodyGyroJerk-std()-X 
31. tBodyGyroJerk-std()-Y 
32. tBodyGyroJerk-std()-Z 
33. tBodyAccMag-mean() 
34. tBodyAccMag-std() 
35. tGravityAccMag-mean() 
36. tGravityAccMag-std() 
37. tBodyAccJerkMag-mean() 
38. tBodyAccJerkMag-std() 
39. tBodyGyroMag-mean() 
40. tBodyGyroMag-std() 
41. tBodyGyroJerkMag-mean() 
42. tBodyGyroJerkMag-std() 
43. fBodyAcc-mean()-X 
44. fBodyAcc-mean()-Y 
45. fBodyAcc-mean()-Z 
46. fBodyAcc-std()-X 
47. fBodyAcc-std()-Y 
48. fBodyAcc-std()-Z 
49. fBodyAccJerk-mean()-X 
50. fBodyAccJerk-mean()-Y 
51. fBodyAccJerk-mean()-Z 
52. fBodyAccJerk-std()-X 
53. fBodyAccJerk-std()-Y 
54. fBodyAccJerk-std()-Z 
55. fBodyGyro-mean()-X 
56. fBodyGyro-mean()-Y 
57. fBodyGyro-mean()-Z 
58. fBodyGyro-std()-X 
59. fBodyGyro-std()-Y 
60. fBodyGyro-std()-Z 
61. fBodyAccMag-mean() 
62. fBodyAccMag-std() 
63. fBodyBodyAccJerkMag-mean() 
64. fBodyBodyAccJerkMag-std() 
65. fBodyBodyGyroMag-mean() 
66. fBodyBodyGyroMag-std() 
67. fBodyBodyGyroJerkMag-mean() 
68. fBodyBodyGyroJerkMag-std()

###Notes: 
* Original features are normalized and bounded within [-1,1].
* Each row in the dataset is a vector that contains the average mean and standard
   deviation measurements from the original data set for each subject and activity.

###References
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support 
Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). 
Vitoria-Gasteiz, Spain. Dec 2012