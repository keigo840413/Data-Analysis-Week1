## Plot 3

hpc<-read.csv("household_power_consumption.csv",header=TRUE,sep=";",dec=".")
head(hpc)
subData<-hpc[hpc$Date %in% c("1/2/2007","2/2/2007"),]
subMetering1 <- as.numeric(as.character(subData$Sub_metering_1))
subMetering2 <- as.numeric(as.character(subData$Sub_metering_2))
subMetering3 <- as.numeric(as.character(subData$Sub_metering_3))

png("plot3.png", width=480, height=480)
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off() 
