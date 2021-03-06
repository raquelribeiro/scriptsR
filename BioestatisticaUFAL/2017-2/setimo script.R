################################
#Bioestat�stica UFAL           #
#06-11-2017                    #
#Prof Marcos Vital             #
#Script 7, Qui-quadrado        #
################################

###############
###Lendo os dados

dados<-read.table("https://raw.githubusercontent.com/marcosvital/scriptsR/master/BioestatisticaUFAL/Dados/fumo.txt",
header=T)

summary(dados)

#Criando a tabela de conting�ncia:
tabela<-table(dados$Fumo, dados$C�ncer)

#Olhando os valores da tabela:
tabela

#Executando o teste estat�stico:
chisq.test(tabela)

#Criando um gr�fico, vers�o 1:
barplot(tabela, beside=T)

#Gr�fico, vers�o 2:
tabela2<-table(dados$C�ncer, dados$Fumo)
barplot(tabela2, beside=T)


#Gr�fico, vers�o 2 com melhorias!

dados$Fumo<-relevel(dados$Fumo, "N�o")         #Mudando a ordem das categorias, "n�o" primeiro
tabela.nova<-table(dados$C�ncer, dados$Fumo)   #Criando a nova tabela, com dados acima
tabela.nova                                    #Conferindo a nova tabela

cores<-c("blue4", "red4")                      #Cores para categorias

#Gr�fico:
barplot(tabela.nova, beside=T, las=1, xlab="H�bito de fumar",
ylab="N�mero de pacientes", col=cores)

#Legenda:
legend("topright", legend=c("n�o", "sim"), title="C�ncer", col=cores, pch=15)
