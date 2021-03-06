#Plot2 run after plot1
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S",tz = "GMT") 
global_Active_Power <- as.numeric(subSetData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, global_Active_Power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()