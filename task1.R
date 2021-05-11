#Author:PAVITHRA G A
#The Spark Foundation
#Task1 prediction using supervised ML
#OBJECTIVE:
#To Predict the score of the student by no.of scores they studied
#And to find the score if the student study for 9.25 hrs

#clearing the console and setting working directory
cat("\f")
setwd("F:/datasets")
#Load the dataset
da=read.csv("scores.csv")
#Pre-processing Of Data
da=na.omit(da)
print(da)
#checking the missing values 
print(is.na(da))
#summarizes the dataset 
summary(da)
#Create relationship models
relation=lm(Scores~Hours,da)
print(relation)
#summary of the relationship
summary(relation)
#predict the data for given values
relation<-lm(Scores~Hours,da)
a=data.frame(Hours=9.25)
result=predict(relation,a)
print(result)
#visualising regression graphically
#plot the chart
plot(da,pch=10,col="violet",main="STUDENT_SCORES",cex=1,xlab="Hours in hr/day",ylab="Scores")
abline(relation,col="blue")

