source("get_clean.R")
par(mfrow=c(2,2), mar=c(4,4,4,4), oma=c(2,2,2,2))

#Using with function we can avoid caling DataSet
#i.e with one single time we can use it for evry plot
with(updatedData, {
  plot(Global_active_power~updateTime, type="l", 
       ylab="Global Active Power (kilowatts)", xlab="")
  plot(Voltage~updateTime, type="l", 
       ylab="Voltage (volt)", xlab="")
  plot(Sub_metering_1~updateTime, type="l", 
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2~updateTime,col='Red')
  lines(Sub_metering_3~updateTime,col='Blue')
  legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(Global_reactive_power~updateTime, type="l", 
       ylab="Global Rective Power (kilowatts)",xlab="")
})

## Saving 
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()