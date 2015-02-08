
# ============ LOAD DATA
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";")

# Convert data
data$Date<- as.Date(as.character(data$Date), "%d/%m/%Y")
data$Global_active_power<- suppressWarnings(as.numeric(as.character(data$Global_active_power)))

# Subselect data
sdata <- subset(data, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))
ROWLENGTH <- length(sdata$Date)


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