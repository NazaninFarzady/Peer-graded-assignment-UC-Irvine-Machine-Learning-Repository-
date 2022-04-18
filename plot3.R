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


# Third plot
png('plot3.png', width=480, height=480)

with(pc, plot(DateTime, Sub_metering_1, type='n', xaxt='n', xlab='', ylab='Energy sub metering'))

# Set the axis values, convert class to numeric
axis(side = 1, at = c(as.numeric(pc$DateTime[1]),
                      as.numeric(pc$DateTime[1441]),
                      as.numeric(pc$DateTime[2880])),labels = c("Thu","Fri","Sat"))

# plot lines of variables
with(pc, lines(DateTime, Sub_metering_1))
with(pc, lines(DateTime, Sub_metering_2, col = "red"))
with(pc, lines(DateTime, Sub_metering_3, col = "blue"))

# set the legend
legend("topright",lty = 1, col=c("black","red","blue"),
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()

