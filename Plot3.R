# Plot figure 3
# Run load_data.R before this script.
png("./figure/Plot3.png")
with(data, plot(datetime, Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering"))
with(data, lines(datetime, Sub_metering_1, col = "black"))
with(data, lines(datetime, Sub_metering_2, col = "red"))
with(data, lines(datetime, Sub_metering_3, col = "blue"))
legend("topright", legend = names(data)[6:8], lty = 1, col = c("black", "red", "blue"))
dev.off()