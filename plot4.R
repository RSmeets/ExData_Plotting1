#Plot4
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
global_Active_Power <- as.numeric(subSetData$Global_active_power)
global_Reactive_Power <- as.numeric(subSetData$Global_reactive_power)
voltage <- as.numeric(subSetData$Voltage)

sub_Metering1 <- as.numeric(subSetData$Sub_metering_1)
sub_Metering2 <- as.numeric(subSetData$Sub_metering_2)
sub_Metering3 <- as.numeric(subSetData$Sub_metering_3)


png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

plot(datetime, global_Active_Power, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")

plot(datetime, sub_Metering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, sub_Metering2, type="l", col="red")
lines(datetime, sub_Metering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(datetime, global_Reactive_Power, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()