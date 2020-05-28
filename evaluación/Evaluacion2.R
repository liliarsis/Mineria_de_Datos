#Importa el dataset y lo declaramos como movies
movies <- read.csv("C:/Users/W 10 PRO/Downloads/Project-Data.csv")
#movies <- read.csv(file.choose())

#Exploracion del dataset 
head(movies)#Muestra los primeros datos
colnames(movies)#Muestra el nombre de las columnas
str(movies)#Muestra la estructura
summary(movies)#Muestra un resumen

#Filtracion por genero 
filt_gen <- movies[movies$Genre %in% c("action", "adventure", "animation", "comedy", "drama"),]

#Filtracion por estudio
filt_stu <- filt_gen[filt_gen$Studio %in% c("Buena Vista Studios", "WB", "Fox", "Universal", "Paramount Pictures"),]

#Activar GGPlot2
#install.packages("ggplot2")
library(ggplot2)

#Crear el ggplot
mp <- ggplot(data = filt_stu, aes(x = Genre, y=Gross...US))
mp +geom_boxplot()

#Agregar jitter
p <- mp + geom_jitter() + geom_boxplot()
p

#Agregar estetica: size y color
p <- mp +geom_jitter(aes(size = Budget...mill., color=Studio)) + 
  geom_boxplot() 
p

#Se elimina los puntos negros y se transparenta boxplot
p <- mp +geom_jitter(aes(size = Budget...mill., color=Studio)) +
  geom_boxplot(alpha=0.7, outlier.colour =NA)
p

#Se agrega titulo a los ejes x, y y al plot
p <- p +xlab("Genre") + ylab("Gross % US") + ggtitle("Domestic Gross % by Genre")
p

#Se cambia el color, tamano y tipo de letra 
p <- p + theme(axis.title.x = element_text(color = "Blue", size = 20) ,
               axis.title.y = element_text(color = "Blue", size = 20) ,
               axis.text.x  = element_text(size = 10),
               axis.text.y  = element_text(size = 10),
               plot.title   = element_text(size = 15),
               legend.title = element_text(size = 15),
               text = element_text(family = "Comic Sans MS"))
p
