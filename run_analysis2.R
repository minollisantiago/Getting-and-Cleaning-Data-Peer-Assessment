
##STEP 0:
#load the needed files into globalenv()

#Train set files
TrainSet <- read.table("UCI HAR Dataset/train/X_train.txt")
TrainSetLab <- read.table("UCI HAR Dataset/train/y_train.txt")
TrainSetSubj <- read.table("UCI HAR Dataset/train/subject_train.txt")

#Test set files
TestSet <- read.table("UCI HAR Dataset/test/X_test.txt")
TestSetLab <- read.table("UCI HAR Dataset/test/y_test.txt")
TestSetSubj <- read.table("UCI HAR Dataset/test/subject_test.txt")

#Labels
ActivityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
Features <- read.table("UCI HAR Dataset/features.txt")


##STEPS 1, 3 AND 4:
#Merge data sets (TrainSet and TestSet) 
#Add the Subject and Activity labels (descriptive names) to the data

#1) Adding Subject and Activity labels to data

#TrainSet
TrainSet <- data.frame(Subject = TrainSetSubj$V1, 
Activity = factor(TrainSetLab$V1, levels = 1:6, 
labels = as.character(ActivityLabels$V2)), TrainSet)

#TestSet
TestSet <- data.frame(Subject = TestSetSubj$V1, 
Activity = factor(TestSetLab$V1, levels = 1:6, 
labels = as.character(ActivityLabels$V2)), TestSet)

#2) Merge both sets

Data <- rbind(TrainSet, TestSet)


##STEP 2:
#Subset columns (only mean and std measurements)

#1) Original variable names

names(Data)[-(1:2)] <- as.character(Features$V2)

#2) Find the needed measurements (labels), eliminate the rest 

#Feature labels with the words "mean" and "std" on them
x <- grep(paste(c("mean", "std"), collapse = "|"), 
names(Data)[-(1:2)], ignore.case = TRUE, value = TRUE)

#Feature labels with the words "meanFreq" and "angle" on them 
y <- grep(paste(c("meanFreq", "angle"), collapse = "|"), 
names(Data)[-(1:2)], ignore.case = TRUE, value = TRUE)

#Final filtered labels, only mean and std measurements
FilteredFeatureLabels <- x[!x %in% y]

#3) Subsetting the dataset (only mean and std measurements)

Data <- Data[, c(names(Data)[1:2], FilteredFeatureLabels)]


##STEP 5:
#New tidy data set

#1) Data as data.table, for easier subsetting

library(data.table)

TidyData <- data.table(Data)

#2) Set the keys, and calculate the means by Subject and activities

#Set the keys for the data table (Subject and Activity)
setkey(TidyData, Subject, Activity)

#Subset and compute the mean
TidyData <- TidyData[, lapply(.SD, mean), by ="Subject,Activity"]

#3) Write the tidy data set to a file (in the working directory)

write.table(TidyData, file = "TidyDataSet.txt", row.names = FALSE, 
col.names = TRUE, sep = ",", quote = FALSE)
