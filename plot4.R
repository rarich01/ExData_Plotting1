
# ============ LOAD DATA
# Note:  To run this script, must also include the file "plotLoadData.R" 
#        in workding directory.  This file used to load the data
source("plotLoadData.R")


# ============ Plot Data
png(filename="plot4.png",
    width=480,
    height=480,
    units="px")

# Set number of graphs
par(mfrow = c(2,2))

# ========== Global active power
plot(sdata$Global_active_power, 
     type="l", 
     xaxt="n",
     xlab = "",
     ylab="Global Active Power")
axis(1,
     at=c(0, ROWLENGTH/2, ROWLENGTH), 
     labels=c("Thu","Fri","Sat"))

# ========== Voltage plot
plot(sdata$Voltage, 
     type="l", 
     xaxt="n",
     xlab = "datetime",
     ylab="Voltage")
axis(1,
     at=c(0, ROWLENGTH/2, ROWLENGTH), 
     labels=c("Thu","Fri","Sat"))


# ========== Energy sub metering
plot(sdata$Sub_metering_1, 
     type="s", 
     xaxt="n",
     xlab = "",
     ylab="Energy sub metering")
lines(sdata$Sub_metering_2,
      col=c("red"))
lines(sdata$Sub_metering_3,
      col=c("blue"))
axis(1,
     at=c(0, ROWLENGTH/2, ROWLENGTH), 
     labels=c("Thu","Fri","Sat"))
legend(x="topright",
       bty="n",
       c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       col=c("black","red","blue"), 
       lty=c(1,1,1))

# ========== Global reactive power
plot(sdata$Global_reactive_power, 
     type="l", 
     xaxt="n",
     xlab = "datetime",
     ylab="Global_reactive_power")
axis(1,
     at=c(0, ROWLENGTH/2, ROWLENGTH), 
     labels=c("Thu","Fri","Sat"))


# Save file
dev.off()



