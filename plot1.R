# plot1.R
source("./household_data_setup.R")

# set mfrow()
par(mfrow = c(1, 1))

with(analysed_data, hist(Global_active_power / 500, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red"))
dev.copy(png, file = "plot1.png", height = 480, width = 480)
dev.off()