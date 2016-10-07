# plot4.R
source("household_data_setup.R")

# setup plot frame
par(mfrow = c(2,2))
# third plot params
legend_labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
labels_colors <- c("black", "red", "blue")
with(analysed_data, {
    plot(Global_active_power / 500 ~ dateTime, type="l", xlab="", ylab = "Global Active Power (kilowatts)")
    plot(Voltage ~ dateTime, type = "l")
    
    plot(Sub_metering_1 ~ dateTime, type="l", ylab = "Energy sub metering", xlab = "")
    lines(Sub_metering_2 ~ dateTime, type="l", col="red")
    lines(Sub_metering_3 ~ dateTime, type="l", col="blue")
    legend("topright", legend = legend_labels, col = labels_colors, lwd = 1, bty = "n", cex = 0.70)
    
    plot(Global_reactive_power ~ dateTime, type = "l", xlab = "datetime")
})


dev.copy(png, file = "plot4.png", height = 480, width = 480)
dev.off()