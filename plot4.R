mydata <- read.csv("C:/Users/spowe_000/Desktop/household_power_consumption.txt",sep=';')
new_data <- subset(mydata, mydata$Date == "1/2/2007"| mydata$Date == "2/2/2007")

png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
#plot 1
plot(1:2880,as.numeric(as.character(new_data$Global_active_power)), type="l", xlim=c(0, 2880), 
     ylab="GlobalActive Power (kilowatts)", xaxt="n", main="" )
axis(2, at=c(0,2,4,6))
axis(1, at=c(0,1440,2880), labels=c("Thu", "Fri", "Sat"))

#plot 2
plot(1:2880,as.numeric(as.character(new_data$Voltage)), type="l", xlim=c(0, 2880), 
     ylab="voltage", xaxt="n", main="" )
axis(2, at=c(234,236,238,240,242,244,246), labels=c(234,'',238,'',242,'',246))
axis(1, at=c(0,1440,2880), labels=c("Thu", "Fri", "Sat"))

#plot 3
plot(c(1,2880), c(0,40), type="n", ylab="energy sub metering", xaxt='n', xlab="")
axis(1, at=c(0,1440,2880), labels=c("Thu", "Fri", "Sat"))
lines(1:2880,as.numeric(as.character(new_data$Sub_metering_1)), col="black")
lines(1:2880,as.numeric(as.character(new_data$Sub_metering_2)), col="red")
lines(1:2880,as.numeric(as.character(new_data$Sub_metering_3)), col="blue")
legend("topright", c("sub metering 1", "sub metering 2", "sub metering 3"),
       lty = c(1, 1, 1),
       col=c("black", "red", "blue"))
axis(1, at=c(0,1440,2880), labels=c("Thu", "Fri", "Sat"))
#plot 4
plot(1:2880,as.numeric(as.character(new_data$Global_reactive_power)), type="l", xlim=c(0, 2880), 
     ylab="Global Reactive Power", xaxt="n", main="" )
#axis(2, at=c(0,2,4,6))
axis(1, at=c(0,1440,2880), labels=c("Thu", "Fri", "Sat"))

dev.off()