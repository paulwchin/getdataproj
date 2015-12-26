#README for the run_analysis.R script

The run_analysis.R script creates a tidy dataset summarizing the Human
Activity Using Smartphones Dataset. The tidy data contains the averages
of the mean and standard deviation data collected for each volunteer
and activity combination.

The script needs to be run with the 
"getdata-projectfiles-UCI HAR Dataset.zip" file located in the working
directory. The first thing the script does is extract the relevant
files in the zipped folder. The relevant files are the
"activity_labels.txt" and "features.txt" files in the "UCI HAR Dataset"
folder, the "subject_test.txt", "X_test.txt", and "y_test.txt" in the
"UCI HAR Dataset/test" folder, and the "subject_train.txt", "X_train.txt", 
and the "y_train.txt" files in the "UCI HAR Dataset/train" folder. The
data in these files are assigned as data frames  with the variable names
actlab, feat, testsub, testx, testy, trainsub, trainx, and trainy
respectively. 

The testx and trainx data frames contain the main data from the study. 
They contain 561 columns containing the data for the 561 variables
collected in the study. The labels for each of the variables are 
located in the feat data frame. The values in the first column of 
the feat data frame correspond to the column numbers of the testx 
and testy data frames. The names in the second column are the actual 
variable names of the data measured. The testsub and trainsub data 
frames contain the integers from 1 through 30. These integers represent 
the volunteers in the study and the rows correspond to the rows of testx 
and trainx respectively. The testy and trainy data frames contain the 
integers 1 through 6 respectively and represent the different activities 
that the volunteers were asked to perform while data was measured. The 
rows of these data frames correspond to the rows of testx and testy
respectively as well. The activities that are represented by the integers
can be found by referring to the data in the actlab data frame. The
values in the first column of the actlab data frame correspond to the
values in the testx and testy data frames. The corresponding values in 
the second column reflect the actual activity names.

The first changes to the imported data is to convert the integer values
in the testy and trainy data frames with their corresponding labels in
the actlab dataframe. Using the factor function, testyf and trainyf are
assigned as factor vectors of the same lengths as testy and trainy
and using the activity label names found in actlab.

Then, the data is all combined into a data frame called alldata containing
the volunteer integers, activity factors, and the variable data for both
the test and training data sets using the cbind and rbind functions. Then,
the names of the variables for volunteers and activities are changed to
"volunteer" and "activity". Next, only the columns that contain the means 
and the standard deviations of the data are kept and stored, along with
the volunteer and activity data in a data frame called trimdata. The 
specific variable columns to keep are chosen by using the grepl function.
The column names of the trimdata data frame are then renamed to longer
and more readable names.

The trimdata set is then sorted by the volunteer (and then by activity)
and a new column is created that combines the volunteer and activity
variables in a single character string. Then, using the dplyr library
(which was loaded at the beginning of the script), a new data frame is
created called trimdata2 which is the trimdata data frame grouped by
the combined column. Then, the summarize function is used to create a
data frame (named average data) that calculates the average of each of 
the variables for each unique combination found in the combined column. 
In this step, the variables are also renamed to reflect they are the 
averages, instead of just the mean and standard deviations of the 
signals. Once this is completed, the combined column is broken apart 
into the separate volunteer and activity columns. Then, this data and 
all the average data is collected into a data frame named averagedata2.
The volunteer data is converted into integer data an the data is sorted
once again by the volunteer and activity columns. As the averagedata2
data frame is the last object assigned by the script, it is returned.