dataFile <- "~/household_power_consumption.txt"

View(data)

data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData) Subsetting the data

globalActivePower <- as.numeric(subSetData$Global_active_power)

globalActivePower

png("plot1.png", width=480, height=480)

hist(globalActivePower, col="green", main="Global Active Power", xlab="Global Active Power (kilowatts)")

# As mentioned in peer col as Red, have changed into green

dev.off()
