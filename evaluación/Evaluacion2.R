#1. Importamos el dataset y lo declaramos en una variable
movies <- read.csv("C:/Users/W 10 PRO/Downloads/Project-Data.csv")
#Si lo deseas puede importarlo de manera gráfica 
movies <- read.csv(file.choose())

#2. Exploracion del dataset 
head(movies)#Muestra los primeros datos
colnames(movies)#Muestra el nombre de las columnas
summary(movies)#Muestra un resumen

#3. Se realizan los filtros correspondientes.
#Filtración por género, toma los géneros del dataset movies. 
filt_gen <- movies[movies$Genre %in% c("action", "adventure", "animation", "comedy", "drama"),]

#Filtracion por estudio, toma los estudios del dataset movies.
filt_stu <- filt_gen[filt_gen$Studio %in% c("Buena Vista Studios", "WB", "Fox", "Universal", "Paramount Pictures"),]

#4. Se activa el paquete GGPlot2, para realizar las graficas.
library(ggplot2)
#En caso de no tener instalado el paquete
#install.packages("ggplot2")

#5. Creando el grafico usando ggplot
#Se crea una variable que toma, a partir del filtro por estudio, sus ejes X y Y
mp <- ggplot(data = filt_stu, aes(x = Genre, y=Gross...US))

# Se agrega el diagrama de caja o box plot 
mp + geom_boxplot()
mp

#La función jitter R agrega ruido a un vector numérico
p <- mp + geom_jitter() + geom_boxplot()
p

#Agregar estetica de jitter: size y color
# En esta caso, size de la columna Budget...mill y color de la columna Studio
p <- mp +geom_jitter(aes(size = Budget...mill., color=Studio)) + 
  geom_boxplot() 
p

#Si vemos hay algunos puntos negros, Se eliminan los puntos negros y se transparenta boxplot
p <- mp +geom_jitter(aes(size = Budget...mill., color=Studio)) +
  geom_boxplot(alpha=0.7, outlier.colour =NA)
p

#Se agrega nombre a los ejes x, y y al plot
p <- p +xlab("Genre") + ylab("Gross % US") + ggtitle("Domestic Gross % by Genre")
p

#Se personaliza el grafico cambiando el color, tamano y tipo de letra 
#Para esto se utiliza element_text, 
library(extrafont)
loadfonts(device = "win")
p <- p + theme(axis.title.x = element_text(color = "Blue", size = 20) ,
               axis.title.y = element_text(color = "Blue", size = 20) ,
               axis.text.x  = element_text(size = 10),
               axis.text.y  = element_text(size = 10),
               plot.title   = element_text(size = 15),
               legend.title = element_text(size = 15),
               text = element_text(family = "Comic Sans MS"))
p
#Para cambiar el nombre de la leyenda de Studio y Budget...Mill
p$labels$size <- "Budget $M"
p$labels$colour <- "Studio's"
p
