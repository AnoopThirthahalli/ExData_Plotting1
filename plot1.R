source("get_clean.R")

hist(updatedData$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

## Saving 
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()