avg_steps<-aggregate(data$steps,by=list(data$interval),FUN=mean,na.rm=TRUE)

colnames(avg_steps)<-c("interval","steps")

library(ggplot2)

ggplot(aes(x=interval,y=steps),data=avg_steps)+geom_line()

avg_steps[avg_steps$steps==max(avg_steps$steps),1]

sum(is.na(data$steps))

data$steps[is.na(data$steps)]<-mean(data$steps,na.rm=TRUE)

head(data)
