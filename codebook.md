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
