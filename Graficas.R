##Realizzar 5 gráficas
library(ggplot2)
library(gganimate)
library(av)
library(gifski)
library(gapminder)
library(dplyr)
?mtcars
?airquality

#1)Gráfica de puntos
ozono.prom <- airquality %>% 
  group_by(Month) %>% 
  summarise(Ozone = mean(Ozone, na.rm=TRUE))
d<-ggplot(airquality, aes(x=Month, y=Ozone ,fill=Month))
d+geom_point()+shadow_mark()+transition_states(Month)+labs(title = "Mes:{closest_state}")
#En esta grafica podemos observar la distribución de ozono por 
#mes
#2) Grafica de pastel
a <- mtcars %>% 
  group_by(am) %>%
  summarise(n=n())
ggplot(a, aes(x="", y=n, fill=am))+
  geom_bar(stat="identity")+
  coord_polar("y", start=0)
#Con esta gráfica se puede concluir que la transmisión predominante es la que equivale a 0, es decir,
#automatica, superando por bastante a la 1 manual
#3)Grafica densidad
?airquality
s <- ggplot(airquality, aes(x=Wind))
s+geom_density()
#Esta grafica muestra la densidad de apariciones de los valores que 
#se midieorn respecto al viento
#4)de barras
peso.promedio <- mtcars%>% group_by(cyl) %>% summarise(wt=mean(wt))
b<-ggplot(peso.promedio, aes(x=cyl, y=wt, fill=cyl))
b+geom_col()+shadow_mark()+transition_states(cyl)+labs(title="Cilindros:{closest_state}")
#Esta grafica muestra que mientras más sea el peso promedio más cilindros
#tiene el auto.
#5) Grafica de boxplot
c<- ggplot(mtcars, aes(x=factor(am), y=mpg, fill=am))+geom_boxplot()
c+transition_states(cyl)+labs(title="Cilindros: {closest_state}")
#Aquí comparams las mpg de los autos con transmisión automatica contra los
#de transmisión manual. En general, los de transmisión 1 () recorren 
#más millas por galón, sin embargo esta diferencia disminuye según los
#cilindros y disminuyen las mpg
           