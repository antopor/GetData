library(data.table);
library(dplyr);


# Directory where dataset is located
dataset_dir = "UCI HAR Dataset";

# Load data from train and test datasets, only rows with mean and std data
feature.list = read.csv(paste(dataset_dir, "/features.txt", sep=""), stringsAsFactors = FALSE, header = FALSE, sep = " ", col.names = c("idx", "featureName"));

feature.list.filtered = which(grepl("-mean\\(|-std\\(", feature.list$featureName));

# load train data
data.y = fread(paste(dataset_dir, "/train/y_train.txt", sep = ""), sep=" ", header = FALSE, colClasses = "numeric", stringsAsFactors= FALSE);
data.x = fread(paste(dataset_dir, "/train/X_train.txt", sep = ""), sep=" ", header = FALSE, colClasses = "numeric", stringsAsFactors= FALSE, select = feature.list.filtered);
data.subject = fread(paste(dataset_dir, "/train/subject_train.txt", sep=""), header = FALSE, colClasses = "numeric", stringsAsFactors= FALSE);

data.train = cbind(data.y, data.subject, data.x);
names(data.train) = c("Label", "Person", feature.list$featureName[feature.list.filtered]);

# load test data
data.y = fread(paste(dataset_dir, "/test/y_test.txt", sep = ""), sep=" ", header = FALSE, colClasses = "numeric", stringsAsFactors= FALSE);
data.x = fread(paste(dataset_dir, "/test/X_test.txt", sep = ""), sep=" ", header = FALSE, colClasses = "numeric", stringsAsFactors= FALSE, select = feature.list.filtered);
data.subject = fread(paste(dataset_dir, "/test/subject_test.txt", sep=""), header = FALSE, colClasses = "numeric", stringsAsFactors= FALSE);

data.test = cbind(data.y, data.subject, data.x);
names(data.test) = c("Label", "Person", feature.list$featureName[feature.list.filtered]);

# merge train and test data
data = rbind(data.test, data.train) %>% group_by(Label, Person) %>% summarise_each(funs(mean));
activity.labels = fread(paste(dataset_dir, "/activity_labels.txt", sep=""), sep=" ", col.names = c("id", "activity_name"), header = FALSE, colClasses = "character", stringsAsFactors = FALSE);

data$Label = factor(data$Label, levels = activity.labels$id, labels = activity.labels$activity_name);
rm(data.test, data.train, data.x, data.y, data.subject);

# export data
write.table(data, file = "data.txt", sep = "\t");
return
