
mydata<-read.table("household_power_consumption.txt", sep=";", na.strings="?", header=TRUE, as.is=TRUE)
mybetterdata<-subset(mydata, Date=="1/2/2007" | Date=="2/2/2007")
png("plot3.png", width=480, height=480)
plot(as.POSIXct(paste(mybetterdata$Date, mybetterdata$Time), format="%d/%m/%Y %H:%M:%S"), mybetterdata$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
points(as.POSIXct(paste(mybetterdata$Date, mybetterdata$Time), format="%d/%m/%Y %H:%M:%S"), mybetterdata$Sub_metering_2, type="l", col="red")
points(as.POSIXct(paste(mybetterdata$Date, mybetterdata$Time), format="%d/%m/%Y %H:%M:%S"), mybetterdata$Sub_metering_3, type="l", col="blue")
legend("topright",lty=c(1,1) , col=c("black","red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()