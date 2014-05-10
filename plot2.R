mydata <- read.csv("C:/Users/spowe_000/Desktop/household_power_consumption.txt",sep=';')
new_data <- subset(mydata, mydata$Date == "1/2/2007"| mydata$Date == "2/2/2007")

png("plot2.png", width=480, height=480)
plot(1:2880,as.numeric(as.character(new_data$Global_active_power)), type="l", xlim=c(0, 2880), 
     ylab="GlobalActive Power (kilowatts)", xaxt="n", main="",xlab="")
axis(2, at=c(0,2,4,6))
axis(1, at=c(0,1440,2880), labels=c("Thu", "Fri", "Sat"))
dev.off()
