#########################################################
#Meu primeiro script do R################################
#Marcos Vital############################################
#30-05-2017##############################################
#Disciplina de Delineamento do PPG-DIBICT, turma 2017####
#########################################################

#Para come�ar, podemos usar o R como uma calculadora
#Por exemplo, podemos fazer opera��es aritm�ticas

10+12   #Adi��o
12-25   #Subtra��o
12*3    #Multiplica��o
3/4     #Divis�o

#Note que o seperador decimal do R � o ponto '.'
#Veja como funciona:
1.5*2

#J� aqui, vai dar erro:
1,5*2

#Se eu quero usar pot�ncia, o s�mbolo � '^':
3^2

###########################################################

#Criando um objeto no R
#Tudo se resume a usar '<-'

dez<-10  #Criamos um objeto chamado dez, com o n�mero 10 dentro dele
dez      #Aqui "chamamos" o objeto no R
dez*2    #Aqui pedimos pro R multiplicar o conte�do do objeto por 2  
dez      #Mas note que o objeto n�o foi alterado

#Uma fun��o simples:
sqrt(dez)   #Calcula a raiz quadrada de um n�mero

#Uma fun��o que usa mais de um argumento:
log(100, 10)  #Calcula o log de (x, base)

#Chamando o sistema de ajuda:
help(log)   #Chama a ajuda da fun��o desejada
?log        #Faz a mesma coisa, vers�o mais r�pida para os pregui�osos

#E se eu n�o sei o nome da fun��o???
help.search("square root")



