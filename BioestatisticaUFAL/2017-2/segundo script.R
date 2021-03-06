#############################
#M�dias, medianas e CIA     #
#Prof Marcos Vital          #
#Bioestat�stica UFAL        #
#2017-I, 14-08-2017         #
#############################

data(iris)   #Carrega o conjunto de dados chamado iris
			   #Agora, iris � um objeto na mem�ria do R!

#Se eu quiser ver os objetos na mem�ria, posso pedir assim:
ls()

summary(iris)  #Mostra um resumo do que existe no objeto iris
				 #Perceba que ele diferencia vari�veis quantitativas de categ�ricas


#############################

#Vendo partes de um objeto

iris   #Mostra todo o objeto no console (mas n�o � muito pr�tico...)

iris[17, 3]    #Mostra o valor da linha 17, coluna 3
iris[5:10, 3]  #Mostra os valores das linhas 5 a 10, coluna 3
iris[15, 2:4]  #Mostra os valores da linha 15, colunas 2 a 4
iris[1:3, ]    #Mostra os valores das linhas 1 a 3, todas as colunas
iris[ , 2]     #Mostra os valores de todas as linhas, coluna 2
               #A regra geral �: objeto[linhas, colunas]

iris$Sepal.Width  #Aqui pedimos os valores de largura da s�pala
                  #O que d� na mesma que fazer assim:
iris[ , 2]        #Aqui � a mesma coisa, mas chamamos pela numera��o, e n�o pelo nome


######################################

#Vamos aprender alguns c�lculos estat�sticos simples:

mean(iris$Sepal.Width)   #Calcula a m�dia (de largura da s�pala)
var(iris$Sepal.Width)    #Calcula a vari�ncia
sd(iris$Sepal.Width)     #Calcula o desvio padr�o

median(iris$Sepal.Width)   #Calcula a mediana
quantile(iris$Sepal.Width) #Calcula alguns percentis
								#Tamb�m � poss�vel usar a fun��o quantile para calcular outros percentis

##
#Calculando para cada esp�cie:

tapply(iris$Sepal.Width, iris$Species, mean)

#tapply funciona assim:tapply(vari�vel quantitativa, vari�vel categ�rica, o que calcular)

#Se eu quiser, posso fazer o mesmo para o desvio padr�o:
tapply(iris$Sepal.Width, iris$Species, sd)

#Comparando medianas e quartis:
tapply(iris$Sepal.Width, iris$Species, quantile)

##
#Boxplot: nosso primeiro gr�fico no R!

boxplot(iris$Sepal.Width~iris$Species, range=0)
	#boxplot � a fun��o que cria o gr�fico
	#usamos o formato y~x, que significa "y responde a x"
	#range=0 faz com que as barrinhas externas cheguem aos valores m�nimos e m�ximos







