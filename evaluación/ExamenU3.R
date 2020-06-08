#cargamos el dataset social network ads
dataset <- read.csv(file.choose())
dataset = dataset[3:5]

#transformar los datos con el comando factor que es el que crea y modifica factores
dataset$Purchased = factor(dataset$Purchased, levels = c(0, 1))

#Dividimos nuestro dataset
library(caTools)#contiene funciones de estadistica
set.seed(123)#escojemos datos aleatoreos
split = sample.split(dataset$Purchased, SplitRatio = 0.70)#Dividir datos de la columna purchasee 
training_set = subset(dataset, split == TRUE)#conjunto de entrenamiento
test_set = subset(dataset, split == FALSE)#conjunto de prueba

#con esta linea se normalizar las características del entrenamiento y los datos de la prueba. 
#Esto requiere escalado de características
training_set[-3] = scale(training_set[-3])
test_set[-3] = scale(test_set[-3])

#cargamosla liberia e1071 que cintiene el algoritmo naivebayes
library(e1071)
#ajustamos los datos del clasificador naiveBayes al conjunto de entrenamiento.
nb = naiveBayes(formula = Purchased ~ .,
                  data = training_set,#es un marco de datos de variables numéricas o de factores.
                  type = 'C-classification',#clasifica nuestros datos
                  kernel = 'linear')#Especifica el tipo de núcleo que se utilizará en el algoritmo.

#ejecuta el clasificador en el conjunto de entrenamiento y el conjunto de prueba para que 
#se puedan hacer predicciones.
y_pred_train = predict(nb, newdata = training_set[-3])
y_pred = predict(nb, newdata = test_set[-3])

# Visualizamos los datos de entrenamiento 
set = training_set#creamos la variable de entrenamiento
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)# parametros de x
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary') #nombre de las etiqietas 
y_grid = predict(nb, newdata = grid_set)
plot(set[, -3],
     main = ' NB  Classifier (Training set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'green', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'blue', 'red'))


#visualizacion de los datos de prueba
set = test_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(nb, newdata = grid_set)
plot(set[, -3], main = 'NB (Test set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'green', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'blue', 'red'))


