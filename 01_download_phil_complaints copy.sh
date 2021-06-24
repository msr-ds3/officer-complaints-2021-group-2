#!/bin/bash
#
# description:
#   fetches trip files from the new york civil liberties unions github site 
# https://github.com/new-york-civil-liberties-union/NYPD-Misconduct-Complaint-Database-Updated/blob/main/CCRB%20Complaint%20Database%20Raw%2004.20.2021.csv
# usage: ./01_download_nyc_complaints.sh
#
# requirement is the wget package
#
# author: Karen Britt and Andrea
#

# first set a path for the dataset
# (use current directory by default)
DATA_DIR=.

# change to the data directory
cd $DATA_DIR

# wget $url
url=https://github.com/new-york-civil-liberties-union/NYPD-Misconduct-Complaint-Database-Updated/raw/main/CCRB%20Complaint%20Database%20Raw%2004.20.2021.csv
curl -O $url

# done