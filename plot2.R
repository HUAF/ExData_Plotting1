# plot2.R

source("household_data_setup.R")
# set mfrow()
par(mfrow = c(1, 1))

with(analysed_data, {
    plot(Global_active_power~ dateTime, type="l", xlab="", ylab = "Global Active Power (kilowatts)")
})
# generating the png
dev.copy(png, file = "plot2.png", height = 480, width = 480)
dev.off()