library(dplyr)

# read subject ids from train and test, then merge them
s_train <- read.table("data/UCI HAR Dataset/train/subject_train.txt")
s_test <- read.table("data/UCI HAR Dataset/test/subject_test.txt")
s <- rbind(s_train, s_test)
colnames(s) <- "subject"

# read observations from train and test, then merge them
x_train <- read.table("data/UCI HAR Dataset/train/X_train.txt")
x_test <- read.table("data/UCI HAR Dataset/test/X_test.txt")
x <- rbind(x_train, x_test)

# read labels from train and test, then merge them
y_train <- read.table("data/UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("data/UCI HAR Dataset/test/y_test.txt")
y <- rbind(y_train, y_test)

# read feature names
f <- as.character(read.table("data/UCI HAR Dataset/features.txt")[, 2])
colnames(x) <- f

# read activity names
a <- as.character(read.table("data/UCI HAR Dataset/activity_labels.txt")[, 2])

# subset observations that are the mean or standard deviation of a measurement
x_sub <- x[, grep("mean|std", f)]

# combine subjects, mead/std measurements and activities into a tidy dataset
tidy <- cbind(s, x_sub, activity = as.vector(sapply(y, function(e) { a[e] })))

# create a new tidy dataset which has averages grouped by subject and activity
cols <- names(tidy)[-c(1, ncol(tidy))]
dots <- lapply(cols, function(e) substitute(mean(e), list(e = as.name(e))))
prep <- c(list(.data = group_by(tidy, subject, activity)), dots)
tidy_avg <- do.call(summarize, prep)
colnames(tidy_avg) <- c("subject", "activity", cols)

# write out the data
write.table(tidy_avg, "summary.txt", row.name = FALSE)
