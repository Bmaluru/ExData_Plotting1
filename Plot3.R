
## Project Assignment submitted by Bhanu Aluru of exdata-016

## Exploratory Data Analysis : Course Project 1  --- PLOT-3



## First read the data

## Please note that you have to first down load the file zip file to local directory from " Electric power consumption" listed in the project instructions.
## And unzip the extracted file to be named as "household_power_consumption.txt into your working directory.

  explorPrj <- read.table("household_power_consumption.txt", header =TRUE, sep = ";", na.strings="?")

## Get only the subset of data required for the project

  explorePrj <- subset(explorPrj, Date %in% c("1/2/2007", "2/2/2007"))

## 
  png(filename="plot3.png", width = 480, height = 480)

  ## 3rd plot
  plot(as.numeric(as.POSIXct(strptime(paste(explorePrj$Date, explorePrj$Time), "%d/%m/%Y %H:%M:%S"))), explorePrj$Sub_metering_1, type="l", ylab = "Energy sub meetering", xlab = "") 
    points(as.numeric(as.POSIXct(strptime(paste(explorePrj$Date, explorePrj$Time), "%d/%m/%Y %H:%M:%S"))), explorePrj$Sub_metering_2, col = "red", type = "l") 
    points(as.numeric(as.POSIXct(strptime(paste(explorePrj$Date, explorePrj$Time), "%d/%m/%Y %H:%M:%S"))), explorePrj$Sub_metering_3, col = "blue", type = "l") 

  legend("topright", legend = c("Sub_Meetering_1", "Sub_Meetering_2", "Sub_Meetering_3"), lwd = 2, cex = 1.1, col = c("black", "red", "blue"), lty = c(1, 1, 1), pch = c(NA, NA, NA))

  dev.off()

## Still to be done -- Same gap for all the 4 plots
## Need to figure out how to change the X-axis values to show up as weekdays (Thur, Fri, Sat)

## appreciate if any give me some guidance on this.
