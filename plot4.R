data.filename <- "./household_power_consumption_cut_20070201-20070202.txt"

data <- read.table(data.filename, header=TRUE, sep=';')
gap <- as.numeric(data[,3])
sub1 <- as.numeric(data[,7])
sub2 <- as.numeric(data[,8])
sub3 <- as.numeric(data[,9])
volts <- as.numeric(data[,5])
grp <- as.numeric(data[,4])
dt <- strptime(paste(data[,1], data[,2]), format='%d/%m/%Y %H:%M:%S')

png(filename="plot4.png", width=480, height=480)

par(mfrow=c(2,2))
plot(dt, gap, type='l', xlab='', ylab="Global Active Power (kilowatts)")

plot(dt, volts, type='l', xlab='datetime', ylab="Voltage")

plot(dt, sub1, col='black', type='l', xlab="", ylab="Energy sub metering")
lines(dt, sub2, col='red', type='l', xlab="", ylab="Energy sub metering")
lines(dt, sub3, col='blue', type='l', xlab="", ylab="Energy sub metering")
leg.txt <- c(names(data)[7], names(data)[8], names(data)[9])
legend('topright', leg.txt, col=c('black', 'red', 'blue'), lty=c(1,1))

plot(dt, grp, type='l', xlab='datetime', ylab="Global_reactive_power")

dev.off()

