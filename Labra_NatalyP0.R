###15 Enero 2020
##tarea 
getwd()
setwd("C:/Users/CC/Documents/Genomica20/")
list.files()


##ejercicio 1

miSecuencia<-readRNAStringSet("first.fasta")
miSecuencia

traduccion<-translate(miSecuencia)
traduccion

#ejercicio 1 Rosalind ##Counting DNA nucleotides 
library(Biostrings) ##para poder resolver el problema tengo que descargar Biostrings 
library(msa) 
library(seqinr)
getwd() ## para sabe en donde estoy 
setwd("C:/Users/natha/OneDrive/Documentos/Genomica2020/")## para subir mi archivo de secuencias
list.files() #enlisto para ver si esta mi archivo
##################################################################################################
##ejercicio resuelto sin librerias especializadas
dna<-read.fasta("rosalind_dna.fasta") #leo mi secuencia 
dna
count(dna[[1]], 1) ## una vez que se leyó el archivo
#con la función #count# cuento los nucleotidos de mi secuencia 
###################################################################################################
##ejercicio resuelto con librerias especializadas
dna1<-readDNAStringSet("rosalind_dna.fasta") ##leer el archivo 
dna1
alphabetFrequency(dna1) ##uso la función de Biostrings de alphabetFrequency para contar cuantas veces se 
#repite los nucleotidos 
#######################################################################################################
#######################################################################################################
#Ejercicio 2 Rosalind #Complementing a Strand of DNA
##Resuelto con librerias especializadas 
setwd("C:/Users/natha/OneDrive/Documentos/Genomica2020/")## para subir mi archivo de secuencias
list.files()
dna2<-readDNAStringSet("rosalind_dna (1).fasta") ##leo mi secuencia 
dna2
reverseComplement(dna2) ##con la función de Biostrings ##reverseComplement## hago el reverso de mi
##secuencia de DNA que me dio la plataforma de Rosalind 
##############################################################################################
#ejercicio resuelto sin librerias especializadas 
##Hago un vector con la secuencia 
dna3<-("GTTCATTAAACCCGCATTTCACTAGGCTACAAACCTGGTAAGTCCCCCCTATCTCCTCTTAGGGGGAGGGCCGCATCGATACTCCATCCCCGTATCTACCAACTCCTAGGCGAGAGAGAATCGAAATGCGTGCCGAGCTCCGCTGGCTAGCAATACGCACGATCGCGACACTCGCATATCGGGGGTGATCCGGGACTGGAGGTGACCAGGGAGTAAGTAGTGCGAAAAGAACGGGCATACTCATAACCCCCAAGGTGCTTTGTGTTGAGTCCCACTATCACGGGTAATCGTCGTGTGATGAACCTGCTCTCGGTTTTGTCCATCGATTCTCAGCCGTGCTGAAAAGGTCGAAGACCAGCTTGAAGCGACAGTCATAATTCTTGACTCGAGGGATGATAGTGGTGATATAGAGCTAAGCTAACGCTATCCTCTCTTGATCCATATCCATAAACTACGGAATATCCACAAGTAAGTCCTCCGCCCTCGGAGTGCGCAAGACGGCAGCGCTACTGTACTTTTAGGAGAAAACATAAGAATTGTTTTCGTCAGAGGTTCACAACTGCCCAACGGCGCGTTGGGTAAGCGACTCTGCTAAGTCATATGTAGTCCACTTGAGCACATCTCAGAAAAGGTCTATCACCGATCAGCTATAAGTCTACATGTTCATATCGCGGACTGCCAGGTCCTCTTGGCAATAAGCGGACGCTGTAGGGGGCCCCCCCCGATAAGCACCCACGACACGTACACAAACCTGCAAAGGAGTGATTACACATCAGTCCAATTGTAACACTTAGCCATCGTGAGCAGATTCATCTAGCAACGCAAAAGCGGTTCTATTACCAGGTAGTTTACCGGCGAGCTGAAAAGGGTTGCTCCAAATCACGGGGCGATACGAGCA")
rev(dna3) ###con la funcion de rev, saco el reverso del vector 

