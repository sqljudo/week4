In this repo are the following files.

run_analysis.R

This script pulls the relevant mean and standard deviation measures from both the train and test data sets found in the Human
Activity Recognition Project.  It uses the original variable names as a starting point and cleans them up and clarifies by 
removing special characters, using full terms instead of abbreviations, and introduction underscores to make the lables more readable.

The script generates a new data set called myset.txt that is a coma delimted text file containing the resulting file.  It also generates
a second file called myset_mean.txt which is a coma delimted file containing each variable measure and it's mean from myset.txt.

myset.txt

A coma delimted file generated by run_analysis.R that is a combined and simplified version of project data.  See description above for 
more information on contents.

myset_mean.txt

A coma delimited file generated by run_analysis.R that contians the mean of all measures from myset.txt

codebook.md

A markdown file that contains a description of all variables used in both myset.txt and myset_mean.txt.