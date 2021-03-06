######################################
#Script 6 de bioestat�stica###########
#Teste T de Student###################
#Prof Marcos Vital UFAL###############
#17-04-2017###########################
######################################

##Lendo o arquivo:

dados<-read.table(file.choose(), header=T) #Abra o arquivo pr�tica1.txt
summary(dados)								  #Aqui conferimos os dados
attach(dados)								  #Aqui fazemos o R reconhecer as colunas 

############################################################################
#Neste script vamos comparar o n�mero de esp�cies (riqueza)
#da mata prim�ria com o da mata secund�ria


#Se eu quiser calcular as duas m�dias:
tapply(Riqueza, Ambiente, mean)  #tapply(var. quant., var. cat., par�metro)

#Se eu quiser fazer um gr�fico de m�dias:
library(sciplot)  #Carrega o pacote necess�rio

lineplot.CI(Ambiente, Riqueza, las=1, type="p", xlab="Ambiente", 
ylab="Riqueza de esp�cies")

#A fun��o lineplot.CI representa a m�dia e o erro padr�o

##O teste T

t.test(Riqueza~Ambiente, var.equal=T)

#No resultado, o nosso valor de p foi menor que 0.05
#Ent�o vamos rejeitar a hip�tese nula
#E a nossa conclus�o � de que a mata prim�ria tem uma riqueza m�dia
#maior do que a secund�ria

