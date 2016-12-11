library(sqldf)
MyData3 <- read.csv.sql("c:/Users/sam/Desktop/household_power_consumption/household_power_consumption.txt",header=TRUE, sep=";",sql ="select * from file where Date='2/2/2007' or Date='1/2/2007'")

y <- MyData3$Sub_metering_1
x <- strptime(paste(MyData3$Date,MyData3$Time),"%d/%m/%Y %T")
par(mar= c(5,5,5,5))
plot(x,y,ylab="Energy sub metering",xlab="",type="n")
points(x,y,pch=".")
lines(x,y)
par(col="red")
y <- MyData3$Sub_metering_2
points(x,y,pch=".")
lines(x,y)
par(col="blue")
y <- MyData3$Sub_metering_3
points(x,y,pch=".")
lines(x,y)
par(col="black")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)
dev.copy(png, width=480,height=480,file="plot3.png")
dev.off()
