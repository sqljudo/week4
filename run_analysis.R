  ## create x header
  x_lbl <- read.csv("features.txt", sep=" ", header=FALSE)
  x_lbl <- x_lbl[,2]

  ## clean up the names
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
  
  ## read in x sets
  fxw <- rep(16,561) ## create vector with all fixed widths for measures

  x_tst <- read.fwf(".\\test\\x_test.txt", widths=fxw)
  x_trn <- read.fwf(".\\train\\x_train.txt", widths=fxw)

  ## union and give names from header
  x <- rbind(x_tst, x_trn)
  names(x) <- x_lbl

  ## extact the columns we care about using regex (mean and std)
  x <- x[,grep("[Mm]ean|[Ss]tand", names(x))]
 
  ## write new data set back out
  write.table(x,"myset.txt",sep=",", row.names=FALSE)

  ## write out data set with mean values
  write.table(colMeans(x), sep=",", "myset_mean.txt", col.names=FALSE)