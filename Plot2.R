
## Project Assignment submitted by Bhanu Aluru of exdata-016

## Exploratory Data Analysis : Course Project 1  --- PLOT-2



## First read the data

explorPrj <- read.table("household_power_consumption.txt", header =TRUE, sep = ";", na.strings="?")

## Get only the subset of data required for the project

explorePrj <- subset(explorPrj, Date %in% c("1/2/2007", "2/2/2007"))

## 
png(filename="plot2.png", width = 480, height = 480)
plot(as.numeric(as.POSIXct(strptime(paste(explorePrj$Date, explorePrj$Time), "%d/%m/%Y %H:%M:%S"))), explorePrj$Global_active_power, type = "l", ylab = "Global Active Power (Kilowats)", xlab = "") 
dev.off()

## Still to be done -- Same gap for all the 4 plots
## Need to figure out how to change the X-axis values to show up as weekdays (Thur, Fri, Sat)

## appreciate if any give me some guidance on this.
