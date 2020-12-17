install.packages("xml2")
install.packages("rvest")
install.packages("dplyr")
install.packages("datos")
library('dplyr')
library('xml2')
library(rvest)
library(readr)
library(datos)

#cargar variable
grandes_chile <- read_csv("grandes_chile.csv")
grandes_colombia<- read_csv("grandes_colombia.csv")
grandes_peru<- read_csv("grandes_peru.csv")

#GRANDES CHILE
grandes_chile <- read_delim("grandes_chile.csv", 
                            ";", escape_double = FALSE, trim_ws = TRUE)
grandes_chile<- mutate(grandes_chile,tamanio= "grande")
#GRANDES COLOMBIA
grandes_colombia <- read_delim("grandes_colombia.csv", 
                            ";", escape_double = FALSE, trim_ws = TRUE)
grandes_colombia<- mutate(grandes_colombia,tamanio= "grande")
#GRANDES PERU
grandes_peru <- read_delim("grandes_peru.csv", 
                               ";", escape_double = FALSE, trim_ws = TRUE)
grandes_peru<- mutate(grandes_peru,tamanio= "grande")


#MEDIANAS CHILE 
medianas_chile <- read_delim("medianas_chile.csv", 
                            ";", escape_double = FALSE, trim_ws = TRUE)
medianas_chile<- mutate(medianas_chile,tamanio= "mediana")
#MEDIANAS COLOMBIA 
medianas_colombia <- read_delim("medianas_colombia.csv", 
                               ";", escape_double = FALSE, trim_ws = TRUE)
medianas_colombia<- mutate(medianas_colombia,tamanio= "mediana")
#MEDIANA PERU 
medianas_peru <- read_delim("medianas_peru.csv", 
                           ";", escape_double = FALSE, trim_ws = TRUE)
medianas_peru<- mutate(medianas_peru,tamanio= "mediana")


#PEQUENA CHILE 
pequena_chile <- read_delim("pequena_chile.csv", 
                             ";", escape_double = FALSE, trim_ws = TRUE)
pequena_chile<- mutate(pequena_chile,tamanio= "pequena")
#PEQUENA COLOMBIA 
pequena_colombia <- read_delim("pequena_colombia.csv", 
                                ";", escape_double = FALSE, trim_ws = TRUE)
pequena_colombia<- mutate(pequena_colombia,tamanio= "pequena")
#PEQUENA PERU 
pequena_peru <- read_delim("pequena_peru.csv", 
                            ";", escape_double = FALSE, trim_ws = TRUE)
pequena_peru<- mutate(pequena_peru,tamanio= "pequena")


#MICRO CHILE 
micro_chile <- read_delim("micro_chile.csv", 
                             ";", escape_double = FALSE, trim_ws = TRUE)
micro_chile<- mutate(micro_chile,tamanio= "micro")
#MICRO COLOMBIA 
micro_colombia <- read_delim("micro_colombia.csv", 
                                ";", escape_double = FALSE, trim_ws = TRUE)
micro_colombia<- mutate(micro_colombia,tamanio= "micro")


############################################ 2 ###########################################################
#CREAR DF INICIAL PARA AGREGAR EL RESTO DE LOS DF 
empresas <- data.frame("fecha" = as.character(c()),
                      "pais" = as.character(c()),
                      "ingresos" = as.numeric(c()),
                      "costos" = as.numeric(c()),
                      "porcentaje_mujeres" = as.character(c()),
                      "exportaciones" = as.numeric(c()),
                      "importaciones" = as.numeric(c()),
                      "endeudamiento" = as.character(c()),
                      "morosidad" = as.character(c()),
                      "reservas" = as.numeric(c()),
                      "spread" = as.character(c()),
                      "tasa_interes" = as.character(c()),
                      "tamanio"=as.character(c()))

names (grandes_chile)
names (grandes_colombia)
names (grandes_peru)

names (medianas_chile)
names(medianas_colombia)
names (medianas_peru)

names (pequena_chile)
names(pequena_colombia)
names (pequena_peru)

names(micro_chile)
names(micro_colombia)

#cambiar nombre de la variable 5
names (grandes_chile)[5] = "porcentaje_mujeres"
names (grandes_peru)[5] = "porcentaje_mujeres"
names (grandes_colombia)[5] = "porcentaje_mujeres"

names (medianas_peru)[5] = "porcentaje_mujeres"
names (medianas_colombia)[5] = "porcentaje_mujeres"
names (medianas_chile)[5] = "porcentaje_mujeres"

names (pequena_peru)[5] = "porcentaje_mujeres"

names (micro_chile)[5] = "porcentaje_mujeres"




#Uniendo por tamaño para evitar errores
df_grandes= rbind(grandes_chile, grandes_colombia, grandes_peru ) 
df_medianas= rbind(medianas_chile, medianas_colombia, medianas_peru )
def_pequenas= rbind(pequena_chile, pequena_colombia, pequena_peru)
df_micro= rbind(micro_colombia, micro_chile)

empresas= rbind(df_grandes, df_medianas, def_pequenas, df_micro )
str(empresas)

########################################## 3 #################################################################
# CUANTAS EMPRESAS TIENE PERU vs CHILE
comparacion_paises<- select(empresas, pais)
chile <- c()
peru<- c()


i<- 1

#GENERAR BUCLE
length(comparacion_paises)
chile2<-list()

for(numero in length(comparacion_paises)){
  if (numero== "chile"){
    print("Chile tiene observaciones")
  }
}



########################################## 4 ##################################################