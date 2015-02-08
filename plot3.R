
# ============ LOAD DATA
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";")

# Convert data
data$Date<- as.Date(as.character(data$Date), "%d/%m/%Y")
data$Sub_metering_1<- suppressWarnings(as.numeric(as.character(data$Sub_metering_1)))
data$Sub_metering_2<- suppressWarnings(as.numeric(as.character(data$Sub_metering_2)))
data$Sub_metering_3<- suppressWarnings(as.numeric(as.character(data$Sub_metering_3)))

# Subselect data
sdata <- subset(data, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))
ROWLENGTH <- length(sdata$Date)

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

