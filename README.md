# Data-Cleaning-Course-Project

* Step 0 - Reading all required files as objects a, b, c, d, e, f, g, h

###Target 1

* Merged all data sets to form a composite data set "data"

###Target 2, 4

* Assigned column names to all columns of "data"
* Determined indices which we require, stored in object "index"
* Subset "data" according to "index" and stored in "data"

###Target 3

* Merged "data" and "h" to get an extra column containing activity names acc. to "h" and stored in "data1"
* Subset "data1" appropriately to remove column containg activity no. and stored in "data1"
* Completed giving column names

###Target 5

* Melted "data1" appropriately to get a new data set "melted_data"
* Used dcast on "melted_data" to get final data set "data2"
