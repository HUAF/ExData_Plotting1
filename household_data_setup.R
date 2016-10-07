# clean environment
rm(list = ls())

# check presence of the file
data_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
zipFile <- "./exdata_data_household_power_consumption.zip"
power_consumption_file <- "./household_power_consumption.txt"
if (!file.exists("./household_power_consumption.txt")) {
    if(!file.exists(zipFile)) {
        download.file(data_url, destfile = zipFile, method = "curl")
    }
    unzip(zipFile)
}

full_data <- read.table(power_consumption_file, header = TRUE, sep = ";", na.strings = "?")
analysed_data  <- subset(full_data, Date %in% c("1/2/2007", "2/2/2007"))

# remove full_data from the environement(unused here)
rm(full_data)

analysed_data$Date <- as.Date(analysed_data$Date, "%d/%m/%Y")
# we will need to use a complete datetime to plot
analysed_data$dateTime <- as.POSIXct(with(analysed_data, paste(Date, Time)))