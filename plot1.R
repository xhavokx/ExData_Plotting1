data.filename <- "./household_power_consumption_cut_20070201-20070202.txt"

data <- read.table(data.filename, header=TRUE, sep=';')
gap <- as.numeric(data[,3])

png(filename="plot1.png", width=480, height=480)
hist(gap, main="Global Active Power", xlab='GloablActive Power (kilowatts)', ylab='Frequency', col='red')
dev.off()
