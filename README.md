## Getting Data

The script `get_data.R` will download the raw data and unzip it in the `data`
directory if it is not already there.

## Analysis

The script `run_analysis.R` will perform an analysis of the data to create
`summary.txt`. The script is commented to explain each step. It does the
following:

* loads all the data:
  * loads the subject ids from the training and test sets and combines them
  * loads the observations data from training & test and combines them
  * loads the labels data from training & test and combines them
  * loads the feature names and the activity names

* subsets the data:
  * uses grep to find all the feature names with "mean" or "std" in them
  * subsets the observation data to only keep those columns
  * combines the subsetted observation data with each observation's subject id
    and activity label

* summarizes the data:
  * from the subsetted data, the measurement columns are extracted
  * the measurements are then summarized by subject and activity using the mean
  * finally the summarized measurement columns are renamed appropriately

* write the data to file
