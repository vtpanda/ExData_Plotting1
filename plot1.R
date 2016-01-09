
setClass("myDate")
setAs("character","myDate", function(from) as.Date(from, format="%d/%m/%Y") )

setClass("myTime")

setAs("character","myTime", function(from) strptime(from, format="%H:%M:%S") )

mydata<-read.table("household_power_consumption.txt", sep=";", na.strings="?", header=TRUE, colClasses=c("myDate", "myTime", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
mybetterdata<-subset(mydata, Date==as.Date("2007-02-01", format="%Y-%m-%d") | Date==as.Date("2007-02-02", format="%Y-%m-%d"))
png("plot1.png", width=480, height=480)
hist(mybetterdata$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()