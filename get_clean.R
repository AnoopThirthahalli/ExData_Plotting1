

downloadFile <- "./Data/household_power_consumption.zip"
householdFile <- "./Data/household_power_consumption.txt"

## download if doesnt exist

if (!file.exists(householdFile)){
  fileURL <- "http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(fileURL, downloadFile, method="auto")
  unzip(downloadFile,overwrite = T, exdir = "./Data") 
}  




preData <- read.table(householdFile, header=T, sep=";", na.strings="?")
##Time and date Correction
updatedData <- preData[preData$Date %in% c("1/2/2007","2/2/2007"),]
updateTime <-strptime(paste(updatedData$Date, updatedData$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
updatedData <- cbind(updateTime, updatedData)