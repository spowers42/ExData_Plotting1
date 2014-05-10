mydata <- read.csv("C:/Users/spowe_000/Desktop/household_power_consumption.txt",sep=';')
new_data <- subset(mydata, mydata$Date == "1/2/2007"| mydata$Date == "2/2/2007")

png("plot1.png", width=480, height=480)
hist(as.numeric(as.character(new_data$Global_active_power)), main="Global Active Power",
     xlab="Global Active Power (kilowatts)", col="red", breaks=16, ylim=c(0,1200), xlim=c(0,8),
     xaxt="n")
axis(1, at=c(0,2,4,6))
dev.off()


