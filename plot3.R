mydata <- read.csv("C:/Users/spowe_000/Desktop/household_power_consumption.txt",sep=';')
new_data <- subset(mydata, mydata$Date == "1/2/2007"| mydata$Date == "2/2/2007")

png("plot3.png", width=480, height=480)
plot(c(1,2880), c(0,40), type="n", ylab="energy sub metering", xaxt='n', xlab="")
axis(1, at=c(0,1440,2880), labels=c("Thu", "Fri", "Sat"))
lines(1:2880,as.numeric(as.character(new_data$Sub_metering_1)), col="black")
lines(1:2880,as.numeric(as.character(new_data$Sub_metering_2)), col="red")
lines(1:2880,as.numeric(as.character(new_data$Sub_metering_3)), col="blue")
legend("topright", c("sub metering 1", "sub metering 2", "sub metering 3"),
  lty = c(1, 1, 1),
  col=c("black", "red", "blue"))
axis(1, at=c(0,1440,2880), labels=c("Thu", "Fri", "Sat"))
dev.off()