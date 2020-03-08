# Unit 1

## Introduction
Data mining is the process of discovering patterns in large data sets involving methods at the intersection of machine learning, statistics, and database systems.

Next, the practices carried out in this course will be shown.

# Content
- [Practice 1](#practice-1)
- [Practice 2](#practice-2)
- [Practice 3](#practice-3)
- [Practice 4](#practice-4)
- [Practice 5](#practice-5)
- [Collaborators](#Collaborators)

## Practice 1

Test the Law Of Large Numbers for N random normally distributed numbers with mean = 0, stdev=1:

Create an R script that will count how many of these numbers fall between -1 and 1 and divide
by the total quantity of N

You know that E(X) = 68.2%
Check that Mean(Xn)->E(X) as you rerun your script while increasing N

```
N <- 50 #1. Initialize sample to 50 but can be any number
counter <- 0 #2. Initialize counter
for(i in rnorm(N)){ #3. Loop for(i in rnorm(size))
  if(i <= 1 & i >= -1){ #4. Check if the iterated variable falls
    counter <- counter + 1 # 5. Increase counter if the condition is true
  }
}
result <- counter / N #6. return a result <- counter / N
result
```

## Practice 2

 Find 20 more functions in R and make an example of it.
 ```
# 1. append() - add elements to a vector
append(1:5, 0:1, after = 3) # [1] 1 2 3 0 1 4 5

# 2. cbind() - Combine vectors by row/column
m <- cbind(1, 1:7) 
# |V1 | V2
# | 1 | 1
# | 1 | 2
# | 1 | 3
# | 1 | 4
# | 1 | 5
# | 1 | 6 
# | 1 | 7

# 3. identical() - test if 2 objects are exactly equal
identical(1, -1) ## FALSE 
identical(1, 1.) ## TRUE in R (both are stored as doubles)

# 4. range(x) - minimum and maximum
x <- c(2,7,1,-17,35,21,7)
range(x) #[1] -17  35

# 5. sort(x) - sort the vector x
x<-c(3,5,1,2,4,7) 
sort(x) #[1] 1 2 3 4 5 7
# sorting with sort function in R: descending order 
sort(x,decreasing=TRUE) #[1] 7 5 4 3 2 1

# 6. rank() - returns the ranks of the values in a vector
x <- c(2,7,1,-17,NA,Inf,35,21)
rank(x) #[1] 3 4 2 1 8 7 6 5

# 7. sq() - generates a sequence of numbers
seq(5,10) #[1]  5  6  7  8  9 10
seq(from=0, to=20, length.out=5) #[1]  0  5 10 15 20


# 8. strsplit() - split the string into substrings with the specified delimiter.
mysentence<- "india won the icc worldcup on 2011"
strsplit(mysentence," ") #[1] "india" "won" "the" "icc" "worldcup" "on" "2011"   

# 9. cat() - combine character values and print them to the screen or save them in a file directly
cat('one',2,'three',4,'five') #one 2 three 4 five

# 10. trunk() - rounds to the nearest integer in the direction of 0.
trunc(125.2395) #[1] 125

# 11. round a number with the indicated decimals, if not indicated an integer is given
round (6.78.1)
round (11.80)

# 12. Argument (...)
inverse <- function (...) {
  v <- unlist (list (...)) # Assign the arguments to a vector
  x <- 1 / v
  return (x)
}
inverse (3)

# 13. concatenate
x <- c (1,2,3)
t <- c ("one", "two", "three")
x; t

# 14. root
sqrt (25)

# 15. text and output variable, \ n new line
x <- 5
and <- 2
cat (x, "raised to", y, "is", x ^ y, "\ n")

# 16. shows the number of elements
x <- 7:10
length (x)

# 17. removes decimals
trunc (3.1416)
trunc (23.0987)

# 18. returns T if the condition is met
x <- runif (10, -10, 100)
if (any (x <0)) cat ("In x there are negative numbers \ n")

# 19. sum the vector elements
x <- runif (50,2,15)
sum (x)

# 20. generates random numbers
runif (3,1,10)

```

## Practice 3

```
#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
#1 Calculate Profit As The Differences Between Revenue And Expenses
profit <- revenue - expenses
profit

#2 Calculate Tax As 30% Of Profit And Round To 2 Decimal Points
tax <- round(0.30 * profit,2) #round(,3)used to decide some decimals will be used 
tax 

#3 Calculate Profit Remaining After Tax Is Deducted
profit.after.tax <- profit - tax
profit.after.tax

#4 Calculate The Profit Margin As Profit After Tax Over Revenue
#Round To 2 Decimal Points, Then Multiply By 100 To Get %
profit.margin <- round(profit.after.tax/revenue,2) *100
profit.margin <- paste(profit.margin,'%') 
profit.margin #to concatenate characters it is separated by commas and quotation marks are used in the deceased character

#5 Calculate The Mean Profit After Tax For The 12 Months
mean_pat <- mean(profit.after.tax) #The mean is the average of the numbers
mean_pat

#6 Find The Months With Above-Mean Profit After Tax
good.months <- profit.after.tax > mean_pat #with the character> the search for the months greater than the average was mean
good.months

#7 Bad Months Are The Opposite Of Good Months !
bad.months <-  !good.months #!tells us otherwise
bad.months

#8 The Best Month Is Where Profit After Tax Was Equal To The Maximum
best.month <- profit.after.tax == max(profit.after.tax)
best.month

#9 The Worst Month Is Where Profit After Tax Was Equal To The Minimum
worst.month <- profit.after.tax == min (profit.after.tax)
worst.month

#10 Convert All Calculations To Units Of One Thousand Dollars
revenue.1000 <- round(revenue / 1000, 0)
expenses.1000 <- round(expenses / 1000, 0)
profit.1000 <- round(profit / 1000, 0 )
profit.after.tax.1000 <- round(profit.after.tax / 1000, 0) 

#11 Print Results
revenue.1000
expenses.1000
profit.1000
profit.after.tax.1000
profit.margin
good.months
bad.months
best.month
worst.month

#12 BONUS:
#Preview Of What's Coming In The Next Section
M <- rbind(
  revenue.1000,
  expenses.1000,
  profit.1000,
  profit.after.tax.1000,
  profit.margin,
  good.months,
  bad.months,
  best.month,
  worst.month
)

#Print The Matrix
M
```

## Practice 4
```
#Dear Student,
#
#Welcome to the dataset for the homework exercise.
#
#Instructions for this dataset:
# You have only been supplied vectors. You will need
# to create the matrices yourself.
# Matrices:
# - FreeThrows
# - FreeThrowAttempts
#
#Sincerely,
#Kirill Eremenko
#www.superdatascience.com

#Copyright: These datasets were prepared using publicly available data.
#           However, theses scripts are subject to Copyright Laws. 
#           If you wish to use these R scripts outside of the R Programming Course
#           by Kirill Eremenko, you may do so by referencing www.superdatascience.com in your work.

#Comments:
#Seasons are labeled based on the first year in the season
#E.g. the 2012-2013 season is preseneted as simply 2012

#Notes and Corrections to the data:
#Kevin Durant: 2006 - College Data Used
#Kevin Durant: 2005 - Proxied With 2006 Data
#Derrick Rose: 2012 - Did Not Play
#Derrick Rose: 2007 - College Data Used
#Derrick Rose: 2006 - Proxied With 2007 Data
#Derrick Rose: 2005 - Proxied With 2007 Data

# You have been supplied data for two more additional in-game statistics:
# * Free Throws
# * Free Throws Attempts
# 
# You need to create three plots that portray the following insights:
# * Free Throw Attempts per game
# * Accurancy of Free Throws
# * Player playing style (2 vs 3 points preference) excluding Free Throws
# 
# - Each Free Throw is worth 1 point
# 
# The data has been supplied in the form of vectors. You will have to create
# two matrices before you proceed with the analysis.

#Seasons
Seasons <- c("2005","2006","2007","2008","2009","2010","2011","2012","2013","2014")

#Players
Players <- c("KobeBryant","JoeJohnson","LeBronJames","CarmeloAnthony","DwightHoward","ChrisBosh","ChrisPaul","KevinDurant","DerrickRose","DwayneWade")

#Free Throws
KobeBryant_FT <- c(696,667,623,483,439,483,381,525,18,196)
JoeJohnson_FT <- c(261,235,316,299,220,195,158,132,159,141)
LeBronJames_FT <- c(601,489,549,594,593,503,387,403,439,375)
CarmeloAnthony_FT <- c(573,459,464,371,508,507,295,425,459,189)
DwightHoward_FT <- c(356,390,529,504,483,546,281,355,349,143)
ChrisBosh_FT <- c(474,463,472,504,470,384,229,241,223,179)
ChrisPaul_FT <- c(394,292,332,455,161,337,260,286,295,289)
KevinDurant_FT <- c(209,209,391,452,756,594,431,679,703,146)
DerrickRose_FT <- c(146,146,146,197,259,476,194,0,27,152)
DwayneWade_FT <- c(629,432,354,590,534,494,235,308,189,284)

#Games 
KobeBryant_G <- c(80,77,82,82,73,82,58,78,6,35)
JoeJohnson_G <- c(82,57,82,79,76,72,60,72,79,80)
LeBronJames_G <- c(79,78,75,81,76,79,62,76,77,69)
CarmeloAnthony_G <- c(80,65,77,66,69,77,55,67,77,40)
DwightHoward_G <- c(82,82,82,79,82,78,54,76,71,41)
ChrisBosh_G <- c(70,69,67,77,70,77,57,74,79,44)
ChrisPaul_G <- c(78,64,80,78,45,80,60,70,62,82)
KevinDurant_G <- c(35,35,80,74,82,78,66,81,81,27)
DerrickRose_G <- c(40,40,40,81,78,81,39,0,10,51)
DwayneWade_G <- c(75,51,51,79,77,76,49,69,54,62)

#Matrix
FThrow <- rbind(KobeBryant_FT, JoeJohnson_FT, LeBronJames_FT, CarmeloAnthony_FT, DwightHoward_FT, ChrisBosh_FT, ChrisPaul_FT, KevinDurant_FT, DerrickRose_FT, DwayneWade_FT)
rm(KobeBryant_FT, JoeJohnson_FT, LeBronJames_FT, CarmeloAnthony_FT, DwightHoward_FT, ChrisBosh_FT, ChrisPaul_FT, KevinDurant_FT, DerrickRose_FT, DwayneWade_FT)
colnames(FThrow) <- Seasons
rownames(FThrow) <- Players
FThrow
# * Free Throw Attempts per game
myplot(FThrow/Games)
# * Accurancy of Free Throws
# * Player playing style (2 vs 3 points preference) excluding Free Throws

#Free Throw Attempts
KobeBryant_FTA <- c(819,768,742,564,541,583,451,626,21,241)
JoeJohnson_FTA <- c(330,314,379,362,269,243,186,161,195,176)
LeBronJames_FTA <- c(814,701,771,762,773,663,502,535,585,528)
CarmeloAnthony_FTA <- c(709,568,590,468,612,605,367,512,541,237)
DwightHoward_FTA <- c(598,666,897,849,816,916,572,721,638,271)
ChrisBosh_FTA <- c(581,590,559,617,590,471,279,302,272,232)
ChrisPaul_FTA <- c(465,357,390,524,190,384,302,323,345,321)
KevinDurant_FTA <- c(256,256,448,524,840,675,501,750,805,171)
DerrickRose_FTA <- c(205,205,205,250,338,555,239,0,32,187)
DwayneWade_FTA <- c(803,535,467,771,702,652,297,425,258,370)

#Matrix
FThrowAttempts <- rbind(KobeBryant_FTA, JoeJohnson_FTA, LeBronJames_FTA, CarmeloAnthony_FTA, DwightHoward_FTA, ChrisBosh_FTA, ChrisPaul_FTA, KevinDurant_FTA, DerrickRose_FTA, DwayneWade_FTA)
rm(KobeBryant_FTA, JoeJohnson_FTA, LeBronJames_FTA, CarmeloAnthony_FTA, DwightHoward_FTA, ChrisBosh_FTA, ChrisPaul_FTA, KevinDurant_FTA, DerrickRose_FTA, DwayneWade_FTA)
colnames(FThrowAttempts) <- Seasons
rownames(FThrowAttempts) <- Players
FThrowAttempts
```

## Practice 5
```
# Method 1: Select the file manually
stats <- read.csv (file.choose ())
statistics

# Method 2: Set the working directory and read data
getwd ()
#windows
setwd ("C: \\ Users \\ username \\ Documents \\ Rprojects")
#Mac
setwd ()
setwd ('/ ')
getwd ()
rm (statistics)
stats <- read.csv ("Demographic-Data.csv")

# ------ Exploring the data
statistics
is.data.frame (statistics)
nrow (statistics)
ncol (statistics)
head (statistics, n = 10) # first 10
queue (statistics, n = 8) # last 8
summary (statistics) #

# ------ Using the $ sing
statistics
head (statistics)
statistics [3,3]
stats [3, "birth rate"]
typeof (statistics) #type
stats $ Internet.users
stats $ Internet.users [2]
stats [, "Internet.users"]
levels (stats $ Income.Group)

# ------ Basic operations with data frames -----------------------
stats [1:10,] #subsetting #first 10 lines with tpdas columns
statistics [3: 9,]
statistics [c (4, 100),]
is.data.frame (stats [1,])
is.data.frame (stats [, 1])
is.data.frame (stats [, 1, drop = F])
stats [, 1, drop = F] # request all country information

# ------- Multiply columns
stats $ Birth.rate * stats $ Internet.users
stats $ Birth.rate + stats $ Internet.users

# ------- Add columns
head (statistics)
stats $ BRbyIU <- stats $ Birth.rate * stats $ Internet.users
head (statistics)

# ------ Thigs to know
stats $ xyz <- 1: 5
head (statistics, n = 12)

# ------ Delete columns
head (statistics)
stats $ BRbyIU <- NULL # remove columns
stats $ xyz <- NULL

# ------ Filtering data frames -----------------------
head (statistics)
filter <- stats $ Internet.users <2 #TRUE
filter
stats [filter,]

stats [stats $ Birth.rate> 40,] # fltra to over 40
stats [stats $ Birth.rate> 40 & stats $ Internet.users <2,]
stats [stats $ Income.Group == "High income",]
levels (stats $ Income.Group)

#Practice
# Low-income filter countries
stats [stats $ Income.Group == "High income", "Country.Name"]

# Filter countries by low average income
stats [stats $ Income.Group == "Low average income", "Country.Name"]

# Filter countries by medium high income
stats [stats $ Income.Group == "Medium high income", "Country.Name"]

#Filter by country Malta
stats [stats $ Country.Name == "Malta",]

#Filter by country Qatar
stats [stats $ Country.Name == "Qatar",]

#Filter by country Netherlands
stats [stats $ Country.Name == "Netherlands",]

#Filter by country Norway
stats [stats $ Country.Name == "Norway",]
```
## Collaborators
* **Anahi Estrada** - [Github](https://github.com/anahi-17)
* **Lilia Rosales** - [Github](https://github.com/liliarsis)
