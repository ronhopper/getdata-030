## Description

The output `summary.txt` consists of 180 total observations of 30 different
test subjects while doing 5 different activities. Each row contains one
observation which is unique per subject and activity.

The following factors are defined:

*subject*: an integer from 1 to 30 indicating the subject ID

*activity*: a label factor of what activity the subject was performing during
the observation (possible levels: `SITTING`, `STANDING`, `WALKING`,
`WALKING_DOWNSTAIRS`, `WALKING_UPSTAIRS`)


The remaining columns are average measurements normalized into the range [-1,1].
Some measurements are in sets of three with a X, Y and Z component. Each
measurement is the average over many observations of the same subject performing
the same activity. Units for acceleration are 'g's (earth gravity -> 9.80665 m/s2).
Gyroscope units are rad/sec. Measurements starting with 't' are measured in the
time domain, while measurements starting with 'f' are measured in the frequency
domain.

The following measurements were observed:

* *tBodyAcc-mean()-X,Y,Z*
* *tBodyAcc-std()-X,Y,Z*
* *tGravityAcc-mean()-X,Y,Z*
* *tGravityAcc-std()-X,Y,Z*
* *tBodyAccJerk-mean()-X,Y,Z*
* *tBodyAccJerk-std()-X,Y,Z*
* *tBodyGyro-mean()-X,Y,Z*
* *tBodyGyro-std()-X,Y,Z*
* *tBodyGyroJerk-mean()-X,Y,Z*
* *tBodyGyroJerk-std()-X,Y,Z*
* *tBodyAccMag-mean()*
* *tBodyAccMag-std()*
* *tGravityAccMag-mean()*
* *tGravityAccMag-std()*
* *tBodyAccJerkMag-mean()*
* *tBodyAccJerkMag-std()*
* *tBodyGyroMag-mean()*
* *tBodyGyroMag-std()*
* *tBodyGyroJerkMag-mean()*
* *tBodyGyroJerkMag-std()*
* *fBodyAcc-mean()-X,Y,Z*
* *fBodyAcc-std()-X,Y,Z*
* *fBodyAcc-meanFreq()-X,Y,Z*
* *fBodyAccJerk-mean()-X,Y,Z*
* *fBodyAccJerk-std()-X,Y,Z*
* *fBodyAccJerk-meanFreq()-X,Y,Z*
* *fBodyGyro-mean()-X,Y,Z*
* *fBodyGyro-std()-X,Y,Z*
* *fBodyGyro-meanFreq()-X,Y,Z*
* *fBodyAccMag-mean()*
* *fBodyAccMag-std()*
* *fBodyAccMag-meanFreq()*
* *fBodyBodyAccJerkMag-mean()*
* *fBodyBodyAccJerkMag-std()*
* *fBodyBodyAccJerkMag-meanFreq()*
* *fBodyBodyGyroMag-mean()*
* *fBodyBodyGyroMag-std()*
* *fBodyBodyGyroMag-meanFreq()*
* *fBodyBodyGyroJerkMag-mean()*
* *fBodyBodyGyroJerkMag-std()*
* *fBodyBodyGyroJerkMag-meanFreq()*

