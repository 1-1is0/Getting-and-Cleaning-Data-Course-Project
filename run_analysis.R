library(dplyr)
link <-
  "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
file_name <- "dataset.zip"
if (!file.exists(file_name)) {
  download.file(link, destfile = file_name, method = "curl")
}
dataset_path = "UCI HAR Dataset"
dir.create(file.path(dataset_path))
unzip(zipfile = file_name)
headers <- readLines(file.path(dataset_path, "features.txt"))
header_y = "y"
header_subj = "subject"

X_train <-
  read.table(file.path(dataset_path, "train", "X_train.txt"),
             col.names = headers)
X_test <-
  read.table(file.path(dataset_path, "test", "X_test.txt"),
             col.names = headers)

y_train <-
  read.table(file.path(dataset_path, "train", "y_train.txt"),
             col.names = header_y)
y_test <-
  read.table(file.path(dataset_path, "test", "y_test.txt"),
             col.names = header_y)

subj_train <-
  read.table(file.path(dataset_path, "train", "subject_train.txt"),
             col.names = header_subj)
subj_test <-
  read.table(file.path(dataset_path, "test", "subject_test.txt"),
             col.names = header_subj)

activity_labels <-
  read.table(file.path(dataset_path, "activity_labels.txt"))

cat("X:> train:", dim(X_train), "test:", dim(X_test))
cat("y:> train:", dim(y_train), "test:", dim(y_test))
# save the headers as R style headers name
headers <- colnames(X_train)

# 1. Merges the training and the test sets to create one data set.
# stack them on top of each others
X <- rbind(X_train, X_test)
y <- rbind(y_train, y_test)
subj <- rbind(subj_train, subj_test)

# all all of them in one data
data <- cbind(subj, y, X)
# remote unnecessary data
rm(list=ls(pattern = "^X"))
rm(list=ls(pattern = "^y"))
rm(list=ls(pattern = "^subj"))

# 2. Extracts only the measurements on the mean and standard deviation
#    for each measurement.
# select only the column with mean and std in them
selected_headres <- headers[grep("mean|std", headers)]

selected_headres <- c(header_subj, header_y, selected_headres)
data <- data[, selected_headres]

# 3. Uses descriptive activity names to name the activities in the data set
# using activity_labels data frame as a lockup table to change y from
# number to each activity name
data$y <- activity_labels[data$y, 2]


# 4. Appropriately labels the data set with descriptive variable names.
n <- colnames(data)
# remove X<number> at the begging
n <- gsub("^X[0-9]{1,3}\\.", "", n)
# replace multiple dots in the middle of line with one dot
n <- gsub("[\\.]{2,}([a-zA-Z])", "\\.\\1", n)
# remove multiple dots at the end of line
n <- gsub("[\\.]{1,}$", "", n)
# replace uppercase name with dot and lower case
# ex: fBodyGyro > f.body.gyro
n <- gsub("([A-Z])([a-z])", "\\.\\L\\1\\2", n, perl = TRUE)
# replace t. with time. to represent time variables
n <- gsub("t\\.", "time\\.", n)
# replace f. with freq. to represent frequency variables
n <- gsub("f\\.", "freq\\.", n)
colnames(data) <- n


# 5. From the data set in step 4, creates a second, independent tidy data set
#    with the average of each variable for each activity and each subject.
summarized_data <- data %>% group_by(subject, y) %>%summarise_all(mean)
write.table(summarized_data, file = "summarized_data.txt", row.name=FALSE)
