# Plot figure 2
# Run load_data.R before this script.
png("./figure/Plot2.png")
plot(data$datetime, data$Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()