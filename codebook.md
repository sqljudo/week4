Contents of the myset file as produced by run_analysis.R.  The run_analisys.R script tidys and simplifies the data related 
to the Human Acitivty Recognition project found in the original source files described here:  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.  

There are two data sets within this collection.  A test set and a train set.  All variables related to mean and standard 
deviation are pulled from the test and train set and merged into a single set.

Selected variables below follow a naming convention chosen for ease of use and are based on the original variable names in
the project.  A time prefix replaces (t) and indicates that the variable is based on a time observation.  Acc is replaced
with the full term accelerate and is related to accelerometer measures.  (std) is replaced with the full term standard
deviation.  Finally, measures that are combinations of previous measures are noted by the keyword Combined.  Such as the final
measures in the dataset angleZ_gravity_CombinedMean which is the combined mean of previous angleZ_gravity measures.

All variables are numeric and are found in the following order.  These lables can also be found in the myset_mean file which
containes the mean for all measures of each variable.


<li>time_BodyAccelerate_mean_X
<li>time_BodyAccelerate_mean_Y
<li>time_BodyAccelerate_mean_Z
<li>time_BodyAccelerate_standard_deviation_X
<li>time_BodyAccelerate_standard_deviation_Y
<li>time_BodyAccelerate_standard_deviation_Z
<li>time_GravityAccelerate_mean_X
<li>time_GravityAccelerate_mean_Y
<li>time_GravityAccelerate_mean_Z
<li>time_GravityAccelerate_standard_deviation_X
<li>time_GravityAccelerate_standard_deviation_Y
<li>time_GravityAccelerate_standard_deviation_Z
<li>time_BodyAccelerateJerk_mean_X
<li>time_BodyAccelerateJerk_mean_Y
<li>time_BodyAccelerateJerk_mean_Z
<li>time_BodyAccelerateJerk_standard_deviation_X
<li>time_BodyAccelerateJerk_standard_deviation_Y
<li>time_BodyAccelerateJerk_standard_deviation_Z
<li>time_BodyGyro_mean_X
<li>time_BodyGyro_mean_Y
<li>time_BodyGyro_mean_Z
<li>time_BodyGyro_standard_deviation_X
<li>time_BodyGyro_standard_deviation_Y
<li>time_BodyGyro_standard_deviation_Z
<li>time_BodyGyroJerk_mean_X
<li>time_BodyGyroJerk_mean_Y
<li>time_BodyGyroJerk_mean_Z
<li>time_BodyGyroJerk_standard_deviation_X
<li>time_BodyGyroJerk_standard_deviation_Y
<li>time_BodyGyroJerk_standard_deviation_Z
<li>time_BodyAccelerateMag_mean
<li>time_BodyAccelerateMag_standard_deviation
<li>time_GravityAccelerateMag_mean
<li>time_GravityAccelerateMag_standard_deviation
<li>time_BodyAccelerateJerkMag_mean
<li>time_BodyAccelerateJerkMag_standard_deviation
<li>time_BodyGyroMag_mean
<li>time_BodyGyroMag_standard_deviation
<li>time_BodyGyroJerkMag_mean
<li>time_BodyGyroJerkMag_standard_deviation
<li>fast_fourier_BodyAccelerate_mean_X
<li>fast_fourier_BodyAccelerate_mean_Y
<li>fast_fourier_BodyAccelerate_mean_Z
<li>fast_fourier_BodyAccelerate_standard_deviation_X
<li>fast_fourier_BodyAccelerate_standard_deviation_Y
<li>fast_fourier_BodyAccelerate_standard_deviation_Z
<li>fast_fourier_BodyAccelerate_meanFreq_X
<li>fast_fourier_BodyAccelerate_meanFreq_Y
<li>fast_fourier_BodyAccelerate_meanFreq_Z
<li>fast_fourier_BodyAccelerateJerk_mean_X
<li>fast_fourier_BodyAccelerateJerk_mean_Y
<li>fast_fourier_BodyAccelerateJerk_mean_Z
<li>fast_fourier_BodyAccelerateJerk_standard_deviation_X
<li>fast_fourier_BodyAccelerateJerk_standard_deviation_Y
<li>fast_fourier_BodyAccelerateJerk_standard_deviation_Z
<li>fast_fourier_BodyAccelerateJerk_meanFreq_X
<li>fast_fourier_BodyAccelerateJerk_meanFreq_Y
<li>fast_fourier_BodyAccelerateJerk_meanFreq_Z
<li>fast_fourier_BodyGyro_mean_X
<li>fast_fourier_BodyGyro_mean_Y
<li>fast_fourier_BodyGyro_mean_Z
<li>fast_fourier_BodyGyro_standard_deviation_X
<li>fast_fourier_BodyGyro_standard_deviation_Y
<li>fast_fourier_BodyGyro_standard_deviation_Z
<li>fast_fourier_BodyGyro_meanFreq_X
<li>fast_fourier_BodyGyro_meanFreq_Y
<li>fast_fourier_BodyGyro_meanFreq_Z
<li>fast_fourier_BodyAccelerateMag_mean
<li>fast_fourier_BodyAccelerateMag_standard_deviation
<li>fast_fourier_BodyAccelerateMag_meanFreq
<li>fast_fourier_BodyAccelerateJerkMag_mean
<li>fast_fourier_BodyAccelerateJerkMag_standard_deviation
<li>fast_fourier_BodyAccelerateJerkMag_meanFreq
<li>fast_fourier_BodyGyroMag_mean
<li>fast_fourier_BodyGyroMag_standard_deviation
<li>fast_fourier_BodyGyroMag_meanFreq
<li>fast_fourier_BodyGyroJerkMag_mean
<li>fast_fourier_BodyGyroJerkMag_standard_deviation
<li>fast_fourier_BodyGyroJerkMag_meanFreq
<li>angletime_BodyAccelerate_CombinedMean_gravity
<li>angletime_BodyAccelerateJerk_CombinedMean_gravity_CombinedMean
<li>angletime_BodyGyro_CombinedMean_gravity_CombinedMean
<li>angletime_BodyGyroJerk_CombinedMean_gravity_CombinedMean
<li>angleX_gravity_CombinedMean
<li>angleY_gravity_CombinedMean
<li>angleZ_gravity_CombinedMean


These measures and data were as sourced from original project files found here (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ) and this original code book found in the features_info file:

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
