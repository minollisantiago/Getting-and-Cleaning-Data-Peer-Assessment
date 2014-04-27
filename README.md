#Peer Assesment

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

1. Step 0: Loads the necessary data sets into memory.
2. Steps 1, 3 and 4: These steps are together, the script handles the merging of the 
   data sets and adds the labels for Subjects and Activities.
3. Step 2: Subsets the data, including only the mean and std measurements. 
4. Step 5: Creates the final tidy data set and writes it into a .txt file in the working 
   directory. This step includes the computation of the average of the selected measurements 
   for each activity and each subject.
  