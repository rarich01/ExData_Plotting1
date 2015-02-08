
# ============ LOAD DATA
# Note:  To run this script, must also include the file "plotLoadData.R" 
#        in workding directory.  This file used to load the data
source("plotLoadData.R")


# ============ Save to PNG
png(filename="plot1.png",
    width=480,
    height=480,
    units="px")
hist(sdata$Global_active_power, 
     col=c("red"), 
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency")
dev.off()