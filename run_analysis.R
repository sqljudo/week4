  
## read in data sets
fFeature <- read.table('./features.txt',header=FALSE); 
aActive  <- read.table('./activity_labels.txt',header=FALSE); 
sTrain   <- read.table('./train/subject_train.txt',header=FALSE); 
xTrain   <- read.table('./train/x_train.txt',header=FALSE); 
yTrain   <- read.table('./train/y_train.txt',header=FALSE); 
sTest    <- read.table('./test/subject_test.txt',header=FALSE); 
xTest    <- read.table('./test/x_test.txt',header=FALSE); 
yTest    <- read.table('./test/y_test.txt',header=FALSE); 

## give column names 
colnames(aActive) <- c('activity_Id','activity_Type');
colnames(xTrain)  <- fFeature[,2]; 
colnames(xTest)   <- fFeature[,2]; 
colnames(sTrain)  <- "subject_Id";
colnames(sTest)   <- "subject_Id";
colnames(yTrain)  <- "activity_Id";
colnames(yTest)   <- "activity_Id";

## create combined training set and test set
trainData <- cbind(sTrain, yTrain, xTrain);
testData <- cbind(sTest, yTest, xTest);
finalData <- rbind(trainData,testData);
cNames <- colnames(finalData); 

## logical vector with TRUE values for the ID, mean() & stddev() 
lv <- (grepl("activity..",cNames) | grepl("subject..",cNames) 
      | grepl("-mean..",cNames) & !grepl("-meanFreq..",cNames) 
      & !grepl("mean..-",cNames) | grepl("-std..",cNames) 
      & !grepl("-std()..-",cNames));

## drop columns we don't care about
finalData = finalData[logicalVector==TRUE];

## merge with activity types
finalData = merge(aActive,finalData,by='activity_Id',all.x=TRUE);

## clean variable names to use meaningful names for tidy purposes
x_lbl <- colnames(finalData); 
x_lbl <- gsub("\\(\\)","",x_lbl) 
x_lbl <- gsub("\\(","",x_lbl) 
x_lbl <- gsub("\\)","",x_lbl) 
x_lbl <- gsub(",","_",x_lbl) 
x_lbl <- gsub("tB","time_B",x_lbl) 
x_lbl <- gsub("fB","fast_fourier_B",x_lbl) 
x_lbl <- gsub("tG","time_G",x_lbl) 
x_lbl <- gsub("BodyBody","Body",x_lbl)
x_lbl <- gsub("-","_",x_lbl) 
x_lbl <- gsub("Acc","Accelerate",x_lbl) 
x_lbl <- gsub("std","standard_deviation",x_lbl) 
x_lbl <- gsub("Mean","_CombinedMean",x_lbl) 
colnames(finalData) = x_lbl;

## aggregate columns that aren't activity_type or activity_id or subject_id
finalData_temp <- finalData[,names(finalData) != 'activity_Type'];
tidy <- aggregate(finalData_temp[,names(finalData_temp) 
        !=   c('activity_Id','subject_Id')],
             by=list(activity_Id=finalData_temp$activity_Id,
             subject_Id = finalData_temp$subject_Id)
             ,mean);

tidy <- merge(aActive, tidy, by='activity_Id', all.x=TRUE);

## write out complete set
write.table(tidy, './tidyData.txt',row.names=TRUE,sep='\t');
