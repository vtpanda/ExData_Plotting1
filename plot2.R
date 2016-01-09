
mydata<-read.table("household_power_consumption.txt", sep=";", na.strings="?", header=TRUE, as.is=TRUE)
mybetterdata<-subset(mydata, Date=="1/2/2007" | Date=="2/2/2007")
png("plot2.png", width=480, height=480)
plot(as.POSIXct(paste(mybetterdata$Date, mybetterdata$Time), format="%d/%m/%Y %H:%M:%S"), mybetterdata$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()