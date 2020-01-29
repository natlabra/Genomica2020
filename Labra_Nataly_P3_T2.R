#####################################################################
#ejercicio 3
#A) carcar archivo 
getwd()
setwd("C:/Users/natha/OneDrive/Documentos/Genomica2020/")
list.files()
red<-read.csv("Red_de_Amigas_GF_2020 - Sheet1.csv")
red
##############################################################################################################################################
#B) Generar vector de nombres de mis amigos 
mis_amigos<-red  ##coverti mi archivo red en un vector que se llama mis_amigos
mis_amigos ##con esto veo mis amigos 
head(mis_amigos)

mis_amigos[1,-c(8,9,10,11,15,16,17)]  ##con este vector excluyo a aquellos que no son 
#mis amigos y solamente me da los nombres de los que sí son mis amigos segun la red

##################################################################################################################################################
#C) Generar vector de nombres que se consideren mis amigos 
mis_amigos1<-red ##creo mi vector a partir del archivo de excel 
mis_amigos1

mis_amigos1[1,-c(9,10,11,15,16,17)] ##este vector me da los nombres de aquellos que segun la red
##se consideran mis amigos 

###############################################################################################
#D) Imprima el texto "Hola amigo1" en donde amigo 1 es el nombre de cada unos de tus amigos 
##Hice un vector con los nombres de mis amigos
nombres<- c("Amy", "Brenda", "Carla","Cesar","DanielaL","DanielaM","Dhamaris","Isaac","Jannet","Jennifer","Paulina","Perla","Sandi","Karen")
nombres 

##Hice un ciclo for que me permita imprimir el mensaje "Hola amigo" para cada uno de mis amigos 
for(i in 1:14)
{print(paste("hola (:", nombres[i]))
} 

