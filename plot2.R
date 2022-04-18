# Install library
install.packages('data.table')
install.packages("tidyverse")
# Load library
library(data.table)
library(tidyverse)
# Set wd
getwd()
setwd('E://coursera//course four//script')

# Create data folder directory, first check if it exists or no
if(!file.exists('./data')){
  dir.create('./data') # create directory for dataset
}

# Download data from URL
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl, destfile = './data/Data.zip')

# Unzip the data folder
unzip(zipfile = './data/Data.zip', exdir='./data')


# Read data
pc <- read.csv("household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE)


# Convert data type
pc$Date <- as.Date(pc$Date, format = "%d/%m/%Y")
pc$DateTime <- strptime(paste(pc$Date,pc$Time),format = "%Y-%m-%d %H:%M:%S")

# Subset of dataset, from the dates 2007-02-01 and 2007-02-02
pc <- pc[pc$Date>= '2007-02-01' & pc$Date<= '2007-02-02',]


# Change class of column 'Global Active Power'
pc$Global_active_power <- as.numeric(pc$Global_active_power)

# Second plot
png('plot2.png', width = 480, height=480)

with(pc, plot(DateTime, Global_active_power, type='l', xlab = '', ylab= 'Global Active POwer (kilowatts)', xaxt='n'))

# save plot to png and close the file
dev.off()
