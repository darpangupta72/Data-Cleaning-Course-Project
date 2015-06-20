#0
a <- read.table("UCI HAR Dataset/train/subject_train.txt")
b <- read.table("UCI HAR Dataset/train/X_train.txt")
c <- read.table("UCI HAR Dataset/train/y_train.txt")
d <- read.table("UCI HAR Dataset/test/subject_test.txt")
e <- read.table("UCI HAR Dataset/test/X_test.txt")
f <- read.table("UCI HAR Dataset/test/y_test.txt")
g <- read.table("UCI HAR Dataset/features.txt")
h <- read.table("UCI HAR Dataset/activity_labels.txt")

#1
train_data <- cbind(a, c, b)
test_data <- cbind(d, f, e)
data <- rbind(train_data, test_data)

#2, #4
colnames(data) <- c("volunteer", "activity_no.", as.character(g[, 2]))
index <- c(1:2, c(grep("mean()", g[, 2]), grep("std()", g[, 2])) + 2)
data <- data[, index]

#3
data1 <- merge(data, h, by.x = "activity_no.", by.y = "V1", sort = FALSE)
data1 <- subset(data1, select = c(colnames(data)[1], "V2", colnames(data)[3:ncol(data)]))
colnames(data1)[2] <- "activity_name" 

#5
library(reshape2)
melted_data <- melt(data1, id = c("volunteer", "activity_name"))
data2 <- dcast(melted_data, volunteer+activity_name~variable, mean)
