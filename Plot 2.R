## Plot 2
hpc<-read.csv("household_power_consumption.csv",header=TRUE,sep=";",dec=".")
head(hpc)
subData<-hpc[hpc$Date %in% c("1/2/2007","2/2/2007"),]
datetime <- strptime(paste(subData$Date, subData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(subData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off() 
