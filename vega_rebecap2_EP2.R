### REBECA VEGA ESCAMILLA ###

#2. P2 (15%)

#Elabora un programa completo de la práctica. Siempre puedes usar las versiones
#más ligeras de los archivos que se utilizan en la práctica. En particular 
#resuelve las preguntas contenidas en la práctica. Discute tus resultados.

#Cargo mis librerías
# Introduccion a IRanges
library(Biobase)
library(IRanges)
x <- IRanges(start=c(11,35,40), end=c(20,50,63))
x
start(x) # Todos los inicios
end(x)   # Todos los finales
width(x) # Ancho de cada rango
range(x) # Rango total de todos

exons<- reduce(x)

reads <-IRanges(start=c(1,21,30,50,80), width=20)
reads

countOverlaps(exons, reads)

# OBTENER LA ANOTACIÓN DEL GENOMA

if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("GenomicRanges")

if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("GenomeInfoDb")

library(rtracklayer)

human<-load("C:/Users/perse/Downloads/human.R")
human

seqnames(human)
ranges(human)
strand(human)
mcols(human)

table(mcols(human)$gene_biotype)
mcols(human) <- mcols(human)[,c("source","gene_id","gene_name","gene_biotype")]
mcols(human)


# Cómo le harían para quedarse exclusivamente con las anotaciones de "miRNA"?
# y solamente aquellas anotaciones de la cadena "-"?

# Con mcols si ya vi que miRNA es el segundo de la lista,
# seleccionando el miRNA  con algún número o rang para que sólo me de eso
# y la cadena - tal vez  con strand pero no sé cómo hacerle para que sólo me de eso


