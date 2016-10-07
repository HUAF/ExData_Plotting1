# plot3.R
source("household_data_setup.R")

# ploting
# set mfrow()
par(mfrow = c(1, 1))

legend_labels <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
labels_colors <- c("black", "red", "blue")
with(analysed_data, {
                    plot(Sub_metering_1 ~ dateTime, type="l", ylab = "Energy sub metering", xlab = "")
                    lines(Sub_metering_2 ~ dateTime, type="l", col="red")
                    lines(Sub_metering_3 ~ dateTime, type="l", col="blue")
                    legend("topright", legend = legend_labels, col = labels_colors, lwd = 1)
                    }
)
axis(1, at = 1:3, labels = c("Thu", "Fri", "Sat"))
# generating the png file
dev.copy(png, file = "plot3.png", height = 480, width = 480)
dev.off()