setwd("")
### please set the path of data file to your own path by using setwd() above
dtrain <- read.csv("training.csv")
preprocessing <- function(dat){
### Fixing missing data
  dat$yr_rmdl[is.na(dat$yr_rmdl)] <- 2006
  dat$stories[is.na(dat$stories)] <- 2
### Transforming string date to integer
  dat$saledate <- as.numeric(substr(as.Date(dat$saledate),1,4))
### Transforming Catagorical Data grade
  dat$grade <- factor(dat$grade, ordered = TRUE, levels = c("Low Quality","Fair Quality","Average","Above Average","Good Quality","Very Good","Superior"))
### Transforming Catagorical Data ac
  for (row in 1:length(dat$ac)) {
    if (dat$ac[row] == "Y") {
      dat$ac[row] = as.integer(1)
    }
    if (dat$ac[row] == "N") {
      dat$ac[row] = as.integer(0)
    }
  }
  dat$ac = as.integer(dat$ac)
  return(dat)
}
dtrain <- preprocessing(dtrain)
write.csv(dtrain, file="training.csv")


