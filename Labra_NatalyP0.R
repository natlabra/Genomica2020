###15 Enero 2020
##tarea 
getwd()
setwd("C:/Users/CC/Documents/Genomica20/")
list.files()

######descargar biostrings
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("Biostrings")

library(Biostrings)

##Descargar msa 

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("msa")

library(msa)

##ejercicio 1

miSecuencia<-readRNAStringSet("first.fasta")
miSecuencia

traduccion<-translate(miSecuencia)
traduccion

#ejercicio 2
miSecuencia1<-("AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC")
alphabetFrequency(miSecuencia1)

