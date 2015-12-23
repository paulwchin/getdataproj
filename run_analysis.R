run_analysis <- function(){

      library(dplyr)
      #url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
      #download.file(url,destfile ="getdata-projectfiles-UCI HAR Dataset.zip")
      
      temp <- unz("getdata-projectfiles-UCI HAR Dataset.zip","UCI HAR Dataset/activity_labels.txt")
      actlab <- read.table(temp)
      temp <- unz("getdata-projectfiles-UCI HAR Dataset.zip","UCI HAR Dataset/features.txt")
      feat <- read.table(temp)
      
      temp <- unz("getdata-projectfiles-UCI HAR Dataset.zip","UCI HAR Dataset/test/subject_test.txt")
      testsub <- read.table(temp)
      temp <- unz("getdata-projectfiles-UCI HAR Dataset.zip","UCI HAR Dataset/test/X_test.txt")
      testX <- read.table(temp)
      temp <- unz("getdata-projectfiles-UCI HAR Dataset.zip","UCI HAR Dataset/test/y_test.txt")
      testy <- read.table(temp)
      
      temp <- unz("getdata-projectfiles-UCI HAR Dataset.zip","UCI HAR Dataset/train/subject_train.txt")
      trainsub <- read.table(temp)
      temp <- unz("getdata-projectfiles-UCI HAR Dataset.zip","UCI HAR Dataset/train/X_train.txt")
      trainX <- read.table(temp)
      temp <- unz("getdata-projectfiles-UCI HAR Dataset.zip","UCI HAR Dataset/train/y_train.txt")
      trainy <- read.table(temp)
      
      testyf <- factor(testy$V1,labels = actlab$V2)
      trainyf <- factor(trainy$V1,labels = actlab$V2)
      
      test <- cbind(testsub,testyf,testX)
      train <- cbind(trainsub,trainyf,trainX)
      names(test) <- names(train)
      alldata <- rbind(test,train)
      names(alldata)[1:2] <- c("volunteer","activity")
      
      keepdata <- grepl("mean()|std()",feat$V2) 
      trimdata = alldata[,c(T,T,keepdata)]
      
      names(trimdata) <- c("volunteer","activity",
                           "mean.of.the.accelerometer.body.acceleration.signals.in.the.x.axis",
                           "mean.of.the.accelerometer.body.acceleration.signals.in.the.y.axis",
                           "mean.of.the.accelerometer.body.acceleration.signals.in.the.z.axis",
                           "standard.deviation.of.the.accelerometer.body.acceleration.signals.in.the.x.axis",
                           "standard.deviation.of.the.accelerometer.body.acceleration.signals.in.the.y.axis",
                           "standard.deviation.of.the.accelerometer.body.acceleration.signals.in.the.z.axis",
                           "mean.of.the.accelerometer.gravity.acceleration.signals.in.the.x.axis",
                           "mean.of.the.accelerometer.gravity.acceleration.signals.in.the.y.axis",
                           "mean.of.the.accelerometer.gravity.acceleration.signals.in.the.z.axis",
                           "standard.deviation.of.the.accelerometer.gravity.acceleration.signals.in.the.x.axis",
                           "standard.deviation.of.the.accelerometer.gravity.acceleration.signals.in.the.y.axis",
                           "standard.deviation.of.the.accelerometer.gravity.acceleration.signals.in.the.z.axis",
                           "mean.of.the.accelerometer.body.jerk.signals.in.the.x.axis",
                           "mean.of.the.accelerometer.body.jerk.signals.in.the.y.axis",
                           "mean.of.the.accelerometer.body.jerk.signals.in.the.z.axis",
                           "standard.deviation.of.the.accelerometer.body.jerk.signals.in.the.x.axis",
                           "standard.deviation.of.the.accelerometer.body.jerk.signals.in.the.y.axis",
                           "standard.deviation.of.the.accelerometer.body.jerk.signals.in.the.z.axis",
                           "mean.of.the.gyroscope.body.acceleration.signals.in.the.x.axis",
                           "mean.of.the.gyroscope.body.acceleration.signals.in.the.y.axis",
                           "mean.of.the.gyroscope.body.acceleration.signals.in.the.z.axis",
                           "standard.deviation.of.the.gyroscope.body.acceleration.signals.in.the.x.axis",
                           "standard.deviation.of.the.gyroscope.body.acceleration.signals.in.the.y.axis",
                           "standard.deviation.of.the.gyroscope.body.acceleration.signals.in.the.z.axis",
                           "mean.of.the.gyroscope.body.jerk.signals.in.the.x.axis",
                           "mean.of.the.gyroscope.body.jerk.signals.in.the.y.axis",
                           "mean.of.the.gyroscope.body.jerk.signals.in.the.z.axis",
                           "standard.deviation.of.the.gyroscope.body.jerk.signals.in.the.x.axis",
                           "standard.deviation.of.the.gyroscope.body.jerk.signals.in.the.y.axis",
                           "standard.deviation.of.the.gyroscope.body.jerk.signals.in.the.z.axis",
                           
                           "mean.of.the.accelerometer.body.acceleration.signal.magnitudes",
                           "standard.deviation.of.the.accelerometer.body.acceleration.signal.magnitudes",
                           
                           "mean.of.the.accelerometer.gravity.acceleration.signal.magnitudes",
                           "standard.deviation.of.the.accelerometer.gravity.acceleration.signal.magnitudes",
                           
                           "mean.of.the.accelerometer.body.jerk.signal.magnitudes",
                           "standard.deviation.of.the.accelerometer.body.jerk.signal.magnitudes",
                           
                           "mean.of.the.gyroscope.body.acceleration.signal.magnitudes",
                           "standard.deviation.of.the.gyroscope.body.acceleration.signal.magnitudes",
                           
                           "mean.of.the.gyroscope.body.jerk.signal.magnitudes",
                           "standard.deviation.of.the.gyroscope.body.jerk.signal.magnitudes",
                           
                           "mean.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.x.axis",
                           "mean.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.y.axis",
                           "mean.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.z.axis",
                           "standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.x.axis",
                           "standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.y.axis",
                           "standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.z.axis",
                           "mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.x.axis",
                           "mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.y.axis",
                           "mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.z.axis",
                           
                           "mean.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.x.axis",
                           "mean.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.y.axis",
                           "mean.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.z.axis",
                           "standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.x.axis",
                           "standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.y.axis",
                           "standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.z.axis",
                           "mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.x.axis",
                           "mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.y.axis",
                           "mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.z.axis",
                           
                           "mean.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.x.axis",
                           "mean.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.y.axis",
                           "mean.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.z.axis",
                           "standard.deviation.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.x.axis",
                           "standard.deviation.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.y.axis",
                           "standard.deviation.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.z.axis",
                           "mean.frequency.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.x.axis",
                           "mean.frequency.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.y.axis",
                           "mean.frequency.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.z.axis",
                           
                           "mean.of.the.fast.fourier.transforms.of.the.accelerometer.acceleration.signal.magnitudes",
                           "standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.acceleration.signal.magnitudes",
                           "mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.acceleration.signal.magnitudes",
                           
                           "mean.of.the.fast.fourier.transforms.of.the.accelerometer.jerk.signal.magnitudes",
                           "standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.jerk.signal.magnitudes",
                           "mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.jerk.signal.magnitudes",
                           
                           "mean.of.the.fast.fourier.transforms.of.the.gyroscope.acceleration.signal.magnitudes",
                           "standard.deviation.of.the.fast.fourier.transforms.of.the.gyroscope.acceleration.signal.magnitudes",
                           "mean.frequency.of.the.fast.fourier.transforms.of.the.gyroscope.acceleration.signal.magnitudes",
                           
                           "mean.of.the.fast.fourier.transforms.of.the.gyroscope.jerk.signal.magnitudes",
                           "standard.deviation.of.the.fast.fourier.transforms.of.the.gyroscope.jerk.signal.magnitudes",
                           "mean.frequency.of.the.fast.fourier.transforms.of.the.gyroscope.jerk.signal.magnitudes"
                           
                           )
      
      trimdata <- arrange(trimdata,volunteer,activity)
      for (i in 1:length(trimdata$volunteer)){
            trimdata$combined[i] <- paste0(as.character(trimdata$volunteer[i]),as.character(trimdata$activity[i]))
      }
      
      trimdata2 <- group_by(trimdata,combined)
      
      averagedata <- summarize(trimdata2, average.of.the.mean.of.the.accelerometer.body.acceleration.signals.in.the.x.axis = mean(mean.of.the.accelerometer.body.acceleration.signals.in.the.x.axis),
                               average.of.the.mean.of.the.accelerometer.body.acceleration.signals.in.the.y.axis = mean(mean.of.the.accelerometer.body.acceleration.signals.in.the.y.axis),
                               average.of.the.mean.of.the.accelerometer.body.acceleration.signals.in.the.z.axis = mean(mean.of.the.accelerometer.body.acceleration.signals.in.the.z.axis),
                               
                               average.of.the.standard.deviation.of.the.accelerometer.body.acceleration.signals.in.the.x.axis = mean(standard.deviation.of.the.accelerometer.body.acceleration.signals.in.the.x.axis),
                               average.of.the.standard.deviation.of.the.accelerometer.body.acceleration.signals.in.the.y.axis = mean(standard.deviation.of.the.accelerometer.body.acceleration.signals.in.the.y.axis),
                               average.of.the.standard.deviation.of.the.accelerometer.body.acceleration.signals.in.the.z.axis = mean(standard.deviation.of.the.accelerometer.body.acceleration.signals.in.the.z.axis),
                               
                               average.of.the.mean.of.the.accelerometer.gravity.acceleration.signals.in.the.x.axis = mean(mean.of.the.accelerometer.gravity.acceleration.signals.in.the.x.axis),
                               average.of.the.mean.of.the.accelerometer.gravity.acceleration.signals.in.the.y.axis = mean(mean.of.the.accelerometer.gravity.acceleration.signals.in.the.y.axis),
                               average.of.the.mean.of.the.accelerometer.gravity.acceleration.signals.in.the.z.axis = mean(mean.of.the.accelerometer.gravity.acceleration.signals.in.the.z.axis),
                               
                               average.of.the.standard.deviation.of.the.accelerometer.gravity.acceleration.signals.in.the.x.axis = mean(standard.deviation.of.the.accelerometer.gravity.acceleration.signals.in.the.x.axis),
                               average.of.the.standard.deviation.of.the.accelerometer.gravity.acceleration.signals.in.the.y.axis = mean(standard.deviation.of.the.accelerometer.gravity.acceleration.signals.in.the.y.axis),
                               average.of.the.standard.deviation.of.the.accelerometer.gravity.acceleration.signals.in.the.z.axis = mean(standard.deviation.of.the.accelerometer.gravity.acceleration.signals.in.the.z.axis),
                               
                               average.of.the.mean.of.the.accelerometer.body.jerk.signals.in.the.x.axis = mean(mean.of.the.accelerometer.body.jerk.signals.in.the.x.axis),
                               average.of.the.mean.of.the.accelerometer.body.jerk.signals.in.the.y.axis = mean(mean.of.the.accelerometer.body.jerk.signals.in.the.y.axis),
                               average.of.the.mean.of.the.accelerometer.body.jerk.signals.in.the.z.axis = mean(mean.of.the.accelerometer.body.jerk.signals.in.the.z.axis),
                               
                               average.of.the.standard.deviation.of.the.accelerometer.body.jerk.signals.in.the.x.axis = mean(standard.deviation.of.the.accelerometer.body.jerk.signals.in.the.x.axis),
                               average.of.the.standard.deviation.of.the.accelerometer.body.jerk.signals.in.the.y.axis = mean(standard.deviation.of.the.accelerometer.body.jerk.signals.in.the.y.axis),
                               average.of.the.standard.deviation.of.the.accelerometer.body.jerk.signals.in.the.z.axis = mean(standard.deviation.of.the.accelerometer.body.jerk.signals.in.the.z.axis),
                               
                               average.of.the.mean.of.the.gyroscope.body.acceleration.signals.in.the.x.axis = mean(mean.of.the.gyroscope.body.acceleration.signals.in.the.x.axis),
                               average.of.the.mean.of.the.gyroscope.body.acceleration.signals.in.the.y.axis = mean(mean.of.the.gyroscope.body.acceleration.signals.in.the.y.axis),
                               average.of.the.mean.of.the.gyroscope.body.acceleration.signals.in.the.z.axis = mean(mean.of.the.gyroscope.body.acceleration.signals.in.the.z.axis),
                               
                               average.of.the.standard.deviation.of.the.gyroscope.body.acceleration.signals.in.the.x.axis = mean(standard.deviation.of.the.gyroscope.body.acceleration.signals.in.the.x.axis),
                               average.of.the.standard.deviation.of.the.gyroscope.body.acceleration.signals.in.the.y.axis = mean(standard.deviation.of.the.gyroscope.body.acceleration.signals.in.the.y.axis),
                               average.of.the.standard.deviation.of.the.gyroscope.body.acceleration.signals.in.the.z.axis = mean(standard.deviation.of.the.gyroscope.body.acceleration.signals.in.the.z.axis),
                               
                               average.of.the.mean.of.the.gyroscope.body.jerk.signals.in.the.x.axis = mean(mean.of.the.gyroscope.body.jerk.signals.in.the.x.axis),
                               average.of.the.mean.of.the.gyroscope.body.jerk.signals.in.the.y.axis = mean(mean.of.the.gyroscope.body.jerk.signals.in.the.y.axis),
                               average.of.the.mean.of.the.gyroscope.body.jerk.signals.in.the.z.axis = mean(mean.of.the.gyroscope.body.jerk.signals.in.the.z.axis),
                               
                               average.of.the.standard.deviation.of.the.gyroscope.body.jerk.signals.in.the.x.axis = mean(standard.deviation.of.the.gyroscope.body.jerk.signals.in.the.x.axis),
                               average.of.the.standard.deviation.of.the.gyroscope.body.jerk.signals.in.the.y.axis = mean(standard.deviation.of.the.gyroscope.body.jerk.signals.in.the.y.axis),
                               average.of.the.standard.deviation.of.the.gyroscope.body.jerk.signals.in.the.z.axis = mean(standard.deviation.of.the.gyroscope.body.jerk.signals.in.the.z.axis),
                               
                               average.of.the.mean.of.the.accelerometer.body.acceleration.signal.magnitudes = mean(mean.of.the.accelerometer.body.acceleration.signal.magnitudes),
                               average.of.the.standard.deviation.of.the.accelerometer.body.acceleration.signal.magnitudes = mean(standard.deviation.of.the.accelerometer.body.acceleration.signal.magnitudes),
                               
                               average.of.the.mean.of.the.accelerometer.gravity.acceleration.signal.magnitudes = mean(mean.of.the.accelerometer.gravity.acceleration.signal.magnitudes),
                               average.of.the.standard.deviation.of.the.accelerometer.gravity.acceleration.signal.magnitudes = mean(standard.deviation.of.the.accelerometer.gravity.acceleration.signal.magnitudes),
                               
                               average.of.the.mean.of.the.accelerometer.body.jerk.signal.magnitudes = mean(mean.of.the.accelerometer.body.jerk.signal.magnitudes),
                               average.of.the.standard.deviation.of.the.accelerometer.body.jerk.signal.magnitudes = mean(standard.deviation.of.the.accelerometer.body.jerk.signal.magnitudes),
                               
                               average.of.the.mean.of.the.gyroscope.body.acceleration.signal.magnitudes = mean(mean.of.the.gyroscope.body.acceleration.signal.magnitudes),
                               average.of.the.standard.deviation.of.the.gyroscope.body.acceleration.signal.magnitudes = mean(standard.deviation.of.the.gyroscope.body.acceleration.signal.magnitudes),
                               
                               average.of.the.mean.of.the.gyroscope.body.jerk.signal.magnitudes = mean(mean.of.the.gyroscope.body.jerk.signal.magnitudes),
                               average.of.the.standard.deviation.of.the.gyroscope.body.jerk.signal.magnitudes = mean(standard.deviation.of.the.gyroscope.body.jerk.signal.magnitudes),
                               
                               average.of.the.mean.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.x.axis = mean(mean.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.x.axis),
                               average.of.the.mean.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.y.axis = mean(mean.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.y.axis),
                               average.of.the.mean.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.z.axis = mean(mean.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.z.axis),
                               
                               average.of.the.standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.x.axis = mean(standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.x.axis),
                               average.of.the.standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.y.axis = mean(standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.y.axis),
                               average.of.the.standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.z.axis = mean(standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.z.axis),
                               
                               average.of.the.mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.x.axis = mean(mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.x.axis),
                               average.of.the.mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.y.axis = mean(mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.y.axis),
                               average.of.the.mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.z.axis = mean(mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.body.acceleration.signals.in.the.z.axis),
                               
                               average.of.the.mean.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.x.axis = mean(mean.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.x.axis),
                               average.of.the.mean.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.y.axis = mean(mean.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.y.axis),
                               average.of.the.mean.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.z.axis = mean(mean.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.z.axis),
                               
                               average.of.the.standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.x.axis = mean(standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.x.axis),
                               average.of.the.standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.y.axis = mean(standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.y.axis),
                               average.of.the.standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.z.axis = mean(standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.z.axis),
                               
                               average.of.the.mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.x.axis = mean(mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.x.axis),
                               average.of.the.mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.y.axis = mean(mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.y.axis),
                               average.of.the.mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.z.axis = mean(mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.body.jerk.signals.in.the.z.axis),
                               
                               average.of.the.mean.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.x.axis = mean(mean.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.x.axis),
                               average.of.the.mean.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.y.axis = mean(mean.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.y.axis),
                               average.of.the.mean.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.z.axis = mean(mean.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.z.axis),
                               
                               average.of.the.standard.deviation.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.x.axis = mean(standard.deviation.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.x.axis),
                               average.of.the.standard.deviation.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.y.axis = mean(standard.deviation.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.y.axis),
                               average.of.the.standard.deviation.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.z.axis = mean(standard.deviation.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.z.axis),
                               
                               average.of.the.mean.frequency.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.x.axis = mean(mean.frequency.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.x.axis),
                               average.of.the.mean.frequency.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.y.axis = mean(mean.frequency.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.y.axis),
                               average.of.the.mean.frequency.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.z.axis = mean(mean.frequency.of.the.fast.fourier.transforms.of.the.gyroscope.body.acceleration.signals.in.the.z.axis),
                               
                               average.of.the.mean.of.the.fast.fourier.transforms.of.the.accelerometer.acceleration.signal.magnitudes = mean(mean.of.the.fast.fourier.transforms.of.the.accelerometer.acceleration.signal.magnitudes),
                               average.of.the.standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.acceleration.signal.magnitudes = mean(standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.acceleration.signal.magnitudes),
                               average.of.the.mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.acceleration.signal.magnitudes = mean(mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.acceleration.signal.magnitudes),
                               
                               average.of.the.mean.of.the.fast.fourier.transforms.of.the.accelerometer.jerk.signal.magnitudes = mean(mean.of.the.fast.fourier.transforms.of.the.accelerometer.jerk.signal.magnitudes),
                               average.of.the.standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.jerk.signal.magnitudes = mean(standard.deviation.of.the.fast.fourier.transforms.of.the.accelerometer.jerk.signal.magnitudes),
                               average.of.the.mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.jerk.signal.magnitudes = mean(mean.frequency.of.the.fast.fourier.transforms.of.the.accelerometer.jerk.signal.magnitudes),
                               
                               average.of.the.mean.of.the.fast.fourier.transforms.of.the.gyroscope.acceleration.signal.magnitudes = mean(mean.of.the.fast.fourier.transforms.of.the.gyroscope.acceleration.signal.magnitudes),
                               average.of.the.standard.deviation.of.the.fast.fourier.transforms.of.the.gyroscope.acceleration.signal.magnitudes = mean(standard.deviation.of.the.fast.fourier.transforms.of.the.gyroscope.acceleration.signal.magnitudes),
                               average.of.the.mean.frequency.of.the.fast.fourier.transforms.of.the.gyroscope.acceleration.signal.magnitudes = mean(mean.frequency.of.the.fast.fourier.transforms.of.the.gyroscope.acceleration.signal.magnitudes),
                               
                               average.of.the.mean.of.the.fast.fourier.transforms.of.the.gyroscope.jerk.signal.magnitudes = mean(mean.of.the.fast.fourier.transforms.of.the.gyroscope.jerk.signal.magnitudes),
                               average.of.the.standard.deviation.of.the.fast.fourier.transforms.of.the.gyroscope.jerk.signal.magnitudes = mean(standard.deviation.of.the.fast.fourier.transforms.of.the.gyroscope.jerk.signal.magnitudes),
                               average.of.the.mean.frequency.of.the.fast.fourier.transforms.of.the.gyroscope.jerk.signal.magnitudes = mean(mean.frequency.of.the.fast.fourier.transforms.of.the.gyroscope.jerk.signal.magnitudes)
      )            
                  
      for (i in 1:length(averagedata$combined)){
            averagedata$volunteer[i] <- gsub("[a-zA-z]+","",averagedata$combined[i])
            averagedata$activity[i] <- gsub("[0-9]+","",averagedata$combined[i])
      }                  
      averagedata$volunteer <- as.integer(averagedata$volunteer)
      averagedata2 <- select(averagedata,volunteer,activity,2:80)
      averagedata2 <- arrange(averagedata2,volunteer,activity)
      
}