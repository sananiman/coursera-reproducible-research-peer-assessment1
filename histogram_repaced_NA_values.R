sum_steps<-aggregate(data$steps,by=list(data$date),FUN=sum,na.rm=TRUE) 

hist(sum_steps$x, 
     breaks=seq(from=0, to=25000, by=2500),
     col="yellow", 
     xlab="Total number of steps", 
     ylim=c(0, 30), 
     main="Total number of steps taken each day\n(NA replaced by mean)")

mean(sum_steps$x)

median(sum_steps$x)
