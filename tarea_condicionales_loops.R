#1) if {} else {}
### Crear un if else que evalue si un numero es mayor a 100, si es asi, entonces
### que imprima en consola "Numero muy grande, el numero es: (Aqui poner el numero)"
### y si el numero es menor o igual a 100, entonces que imprima "Numero adecuado"

x<-100
if(x > 100)
{
  print(paste("Número muy grande, el número es: ", x))
}else{
 print("Número adecuado") 
}
#2) ifelse()
### Hacer lo mismo que en el punto anterior, pero ahora con la funcion ifelse()
ifelse(x>100,print(paste("Número muy grande, el número es: ", x)), print("Número adecuado"))
#3) Switch
### Hacer una funcion a la que le pases como argumento el nombre de una operacion (inventada)
### y que realice el proceso. Ejemplo mis_operaciones(operacion = "gallina", x = 6, y = 4) 
### y de como resultado: (6*4) - 6 = 18 (Es solo un ejemplo)
### Hint. Revisar el video de Switch

Hacer_operacion <-function (operacion, v1,v2){
  switch(
    operacion,
    "azul"=  v1+v2 * v1,
    "verde" = (v1-v2)/v2,
    "amarillo" = v1/v2^v2,
    "cafe" = (v1*v2)%%v1,
    "magenta" = v1 %% v2*v1,
    "blanco" = v1 ^ v2/v1,
    "Esta operacion no esta determinada"
  )
}
Hacer_operacion (operacion="magenta", v1=2, v2=1)
#4) for loop
### Crear un for loop que sume del numero 500 al 1000
x<-0
for (num in 500:1000)
{
  x<-x+num
}

#5) While
### Crear un while que se ejecute mientras x > 200, tomando como valor inicial x <- 1000
### y que disminuya en una unidad en cada iteracion hasta que llegue al 200 y se rompa
### el while
x <- 1000
while( x > 200){
  x<-x-1
}