
# ============ LOAD DATA
# Note:  To run this script, must also include the file "plotLoadData.R" 
#        in workding directory.  This file used to load the data
source("plotLoadData.R")


# ============ Save to PNG
png(filename="plot2.png",
    width=480,
    height=480,
    units="px")
plot(sdata$Global_active_power, 
     type="l", 
     xaxt="n",
     xlab = "",
     ylab="Global Active Power (kilowatts)")
axis(1,
     at=c(0, ROWLENGTH/2, ROWLENGTH), 
     labels=c("Thu","Fri","Sat"))
dev.off()

