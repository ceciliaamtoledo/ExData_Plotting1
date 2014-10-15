setwd("C:/Users/cecilia/Dropbox/MOOCs/Data Scientist - Coursera/Working Directory/courseproj1")
Eletric <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)
Eletricsub <- Eletric[66637:69516, ]
head(Eletricsub)

Eletricsub$Date <- as.POSIXct(as.character(Eletricsub$Date), format="%d/%m/%Y")
Eletricsub$Time <- time(Eletricsub$Time, sep = ':')
Eletricsub$DateTime <- paste(Eletricsub$Date, Eletricsub$Time)
head(Eletricsub)

library(datasets)
plot(Eletricsub$DateTime, Eletricsub$Global_active_power, type = "l", xlab="",
     ylab = "Global Active Power (kilowatts)")

dev.copy(png, file="plot2.png", height=480, width=480) 
dev.off() 
