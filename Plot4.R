# Plot figure 4
# Run load_data.R before this script.
png("./figure/Plot4.png")
par(mfcol = c(2,2))
plot(data$datetime, data$Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
with(data, plot(datetime, Sub_metering_1, type = "n", 
                xlab = "", ylab = "Energy sub metering"))
with(data, lines(datetime, Sub_metering_1, col = "black"))
with(data, lines(datetime, Sub_metering_2, col = "red"))
with(data, lines(datetime, Sub_metering_3, col = "blue"))
legend("topright", legend = names(data)[6:8], lty = 1, 
       col = c("black", "red", "blue"), bty = "n")
with(data, plot(datetime, Voltage, type = "l"))
with(data, plot(datetime, Global_reactive_power, type = "l"))
dev.off()