### Proyecto/Tarea Final
library(readr)
#LOS SIGUIENTES PUNTOS SE CONSIDERARAN PARA LA EVALUACION:
#- Buenas practicas
#- Codigo limpio y legible
#- Esfuerzo
#- Resultados
#- Comentarios y observaciones del analisis que vayan haciendo

#- HINT GENERAL: Si no lo sabes hacer, googlealo o revisa los scripts de las clases
#- Mas informacion sobre el dataset utilizado: https://datos.gob.mx/busca/dataset/informacion-referente-a-casos-covid-19-en-mexico

#1) Descarga el csv de los datos del COVID http://datosabiertos.salud.gob.mx/gobmx/salud/datos_abiertos/datos_abiertos_covid19.zip,
# importa los datos en R
# RECOMENDACION: usar read_csv
read_cvs("")

#2) Extrae una muestra aleatoria de 100k registros y asignala en una nueva variable. A partir de ahora trabaja con este dataset
# HINT: usar funcion sample_n de dplyr

#3)Haz un resumen estadistico del dataset y tambien muestra los tipos de datos por columna

#4)Filtra los renglones que dieron positivo para SARS-COVID y calcula el numero de registros
## Los casos positivos son aquellos que en la columna CLASIFICACION_FINAL tienen 1, 2 o 3

#5)Cuenta el numero de registros nulos por columna (HINT: Usar sapply o map, e is.na)

#6)
##a)Calcular la media de edades de los contagiados de covid
##b)Realiza un Histograma de las edades de los contagiados 
##c)Realiza una grafica de densidad de edades de los contagiados

#7)Agregar una columna nueva al dataframe que tenga valor 1 cuando la fecha de defuncion no es valor nulo y 0 cuando es nulo 
## La columna que contiene la fecha de defuncion se llama FECHA_DEF 
## HINT: Usa mutate, ifelse e is.na

#8)Hacer un boxplot de edades de los muertos por covid vs lo que no murieron para ver si detectamos diferencias y escribe tus conclusiones

#9)Transforma la columna CLASIFICACION_FINAL, que tenga valor de 1 si tiene 1, 2 o 3 como valor y que tenga 0 en cualquier otro caso
## HINT: Usar transform o mutate

#10)Cuenta el numero de casos positivos agrupado por estado y realiza una grafica de barras de los 10 estados con mas casos
## HINT: Usar groupby, summarize, n(), y ggplot2

#11)Renombra la columna llamada CLASIFICACION FINAL para que ahora su nombre sea: "CONTAGIADO"

#12)Realiza una funcion que al aplicarla nos diga el procentaje del total de registros que estan contagiados por Covid
#Ejemplo: al correr la funcion porcentaje_contagios(mi_dataframe) el resultado sea: 20.5%

porcentaje_contagiados <- function(mi_dataframe) {
  
}

#13)Realiza una matriz de corrrelacion entre las variables numericas y concluye
## HINT: https://stackoverflow.com/questions/5863097/selecting-only-numeric-columns-from-a-data-frame

#14)Realiza algun analisis, conteo por grupo y/o grafica que te parezca relevante para complementar el estudio y concluye



           