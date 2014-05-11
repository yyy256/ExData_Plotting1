df <- read.table('household_power_consumption.txt', nrow = 2880, sep = ';', h = F, skip = 66637)
NameDf <- readLines('household_power_consumption.txt', n = 1)
names(df) <- unlist(strsplit(NameDf,';'))
png('plot1.png', width = 480, height = 480)
hist(df[,3], col = "red", main = "Global Active Power",
     xlab = "Global Active Power(kilowatts)")
dev.off()