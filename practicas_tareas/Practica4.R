getwd()
setwd("/Users/anahiestrada/Desktop/DataMining-master/MachineLearning/MultipleLinearRegression")
getwd()

# Importing the dataset
dataset <- read.csv('50_Startups.csv')

# Encoding categorical data 
# Convierte los valores de la variable State a numeros
dataset$State = factor(dataset$State,
                       levels = c('New York', 'California', 'Florida'),
                       labels = c(1,2,3))
dataset

# Splitting the dataset into the Training set and Test set
# Install.packages('caTools')
# Divide los datos del vector en en dos conjuntos, en este caso se utilizo Profit
library(caTools)
set.seed(123) #create random simulations that can be played. seed = A number.
split <- sample.split(dataset$Profit, SplitRatio = 0.8)
training_set <- subset(dataset, split == TRUE) #divide data into training set
test_set <- subset(dataset, split == FALSE)#divide data into test set

# Fitting Multiple Linear Regression to the Training set
#regressor = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend + State)
F#itting Multiple Linear Regression to the Training set. In this line a regressor is created and the dataset, through the lm function, in this case the training set will take the X axis
regressor = lm(formula = Profit ~ .,
               data = training_set )

summary(regressor)#by means of the summary we can visualize the results

# Prediction the Test set results
#Prediction the Test set results. We create a vector of predictions to visualize the fit curve of the data. With the predict function we obtain the predictions
y_pred = predict(regressor, newdata = test_set)
y_pred 

# Building the optimal model using Backward Elimination
regressor = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend + State,
               data = dataset )
summary(regressor)

y_pred = predict(regressor, newdata = test_set)
y_pred

# Homework analise the follow atomation backwardElimination function 
#a model is created with all the variables, 
#indicates the length of the variables, Adjust the MRL with the Training Set,
#the cycle continues until all variables are reviewed. 
backwardElimination <- function(x, sl) { 
  numVars = length(x)
  for (i in c(1:numVars)){
    regressor = lm(formula = Profit ~ ., data = x)
    maxVar = max(coef(summary(regressor))[c(2:numVars), "Pr(>|t|)"])
    if (maxVar > sl){#si el 
      j = which(coef(summary(regressor))[c(2:numVars), "Pr(>|t|)"] == maxVar)
      x = x[, -j]
    }
    numVars = numVars - 1 
  return(summary(regressor))
}
#significance level, variables with a p-value greater than this will be discarded
SL = 0.05
#shows the 5 columns with the 50 data
dataset = dataset[, c(1,2,3,4,5)]
training_set 
#in visualizing the results we see that only R.D.Spend is significant for our regression analysis.
backwardElimination(training_set, SL)
