## Extract Data
dataFile <- "./A1-Exploratory/household_power_consumption.txt"
data <- read.table(dataFile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")

## Subset Data only for the dates 2007-02-01 and 2007-02-02
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## Plot
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480, units = "px")
hist(globalActivePower, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.off()
