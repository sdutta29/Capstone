advisory <-read.csv("C:/Users/Shelly/Documents/CKME136/DWA_ML.csv", header=TRUE)
str(advisory)
names(advisory)
install.packages("tree")
library("tree")
nrow("advisory")
nrow(advisory)
ncol(advisory)
sapply(advisory, function(x) sum(is.na(x)))
advisory <- advisory[, -c(2, 3, 4, 9, 10, 11, 12, 13, 14, 15, 16)]
str(advisory)
advisory <- advisory[, -c(2, 3)]
str(advisory)
advisory <-advisory[!(advisory$Region=="Alberta"),]
advisory <-advisory[!(advisory$Region=="Manitoba"),]
str(advisory)
save()
save(DWA_ML)
save(advisory)
savehistory("~/CKME136/DWA_ML_R.R")