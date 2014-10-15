setwd("C:/Users/cecilia/Dropbox/MOOCs/Data Scientist - Coursera/Working Directory/courseproj1")
Eletric <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)
Eletricsub <- Eletric[66637:69516, ]

library(datasets)
hist(as.numeric(Eletricsub$Global_active_power),  xlab = "Global Active Power (kilowatts)", 
     main="Global Active Power", col="red", ylim = c(0,1200))

dev.copy(png, file="plot1.png", height=480, width=480) 
dev.off() 

