data.filename <- "./household_power_consumption_cut_20070201-20070202.txt"

data <- read.table(data.filename, header=TRUE, sep=';')
sub1 <- as.numeric(data[,7])
sub2 <- as.numeric(data[,8])
sub3 <- as.numeric(data[,9])
dt <- strptime(paste(data[,1], data[,2]), format='%d/%m/%Y %H:%M:%S')

png(filename="plot3.png", width=480, height=480)
plot(dt, sub1, col='black', type='l', xlab="", ylab="Energy sub metering")
lines(dt, sub2, col='red', type='l', xlab="", ylab="Energy sub metering")
lines(dt, sub3, col='blue', type='l', xlab="", ylab="Energy sub metering")
leg.txt <- c(names(data)[7], names(data)[8], names(data)[9])
legend('topright', leg.txt, col=c('black', 'red', 'blue'), lty=c(1,1))
dev.off()