# Plot figure 1
# Run load_data.R before this script.
png("./figure/Plot1.png")
hist(data$Global_active_power, 
     col = "red", 
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()