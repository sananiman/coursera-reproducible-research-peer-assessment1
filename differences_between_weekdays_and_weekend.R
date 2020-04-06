# Convert date into weekdays

data$days=tolower(weekdays(data$date))

#Now categorised days into weekend and weekdays

data$day_type<-ifelse(data$days=="saturday"|data$days=="sunday","weekend","weekday")

#Take mean steps taken on weekend or weekday in the intervals

avg_steps<-aggregate(data$steps,by=list(data$interval,data$day_type),FUN=mean,na.rm=TRUE)

colnames(avg_steps)<-c("interval","day_type","steps")

# Create panel plot between average steps and interval seperated by day type

ggplot(aes(x=interval,y=steps),data=avg_steps)+geom_line()+facet_wrap(~avg_steps$day_type)

