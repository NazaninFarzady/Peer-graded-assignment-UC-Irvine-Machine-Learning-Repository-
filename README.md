# Peer-graded-assignment-UC-Irvine-Machine-Learning-Repository

This assignment uses data from the UC Irvine Machine Learning Repository, a popular repository for machine learning datasets. In particular, it will be using the “Individual household electric power consumption Data Set” :

Dataset: Electric power consumption [20Mb]

Description: Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values are available.

The following descriptions of the 9 variables in the dataset are taken from the UCI web site:

1. Date: Date in format dd/mm/yyyy

2. Time: time in format hh:mm:ss

3. Global_active_power: household global minute-averaged active power (in kilowatt)

4. Global_reactive_power: household global minute-averaged reactive power (in kilowatt)

5. Voltage: minute-averaged voltage (in volt)

6. Global_intensity: household global minute-averaged current intensity (in ampere)

7. Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).

8. Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.

9. Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.


## The question of the assignment: "examine how household energy usage varies over a 2-day period in February, 2007"
## The task is reconstructing the plots which were constructed using the base plotting system.

The script does the following steps:
- Load the data
    - The dataset has 2,075,259 rows and 9 columns. Subset only data from the dates 2007-02-01 and 2007-02-02.
    - Convert the Date and Time variables to Date/Time classes in R using the strptime() and as.Date() functions
    
- Make Plots: For each plot you should

    - Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.

    - Name each of the plot files as plot1.png, plot2.png, etc.

    - Create a separate R code file (plot1.R, plot2.R, etc.) that constructs the corresponding plot, i.e. code in plot1.R constructs the plot1.png plot.
    - Add the PNG file and R code file to the top-level folder of the git repository (no need for separate sub-folders)
