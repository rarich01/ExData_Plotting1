
# ============ LOAD DATA
if(exists("bLoadData") == FALSE) bLoadData <- FALSE

# Load data
if(bLoadData == FALSE){
    data <- read.table("household_power_consumption.txt", header=TRUE, sep=";")
    
    # Convert data
    data$Date<- as.Date(as.character(data$Date), "%d/%m/%Y")
    data$Global_active_power<- suppressWarnings(as.numeric(as.character(data$Global_active_power)))
    data$Global_reactive_power<- suppressWarnings(as.numeric(as.character(data$Global_reactive_power)))
    data$Voltage<- suppressWarnings(as.numeric(as.character(data$Voltage)))
    data$Sub_metering_1<- suppressWarnings(as.numeric(as.character(data$Sub_metering_1)))
    data$Sub_metering_2<- suppressWarnings(as.numeric(as.character(data$Sub_metering_2)))
    data$Sub_metering_3<- suppressWarnings(as.numeric(as.character(data$Sub_metering_3)))
    
    # Subselect data
    sdata <- subset(data, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))
    ROWLENGTH <- length(sdata$Date)
    
    # Set flag
    bLoadData <- TRUE
}
