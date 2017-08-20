


source("get_clean.R")

labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(updatedData$updateTime, updatedData$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
lines(updatedData$updateTime, updatedData$Sub_metering_2, col="red")
lines(updatedData$updateTime, updatedData$Sub_metering_3, col="blue")
legend("topright", 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), lty=c(1, 1, 1))
dev.copy(png, file = "plot3.png", height = 480, width = 480)
dev.off()
