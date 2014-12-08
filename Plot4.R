
## Project Assignment submitted by Bhanu Aluru of exdata-016

## Exploratory Data Analysis : Course Project 1  --- PLOT-4



## First read the data

  explorPrj <- read.table("household_power_consumption.txt", header =TRUE, sep = ";", na.strings="?")

## Get only the subset of data required for the project

  explorePrj <- subset(explorPrj, Date %in% c("1/2/2007", "2/2/2007"))

## 
  png(filename="plot4.png", width = 480, height = 480)

  ## 4th plot
  par(mfrow=c(2,2))
  
  ## first of the 4
  plot(as.numeric(as.POSIXct(strptime(paste(explorePrj$Date, explorePrj$Time), "%d/%m/%Y %H:%M:%S"))), explorePrj$Global_active_power, type = "l", ylab = "Global Active Power (Kilowats)", xlab = "") 
  
  
  ## second of the 4
  plot(as.numeric(as.POSIXct(strptime(paste(explorePrj$Date, explorePrj$Time), "%d/%m/%Y %H:%M:%S"))), explorePrj$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")
  
  ## third of the 4
  plot(as.numeric(as.POSIXct(strptime(paste(explorePrj$Date, explorePrj$Time), "%d/%m/%Y %H:%M:%S"))), explorePrj$Sub_metering_1, type="l", ylab = "Energy sub meetering", xlab = "") 
  points(as.numeric(as.POSIXct(strptime(paste(explorePrj$Date, explorePrj$Time), "%d/%m/%Y %H:%M:%S"))), explorePrj$Sub_metering_2, col = "red", type = "l") 
  points(as.numeric(as.POSIXct(strptime(paste(explorePrj$Date, explorePrj$Time), "%d/%m/%Y %H:%M:%S"))), explorePrj$Sub_metering_3, col = "blue", type = "l") 
  legend("topright", legend = c("Sub_Meetering_1", "Sub_Meetering_2", "Sub_Meetering_3"), lwd = 2, cex = 0.8, bty = "n", col = c("black", "red", "blue"), lty = c(1, 1, 1), pch = c(NA, NA, NA))
  
  ## forth of the 4
  plot(as.numeric(as.POSIXct(strptime(paste(explorePrj$Date, explorePrj$Time), "%d/%m/%Y %H:%M:%S"))), explorePrj$Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = "datetime") 
  
  dev.off()

## Still to be done -- Same gap for all the 4 plots
## Need to figure out how to change the X-axis values to show up as weekdays (Thur, Fri, Sat)

## appreciate if any give me some guidance on this.
