


source("get_clean.R")
##type="l" for line

plot(updatedData$Global_active_power~updatedData$updateTime, type="l",
          ylab="Global Active Power (kilowatts)", xlab="")

## Saving 
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()