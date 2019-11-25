#2.0
airbnb<- read.csv("lec02_Airbnb.csv")
#2.1
naSatisfaction <- sum(is.na(airbnb$overall_satisfaction))
#2.2 
  #loop solution 
    for (i in 1:nrow(airbnb))
      if (is.na(airbnb$minstay[i])) airbnb$minstay[i]=1
  #function solution 
    airbnb1<-read.csv("lec02_Airbnb.csv")
    airbnb1$minstay[is.na(airbnb1$minstay)==TRUE]<- 1
#2.3
airbnb$total_score <- airbnb$overall_satisfaction*airbnb$reviews
avderage <- sum(airbnb$total_score, na.rm=TRUE)/nrow(airbnb)
#2.4
unique_host_id<-factor(airbnb$host_id)
number_of_rooms<- function(host) {
return((data.frame(table(airbnb$host_id))$Freq[data.frame(table(airbnb$host_id))$Var1==host]))
}
#2.5
rich_host<-max(table(airbnb$host_id))
