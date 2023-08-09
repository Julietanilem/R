#TAREA: ESTRUCTURAS DE DATOS

#1) Declara un vector que contenga 6 valores con tipo de dato logical
logical_vector <- vector(mode = "logical", length = 6)

#2) Declara un vector que sea una secuencia que inicie en 100 y termine en 130
# que vaya incrementando de 0.1 en 0.1.
my_sequence <- seq(100, 130, by=0.1)
#3) Declara un dataframe que contenga las columnas "Edad" (tipo de dato numerico)
# Genero (Tipo de dato factor) y correo electronico (tipo de dato character) y asignale 
# 3 rengolnes con valores
edades <- c(12, 15, 17)
sexo <- c("Hombre", "Mujer", "Hombre")
mi_factor <- factor(sexo)

correos <- c("Julietanilem@gmail.com", "micorreo@gmail.com", "correo@gmail.com")
datos <- data.frame("Edad" = edades, "Genero" = sexo, "Correo" = correos)

#4) filtra los rengoles del dataframe mtcars que cumplan la condicion que 
#en la columna
# wt sea mayor a 2 y ademas que cyl sea igual a 8
mtcars2 <- mtcars[ mtcars$wt >2 & mtcars$cyl == 8,]
#5) Crea una lista vacia de longitud (lenght) 6. 

#Hint. En el video de listas viene como hacerlo
lista_vacia <- vector(mode="list", length= 6)
#6) Declara dos matrices con valores numericos
#y realiza multiplicacion matricial
#entre ellas.
matrizA <- matrix(1:10,nrow=5)
matrizB <- matrix(1:10,ncol=5)
AB <- matrizA%*%matrizB




