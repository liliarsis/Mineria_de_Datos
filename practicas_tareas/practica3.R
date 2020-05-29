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
set.seed(123) #crear simulaciones aleatorios que pueden reproducirse. seed = Un número.
split <- sample.split(dataset$Profit, SplitRatio = 0.8)
training_set <- subset(dataset, split == TRUE) #dividimos los datos en conjunto de entrenamiento 
test_set <- subset(dataset, split == FALSE)#dividimos los datos en conjunto de test

# Fitting Multiple Linear Regression to the Training set
#regressor = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend + State)
regressor = lm(formula = Profit ~ .,#en esta linea se crea un regresor y se le asigana el conjunto de datos que usara
               data = training_set )#por medio de la funcion lm, en este  caso sera el conjunto de entrenamiento el que tomara el eje X

summary(regressor)#por medio sel summary podemos visualizar los resultados
#los residuales nos muestran distancias que existen entre los valores de las variables y del conjunto de datos 
#valores de calidad del ajuste R2, que en nuestro caso es de 0.9425.

# Prediction the Test set results
y_pred = predict(regressor, newdata = test_set)
y_pred #creamos un vector de predicciones visualizar la curva de ajuste de los datos. Con la funcion predict obtenemos las predicciones

# Assigment: visualize the siple liner regression model with R.D.Spend 

# Building the optimal model using Backward Elimination
regressor = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend + State,
               data = dataset )
summary(regressor)

regressor = lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend,
               data = dataset )
summary(regressor)

regressor = lm(formula = Profit ~ R.D.Spend + Marketing.Spend,
               data = dataset )
summary(regressor)

regressor = lm(formula = Profit ~ R.D.Spend + Marketing.Spend,
               data = dataset )
summary(regressor)

y_pred = predict(regressor, newdata = test_set)
y_pred

# Homework analise the follow atomation backwardElimination function 
backwardElimination <- function(x, sl) { #se crea un modelo con todas las variebles independientes 
  numVars = length(x)#indica la longitud de las variables 
  for (i in c(1:numVars)){
    regressor = lm(formula = Profit ~ ., data = x)#Ajustar el MRL con el Conjunto de Entrenamiento
    maxVar = max(coef(summary(regressor))[c(2:numVars), "Pr(>|t|)"])
    if (maxVar > sl){#si el 
      j = which(coef(summary(regressor))[c(2:numVars), "Pr(>|t|)"] == maxVar)
      x = x[, -j]
    }
    numVars = numVars - 1 #el ciclo continua hasta que todas las variables son revisadas
  }
  return(summary(regressor))
}

SL = 0.05#nivel de significancia, se descartaran las variables que tengan un p-value mayor que este
dataset = dataset[, c(1,2,3,4,5)]
training_set #muestra las 5 columnas con los 50 datos
backwardElimination(training_set, SL)
#al vusializar los resultados vemos que solo R.D.Spend es significativo para nuestro análisis de regresión.
