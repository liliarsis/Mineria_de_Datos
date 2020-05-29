getwd()
setwd("C:/Users/Daniel/Desktop/Practicas R")
getwd()

# Importing the dataset
dataset <- read.csv(file.choose())
dataset


# Splitting the dataset into the Training set and Test set
# Install.packages('caTools')
install.packages('caTools')
library(caTools)
set.seed(123)
split <- sample.split(dataset$comision, SplitRatio = 2/3)
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split == FALSE)

# Fitting Simple Linear Regression to the Training set
regressor = lm(formula = comision ~ Ventas,
               data = dataset)
summary(regressor)

# Predicting the Test set results
y_pred = predict(regressor, newdata = test_set)

# Visualising the Training set results
library(ggplot2)
ggplot() +
  geom_point(aes(x=training_set$Ventas, y=training_set$comision),
             color = 'red') +
  geom_line(aes(x = training_set$Ventas, y = predict(regressor, newdata = training_set)),
            color = 'blue') +
  ggtitle('ventas vs comision (Training Set)') +
  xlab('Ventas') +
  ylab('Comision')

# Visualising the Test set results
ggplot() +
  geom_point(aes(x=test_set$Ventas, y=test_set$comision),
             color = 'red') +
  geom_line(aes(x = training_set$Ventas, y = predict(regressor, newdata = training_set)),
            color = 'blue') +
  ggtitle('ventas vs comision (Test Set)') +
  xlab('Ventas') +
  ylab('Comision')