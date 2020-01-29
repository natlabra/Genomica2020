############################################################################
#Ejercicio Dos## Ciclo FOR 
## Elabora un programa en R que utilice un ciclo for para a partir del vector v siguiente
#v <-sample(100) ##imprima los cuadrados de los números impares.

v<-sample(100) 
v

#hasta aqui solo me da los cuadrados
v<-0
for(i in 1:100) {
  v<-i^2
  print(v)
}


#Este ciclo me da los cuadrados de todos los numeros impares del 1:100
n = 100         ##Doy un valor a n en este caso es el 100  
pares = c()    ##creo un vector de pares vacio   
impares = c()    ##creo otro vector de impares igualmente vacio 
 for(i in 1:n){   ## Ahora empiezo el ciclo for de 1 al 100 
if(i%%2==0) pares<-c(pares,i^2)  ##condiciono que si cada i sea divido en dos es igual a cero sera numero par donde i sera elevado al cuadrado   
 else impares<-c(impares,i^2)}  ##si no lo hago con los numeros impares que es lo que me interesa, y de igual manera que cada numero impar i sea elevado al cuadrado
impares ##como lo que me interesa en entes ejercicio son los impares
##imprimo solo los numeros impares



  
  