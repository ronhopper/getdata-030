url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
raw <- "data/uci_har_dataset.zip"

# ensure the data directory exists
if (!dir.exists("data")) {
    dir.create("data")
}

# download the raw data if it is not cached
if (!file.exists(raw)) {
    download.file(url, raw, method = "curl")

    # record the date it was downloaded
    f <- file("data/date_downloaded.txt")
    writeLines(date(), f)
    close(f)
}

# unzip the raw data if it is not cached
if (!dir.exists("data/UCI HAR Dataset")) {
    unzip(raw, exdir = "data")
}
