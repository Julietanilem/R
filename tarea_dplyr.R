library(ggplot2)
library(dplyr)
library(magrittr)
library(tidyverse)

data("mtcars")

new_mtcars <- mtcars %>% rownames_to_column(var = "Model")

#Usa este dataframe para resover los ejercicios
new_mtcars

#1) Ordena el dataset de mayor a menor por la columna hp
new_mtcars %>%  arrange(hp) 

#2) Calcula las millas por galon (columna mpg) promedio agrupado por cilindros (cyl)
new_mtcars %>% group_by(cyl) %>% summarise(pomedio_mpg=mean(mpg))

  #3) Agrega una columna extra al dataframe que se llame categoria_cyl que 
# tenga como valor "potente" si el auto tiene 8 cilindros, "normal" si tiene
# 6 cilindros y "economico" si tiene 4 cilindros. (Usa mutate e ifelse())
new_mtcars %>% mutate(categoria_cyl = ifelse (cyl == 8, "Potente", ifelse(cyl == 6, "Normal", "Economico")
))

#4) Realiza lo mismo que en el punto anterior, pero en lugar de agregar nueva columna
# transforma la columna cyl (Usa transform y case_when)
new_mtcars %>% transform(cyl = case_when (
  cyl == 8 ~ "Potente",
  cyl == 6 ~ "Normal",
  cyl == 4 ~"Economico",
 
))

#5) Cambia el nombre de la columna "Model" para que ahora se llame "Vehiculo"
new_mtcars %>% rename("vehiculo"=Model)
#6) Aplica un filtro de tal forma que obtengas los autos con hp mayor al promedio
# de la columna 
new_mtcars %>% filter (hp>mean(hp))

#7) Selecciona las columnas que estan en la posicion 2 y 5 (Usa select)

new_mtcars %>% select(2,5)








