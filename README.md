## CodeBook.md'
Explains how data is collected and the meaning of each variable.

## `run_analysis.R`, How It Works?

### 1. Get The Data
firstly the script download the data from a URL and unzip it in the project
directory.


### 2. Read The Data
For features also read the `features.txt` file to add the column headers to
the features table. for subject and activity labels I use `subject` and `y` 
respectively.


### 3. Put All Of It Together
subject id, activity label, and features are all in a separate table.
Next, I put all of them in one table and then only select the
column with *mean* and *std* in them (not the one with angle function).


### 4. Fix The Columns Names
Remove the unnecessary characters and replace some of the letters to make
the columns name more readable and descriptive.

 
### 5. Group The Data
Group the data into 180 different groups based on subject id and activity
labels , for each of groups calculate the mean of each feature.


### 6. Save The Data
Write the data in the table format in  `summarized_data.txt`.
