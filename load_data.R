# Load the relevant data into a data frame
temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", temp)
data <- read.table(unz(temp, "household_power_consumption.txt"), header = TRUE, sep = ";", na.strings = "?",
                   colClasses=c("character", "character", "numeric", "numeric", 
                                "numeric","numeric","numeric","numeric","numeric"))
unlink(temp)
data$datetime <- strptime(paste(data[,1], data[,2]), "%d/%m/%Y %H:%M:%S")
timeperiod <- which(as.Date(data$datetime) >= "2007-02-01" & as.Date(data$datetime) <= "2007-02-02")
data <- data[timeperiod, 2:9] 