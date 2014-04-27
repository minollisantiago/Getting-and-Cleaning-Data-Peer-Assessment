#Peer Assessment

###Important note
I have included two .R files, one called run_analysis.R and the other run_analysis2.R.
The difference between both files is the way in which they get the Samsung data, the 
first one doesn't require you to have the data files on your working directory, it will
handle the downloading in a temp file and delete it after unzipping and reading the data 
sets into memory. The second one works as required by the assignment, it will get the 
data sets from the working directory (after you decompress the data that is).

###How the script works
Both scripts are split into steps that mimic the ones given in the assignment description, 
they also include annotations that describe the whole process step by step. 

Here is a general overview of the steps:

* Step 0: Loads the necessary data sets into memory.
* Steps 1, 3 and 4: These steps are together, the script handles the merging of the 
   data sets and adds the labels for Subjects and Activities.
* Step 2: Subsets the data, including only the mean and std measurements. 
* Step 5: Creates the final tidy data set and writes it into a .txt file in the working 
   directory. This step includes the computation of the average of the selected measurements 
   for each activity and each subject.
 
###Tidy Data Set Notes
The tidy dataset provided for the assignment is also included in this repo, it is a .txt 
file with the following particularities:

* Row names were not included in the dataset, this makes it easier to write/read the file.
* Column names are included in the file, to identify the variables.
* Values were separated using the comma (",").
  
###A final note on reading the tidy dataset
If you load the TidyDataSet.txt into memory, remember to set the arguments header to TRUE 
and sep to "," when you call the read.table() function, here is an example:

```{r}
read.table("TidyDataSet.txt", sep = ",", header = TRUE)
```
  