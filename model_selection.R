setwd("")
### please set the path of data file to your own path by using setwd() above
dtrain <- read.csv("training.csv")
nullmodel<-lm(price ~1,data=dtrain)
fullmodel<-lm(price ~., data=dtrain)
summary(step(nullmodel,scope=list(upper=fullmodel),direction="both"))
