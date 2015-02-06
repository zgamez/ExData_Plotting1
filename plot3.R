# Plot 3
usage = read.table("household_power_consumption.txt", header = TRUE, sep =";", colClasses = "character", stringsAsFactors = FALSE, na.strings = "?", nrows = 200000)  # read row 1 as column names
usagefeb1and2 <- subset(usage, Date == "1/2/2007" | Date == "2/2/2007")


usagefeb1and2$Global_active_power <- as.numeric(as.numeric(as.character(usagefeb1and2$Global_active_power)))
usagefeb1and2$Global_reactive_power <- as.numeric(as.numeric(as.character(usagefeb1and2$Global_reactive_power)))
usagefeb1and2$Voltage <- as.numeric(as.numeric(as.character(usagefeb1and2$Voltage)))
usagefeb1and2$Global_intensity <- as.numeric(as.numeric(as.character(usagefeb1and2$Global_intensity)))
usagefeb1and2$Sub_metering_1 <- as.numeric(as.numeric(as.character(usagefeb1and2$Sub_metering_1)))
usagefeb1and2$Sub_metering_2 <- as.numeric(as.numeric(as.character(usagefeb1and2$Sub_metering_2)))
usagefeb1and2$Sub_metering_3 <- as.numeric(as.numeric(as.character(usagefeb1and2$Sub_metering_3)))

png(file = "plot3.png", height=480, width=480, bg="white")

plot_colors <- c("black","red","blue")
plot(usagefeb1and2$Sub_metering_1, type="n", col="black", ylab="Energy sub metering", xlab = "", col.axis ="white")
lines(usagefeb1and2$Sub_metering_1, type="o", pch=22, lty=2, col="black")
lines(usagefeb1and2$Sub_metering_2, type="o", pch=22, lty=2, col="red")
lines(usagefeb1and2$Sub_metering_3, type="o", pch=22, lty=2, col="blue")
axis(1, at=1, lab=c("Thu"))
axis(1, at=500, lab=c(""))
axis(1, at=1000, lab=c(""))
axis(1, at=1500, lab=c("Fri"))
axis(1, at=2000, lab=c(""))
axis(1, at=2500, lab=c(""))
axis(1, at=2880, lab=c("Sat"))
legend("topright", legend =c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=plot_colors, pch="-", lty=1)

dev.off()
