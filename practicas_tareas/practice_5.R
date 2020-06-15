? read.csv ()

# Method 1: Select the file manually
stats <- read.csv (file.choose ())
statistics

# Method 2: Set the working directory and read data
getwd ()
#windows
setwd ("C: \\ Users \\ username \\ Documents \\ Rprojects")
#Mac
setwd ()
setwd ('/ home / chris / Documents / itt / January_June2020 / Data mining / DataMining / Dataframes')
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
