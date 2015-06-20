##Description of important variables in run_analysis.R

* a, b, c and d, e, f are for training and testing respectively
* a, d - table containing volunteer number for various observations
* b, e - table containing values of the 561 variables recorded foe various observations
* c, f - table containing activity number for various observations
* g - table containing names of variables as in tables b, e
* h - table containing activity labels for tables c, f
* train_data, test_data - data obtained after combining tables a, b, c and d, e, f
* data - data obtained after combining data for both training and testing, later changed
* index - column indices which we require
* data1 - tidy data set containing volunteer number, activity name and all variables which are either means or standard deviations
* data2 - new independent data set containing means of various variables by subject and activity
