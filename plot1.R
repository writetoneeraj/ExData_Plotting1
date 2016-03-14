df <- read.table("./household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
dfSubset <- df[df$Date %in% c("1/2/2007","2/2/2007") ,]

# Drawing the graph
png("./Plotting Assignment 1/plot1.png", width=480, height=480)
globalActivePower <- as.numeric(dfSubset$Global_active_power)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()