df <- read.table("./household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
dfSubset <- df[df$Date %in% c("1/2/2007","2/2/2007") ,]

# Drawing the graph
png("./Plotting Assignment 1/plot2.png", width=480, height=480)
datetime <- strptime(paste(dfSubset$Date, dfSubset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(dfSubset$Global_active_power)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()