
# ============ LOAD DATA
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";")

# Convert data
data$Date<- as.Date(as.character(data$Date), "%d/%m/%Y")
data$Global_active_power<- suppressWarnings(as.numeric(as.character(data$Global_active_power)))

# Subselect data
sdata <- subset(data, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))
ROWLENGTH <- length(sdata$Date)


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

