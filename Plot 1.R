## Plot 1
hpc<-read.csv("household_power_consumption.csv",header=TRUE,sep=";",dec=".")
head(hpc)
subData<-hpc[hpc$Date %in% c("1/2/2007","2/2/2007"),]
png("plot1.png",width=480,height=480)
hist(as.numeric(as.character(subData$Global_active_power)),col="red", main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.off()
