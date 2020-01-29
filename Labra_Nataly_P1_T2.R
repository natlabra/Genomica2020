#######################################################################
##TAREA 2##

library(igraph)
#primero hago mis redes
##Despues hago los ejercicios de cada una de las graficas
######################################################################
#Redes 
#Reduno
uno<-make_empty_graph(n=10, directed=FALSE) #Con esta función hago mi red dirigida indicando el numero de nodos 
V(uno)$color="coral"   ##le agrego el color que quiero a mi red 
V(uno)$shape="square" ##le agrego la forma que quiero a mi red 
uno<-add.edges(uno, c(1,2, 1,3, 1,4, 1,5, 1,6, 1,7, 1,8, 1,9, 1,10)) ##Agrego los edges a cada nodo, sus interacciones con sus vecinos 
plot(uno) ##con esto puedo ver mi red 
#EjercicioUno
#A) Vecinos
degree(uno) ##esta funcion me indica cuantos vecinos tiene cada nodo
##por ejemplo si queremos saber los vecinos del nodo 1 hacemos lo siguiente
degree(uno,1) ##nos indica que el nodo 1 tiene 9 vecinos 
degree(uno,2) ##nos indica que el nodo 2 tiene solo 1 vecino y asi se hace con los demás nodos
#B) Distribución de conectividades
degree.distribution(uno)
#C) Nodo mas conectado
which(degree(uno)==max(degree(uno))) ## con which pedimos que nos de quien es el mas conectado 
#D) Diametro
diameter(uno)
#E) matriz de Distancias & heatmap
##primero tengo que hacer mi matriz
class(uno) ##confirmo que mi objeto es igraph
matriz_uno<-as.matrix(get.adjacency(uno)) ##con esta funcion hago mi matriz de mi red uno
matriz_uno
heatmap(matriz_uno)##hago el heatmap 

##############################################################################################3
#RedDos
dos<-make_empty_graph(n=10, directed=FALSE) #Con esta función hago mi red dirigida indicando el numero de nodos 
V(dos)$color="darkorchid1"   ##le agrego el color que quiero a mi red 
V(dos)$shape="square" ##le agrego la forma que quiero a mi red 
dos<-add.edges(dos, c(1,2, 1,4, 1,8, 1,9, 1,10, 2,6, 2,7, 2,9, 2,10, 3,5, 3,7, 3,8, 4,5, 4,6, 4,7,4,8, 4,9, 5,7, 5,8, 5,6, 6,8, 7,9, 7,10, 8,9, 9,10)) ##Agrego los edges a cada nodo, sus interacciones con sus vecinos 
plot(dos)
#EjercicioDos
#A) Vecinos
degree(dos) ##esta funcion nos indica cuantos vecinos tiene cada nodo 
degree(dos,1) ##en este caso el nodo 1 tiene 5 vecinos 
degree(dos,2)
degree(dos,3) ##y asi se hace con todos los nodos para saber cuantos vecinos tiene cada uno 
#B) Distribución de conectividades
degree.distribution(dos)
#C) Nodo mas conectado
which(degree(dos)==max(degree(dos)))
#D) Diametro
diameter(dos)
#E) matriz de Distancias & heatmap
##primero tengo que hacer mi matriz
class(dos) ##confirmo que mi objeto es igraph
matriz_dos<-as.matrix(get.adjacency(dos)) ##con esta funcion hago mi matriz de mi red uno
matriz_dos
heatmap(matriz_dos)##hago el heatmap 

#######################################################################################
#RedTres
tres<-make_empty_graph(n=10, directed=FALSE) #Con esta función hago mi red dirigida indicando el numero de nodos 
V(tres)$color="deeppink"   ##le agrego el color que quiero a mi red 
V(tres)$shape="square"##le agrego la forma que quiero a mi red 
tres<-add.edges(tres, c(1,2, 2,3, 3,4, 4,5, 5,6, 6,7, 7,8, 8,9, 9,10, 10,1))
plot(tres)##con esto puedo ver mi red 

#EjercicioTres
#A) Vecinos
degree(tres) ##nos indica el numero de vecinos de cada nodo 
degree(tres,1) ##jemplo de cantidad de vecinos del nodo 1 
degree(tres,10)
#B) Distribución de conectividades
degree.distribution(tres)
#C) Nodo mas conectado
which(degree(tres)==max(degree(tres)))
#D) Diametro
diameter(tres)
#E) matriz de Distancias & heatmap
##primero tengo que hacer mi matriz
class(tres) ##confirmo que mi objeto es igraph
matriz_tres<-as.matrix(get.adjacency(tres)) ##con esta funcion hago mi matriz de mi red uno
matriz_tres
heatmap(matriz_tres)##hago el heatmap 

###############################################################################################
#######################################################################################
#RedCuatro
cuatro<-make_empty_graph(n=10, directed=FALSE) #Con esta función hago mi red dirigida indicando el numero de nodos 
V(cuatro)$color="springgreen"   ##le agrego el color que quiero a mi red 
V(cuatro)$shape="square"##le agrego la forma que quiero a mi red 
cuatro<-add.edges(cuatro, c(1,2, 1,3, 1,5, 1,6, 1,8, 2,9, 3,4, 5,7, 5,10))
plot(cuatro)##con esto puedo ver mi red 

#EjercicioCuatro
#A) Vecinos
degree(cuatro) ##nos indica la cantidad de vecinos de cada nodo
degree(cuatro,1) ##ejemplo de cantidad de vecinos del nodo 1 
degree(cuatro,5)
#B) Distribución de conectividades
degree.distribution(cuatro)
#C) Nodo mas conectado
which(degree(cuatro)==max(degree(cuatro)))
#D) Diametro
diameter(cuatro)
#E) matriz de Distancias & heatmap
##primero tengo que hacer mi matriz
class(cuatro) ##confirmo que mi objeto es igraph
matriz_cuatro<-as.matrix(get.adjacency(cuatro)) ##con esta funcion hago mi matriz de mi red uno
matriz_cuatro
heatmap(matriz_cuatro)##hago el heatmap
