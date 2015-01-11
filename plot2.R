data.filename <- "./household_power_consumption_cut_20070201-20070202.txt"

data <- read.table(data.filename, header=TRUE, sep=';')
gap <- as.numeric(data[,3])
dt <- strptime(paste(data[,1], data[,2]), format='%d/%m/%Y %H:%M:%S')

png(filename="plot2.png", width=480, height=480)
plot(dt, gap, type='l', xlab='', ylab="Global Active Power (kilowatts)")
dev.off()