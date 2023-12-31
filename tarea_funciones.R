
#1)
###Crear una funcion que al aplicarla sobre un dataframe te de de la columna 1 a 
#la columna x 

#Por ejemplo, esto deberia de dar de la columna 1 hasta la 5 de mtcars
#obtener_columnas(tabla = mtcars, hasta = 5) 

obtener_columnas <- function(tabla, columna) {
  tabla[, 1:columna]
  
}
obtener_columnas(tabla = mtcars, columna=5)

#2) 
#Crear una funcion que nos de el punto medio entre dos numeros que se pasen a
#los argumentos de la funcion y que la funcion imprima en pantalla: El punto medio de valor1 y 
#valor2 es z. 

#Por ejemplo, punto_medio(x = 6, y = 8) deberia de regresar como resultado:
# El punto medio entre 6 y 8 es 7.


punto_medio <- function(v1,v2) {
  resultado <- (v1+v2)/2
  paste("El punto medio de valor1 y valor2 es:", resultado)
}
punto_medio(v1=6,v2=8)

#3)
#Crear una funcion nueva o utilizar una funcion existente que cuente del numero 
#1 al numero x. Por ejemplo, mi_suma(x = 1, y = 100) debe de regresar como resultado 5050


mi_suma <- function(x,  y) {
  numeros <- c (x:y)
  suma<- sum(numeros)
  print(suma)
}

mi_suma(x=1,y=100)
#4)
#Utiliza apply para sumar los renglones de dataframe mtcars

apply(mtcars, MARGIN=1, sum)
#5) 
#Utiliza tapply para contar los vehiculos agrupado por cilindros 
#(En el video de ese tema viene algo muy parecido)
tapply(mtcars$mpg, mtcars$cyl, length)


