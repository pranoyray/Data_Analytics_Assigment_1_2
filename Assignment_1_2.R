#Assignment1.2 - Session 1

#Q1. What should be the output of the following Script?

#Solution 1:
v <- c( 2,5.5,6)
t <- c(8, 3, 4)
v%/%t
#Output is 0 1 1
#As the %/% operator gives the quotient of division of first vector with second vector.


#Q2. You have 25 excel files with names as xx_1.xlsx, xx_2.xlsx,........xx_25.xlsx in a dir.
#Write a program to extract the contents of each excel sheet and make it one df.

#Solution 2:
#load the library openxlsx
library(openxlsx)
#use function read.xlsx() for reading the .xlsx files
df1 <- read.xlsx("xx_1.xlsx")
df2 <- read.xlsx("xx_2.xlsx")
d <- merge(x=df1,y=df2)

#loop used for iteration to read the 25 files
for (i in 3:25) {
  name=paste("xx_",i,sep="")
  name=paste(name,".xlsx",sep ="")
  df<- read.xlsx(name)
  d<- merge(x=d,y=df) 
}


#Q3. If the above 25 files were csv files, what would be your script to read?

#Solution 3:
#use function read.csv() for reading the .csv files
df1 <- read.csv("xx_1.csv")
df2 <- read.csv("xx_2.csv")
d <- merge(x=df1,y=df2)

#loop used for iteration to read the 25 .csv files
for (i in 3:25) {
  name=paste("xx_",i,sep="")
  name=paste(name,".csv",sep ="")
  df<- read.csv(name)
  d<- merge(x=d,y=df) 
}
