library(sqldf)
MyData3 <- read.csv.sql("c:/Users/sam/Desktop/household_power_consumption/household_power_consumption.txt",header=TRUE, sep=";",sql ="select * from file where Date='2/2/2007' or Date='1/2/2007'")
y <- MyData3$Global_active_power
x <- strptime(paste(MyData3$Date,MyData3$Time),"%d/%m/%Y %T")
plot(x,y,pch=".",ylab="Global Active Power(Kilowatts)",xlab="")
dev.copy(png, width=480,height=480,file="plot2.png")
dev.off()