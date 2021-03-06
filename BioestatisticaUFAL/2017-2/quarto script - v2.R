########################################
#Bioestatistica UFAL, 2017-2           #
#Scrpit 4, gr�ficos e mais gr�ficos    #
#Marcos Vital                          #
########################################

###Lendo dados no R

##Etapa 1 - Determinar a pasta de trabalho:
setwd("D:/Documentos/Bioestatistica 2017-2")

#Conferindo os arquivos da pasta:
dir()

##Etapa 2 - Lendo o arquivo desejado
dados<-read.table("pratica1.txt", header=T)

#Conferindo o objeto criado:
summary(dados)

##############################################

##
#Histogramas!

hist(dados$Riqueza)   #Comando b�sico

#Melhorando o histograma:

hist(dados$Riqueza, col="pink", las=1, main=" ", 
xlab="N�mero de esp�cies", ylab="Frequ�ncia")

################################################

##
#Gr�ficos de dispers�o

#Vers�o b�sica:
plot(dados$Riqueza~dados$�rea)


#Vers�o bonitinha:
plot(dados$Riqueza~dados$�rea, pch=16, las=1,
xlab="�rea do fragmento", ylab="N�mero de esp�cies")


##
#Vers�o diferenciando o tipo de ambiente

levels(dados$Ambiente)    #Conferindo a ordem das categorias
cores<-c("green4", "red4")   #Estabelecendo as cores a serem usadas

plot(dados$Riqueza~dados$�rea, pch=16, las=1, col=cores[dados$Ambiente],
xlab="�rea do fragmento", ylab="N�mero de esp�cies")

legend("topleft", pch=16, col=cores, legend=levels(dados$Ambiente))


#############################################

##
#Boxplot

boxplot(dados$Riqueza~dados$Ambiente, las=1, range=0,
xlab="Tipo de ambiente", ylab="N�mero de esp�cies")

#range=0 faz com que os tracinhos sigam do m�nimo para o m�ximo


##
#Gr�fico de m�dias

#Lendo uma fun��o do github:
source("https://raw.githubusercontent.com/marcosvital/scriptsR/master/BioestatisticaUFAL/plotm%C3%A9dias.R")

plotm�dias(dados$Ambiente, dados$Riqueza,
"Tipo de ambiente", "N�mero de esp�cies")


##S� pela divers�o:
source("https://raw.githubusercontent.com/marcosvital/teach-R-project/master/courses/en/Funniest%20R%20course/TIEplots/TIEplot2.R")
TIEplot2(dados$Ambiente, dados$Riqueza,
"Tipo de ambiente", "N�mero de esp�cies")








