
# ============ LOAD DATA
# Note:  To run this script, must also include the file "plotLoadData.R" 
#        in workding directory.  This file used to load the data
source("plotLoadData.R")

# ============ Save to PNG
png(filename="plot3.png",
    width=480,
    height=480,
    units="px")
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
       c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       col=c("black","red","blue"), 
       lty=c(1,1,1))
dev.off()

