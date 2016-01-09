


mydata<-read.table("household_power_consumption.txt", sep=";", na.strings="?", header=TRUE, as.is=TRUE)
mybetterdata<-subset(mydata, Date=="1/2/2007" | Date=="2/2/2007")

png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
plot(as.POSIXct(paste(mybetterdata$Date, mybetterdata$Time), format="%d/%m/%Y %H:%M:%S"), mybetterdata$Global_active_power, type="l", xlab="", ylab="Global Active Power")
plot(as.POSIXct(paste(mybetterdata$Date, mybetterdata$Time), format="%d/%m/%Y %H:%M:%S"), mybetterdata$Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(as.POSIXct(paste(mybetterdata$Date, mybetterdata$Time), format="%d/%m/%Y %H:%M:%S"), mybetterdata$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
points(as.POSIXct(paste(mybetterdata$Date, mybetterdata$Time), format="%d/%m/%Y %H:%M:%S"), mybetterdata$Sub_metering_2, type="l", col="red")
points(as.POSIXct(paste(mybetterdata$Date, mybetterdata$Time), format="%d/%m/%Y %H:%M:%S"), mybetterdata$Sub_metering_3, type="l", col="blue")
legend("topright",lty=c(1,1) , col=c("black","red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(as.POSIXct(paste(mybetterdata$Date, mybetterdata$Time), format="%d/%m/%Y %H:%M:%S"), mybetterdata$Global_reactive_power, type="l", xlab="datetime",  ylab="Global_reactive_power")
dev.off()