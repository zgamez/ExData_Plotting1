# Plot 1
usage = read.table("household_power_consumption.txt", header = TRUE, sep =";", colClasses = "character", stringsAsFactors = FALSE, na.strings = "?", nrows = 200000)  # read row 1 as column names
usagefeb1and2 <- subset(usage, Date == "1/2/2007" | Date == "2/2/2007")


usagefeb1and2$Global_active_power <- as.numeric(as.numeric(as.character(usagefeb1and2$Global_active_power)))
usagefeb1and2$Global_reactive_power <- as.numeric(as.numeric(as.character(usagefeb1and2$Global_reactive_power)))
usagefeb1and2$Voltage <- as.numeric(as.numeric(as.character(usagefeb1and2$Voltage)))
usagefeb1and2$Global_intensity <- as.numeric(as.numeric(as.character(usagefeb1and2$Global_intensity)))
usagefeb1and2$Sub_metering_1 <- as.numeric(as.numeric(as.character(usagefeb1and2$Sub_metering_1)))
usagefeb1and2$Sub_metering_2 <- as.numeric(as.numeric(as.character(usagefeb1and2$Sub_metering_2)))
usagefeb1and2$Sub_metering_3 <- as.numeric(as.numeric(as.character(usagefeb1and2$Sub_metering_3)))


png(file = "plot1.png", height=480, width=480, bg="white")

hist(usagefeb1and2$Global_active_power, main = paste("Global Active Power"),xlab = paste("Global Active Power (KiloWatts)"), col ="red")

dev.off()