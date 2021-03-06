# R-Ladies Natal - Meetup
# R do zero
# Ministrante: Jeanne Franco
# Data: 21/05/21

# Opera��es matem�ticas -----------------------------------------------------------------------

# Operadores: 
# + (soma)
# - (subtra��o)
# / (divis�o)
# * (multiplica��o)

8/4
log(42/7.3) # Fun��o logaritmica
5+6+3+6+4+2+4 # Soma
5+6+3+5+9+ # Observe o prompt que retorna um "+" indicando fun��o incompleta

# Pressione "Esc" ap�s clicar no console para voltar o prompt >

5 * 8 # Multiplica��o
4 - 9 # Subtra��o
2 + 3; 5 * 7; 3 - 7 # Podemos escrever as opera��es na mesma linha usando ";"
1.2e3 # Move tr�s casas decimais � direita
1.2e-2 # Move duas casas decimais � esquerda
7 ^ 3 # 7 elevado ao cubo
3 ^ 2 # 3 elevado ao quadrado
3 ^ 2 / 2 # Elevado a dois e dividido por 2
(2 + 6 + 6 + 2) / 5 # Resolve primeiro o c�lculo em par�nteses
16 / 5

# Operadores ----------------------------------------------------------------------------------

# >= maior igual 
# <  Menor que
# <=  Menor igual 
# ==  Igual (n�o devemos confundir com = que � atribu�do a um objeto)
# !=  N�o iguais
# * Inserido em um modelo n�o indica multiplica��o
# Indica mais quando se refere a vari�veis 
# : Inserido em um modelo n�o indica sequ�ncia
# Indica intera��o entre vari�veis
# <- Indica atribui��o (nomea��o de objetos)
# $ Indexa��o de listas. Serve para selecionar vari�veis de um conjunto de dados

# Fun��o de igualdade all.equal

a <- 0.6 - 0.2 # Atribui��o de vari�vel a
b <- 0.4 # Atribui��o de vari�vel b
a == b # a e b s�o iguais? retorna False
all.equal(a, b) # a e b s�o iguais? Fun��o mais adequada
a <- 5
b <- 5
a == b

# Ranqueamento dos dados das vari�veis

data("iris") # Conjuto de dados dispon�vel no R
sort(iris$Sepal.Width) # Coloca os valores do menor para o maior
# decreasing = T

rank(c(20, 40, 50, 30, 10, 60, 80, 70, 90)) # Indica o ranking de cada valor
# Do menor para maior valor o 10 - 1�, 20 - 2�, 30 - 3� e assim por diante
order(c(20, 40, 50, 30, 10, 60, 80, 70, 90)) # Indica a ordem do menor pra o
# menor de acordo com a sequ�ncia no conjunto de dados

# Gerando repeti��es

rep(5, 10) # Repete o n�mero 5 dez vezes
rep(6, 7) # Repete o n�mero 6 sete vezes
rep(1:8, 2) # De 1 a 8 repetindo a sequ�ncia duas vezes
rep(1:8, each = 2, times = 4) # Sequ�ncia de 1 a 8 de dois valores 
# repetidos 4 vezes

# Gerando sequ�ncias

0:10 # Sequ�ncia de 0 a 10
seq(0, 20, 2) # Sequ�ncia de 0 a 20, de dois em dois n�meros
seq(from = 0.04, by = 0.01, length = 11) # Partindo de 0.04 com 11 valores


# NAs, valores infinitos e n�o-num�ricos -------------------------------------------------------------------------------

# O R indica quando um valor � infinito atrav�s do "Inf" ou "-Inf" 
# (infinito e negativo)

3 / 0 
-12 / 0
1 / 0

# O R tamb�m indica valores que n�o s�o n�mericos (NaN). Exemplos:

0 / 0
Inf - Inf
Inf / Inf

# Para checar se um conjunto de dados apresentam valores n�o num�ricos, 
# infinitos ou NAs, use:
# is.infinit()
# is.finit()
# is.na()
# is.nan()
# na.omit() Usado para omitir NAs de tabelas
# rm.na  par�metro l�gico que lida com dados faltantes


# Observa��o sobre NA --------------------------------------------------------------------------------------------------


# Uma vez que o valor de NA � um valor de lugar e n�o um valor num�rico real, 
# n�o pode ser inclu�do nos c�lculos. Portanto, de alguma forma, precisa de ser 
# retirado dos c�lculos para obter um valor significativo. Se se incluir o valor 
# de NA num c�lculo, resultar� num valor de NA. Embora isto possa estar bem, 
# por vezes, � necess�rio um n�mero. Os dois valores de NA removidos em r s�o 
# pela fun��o na.omit() que apaga a linha inteira, e o per�metro l�gico na.rm que 
# diz � fun��o para saltar esse valor.

#---------------------------------------------------------------------------------------------------------------------


# Algumas tabelas podem apresentar NAs o qual indica valores perdidos e 
# que podem afetar as suas an�lises. 

# Exemplo:

w <- c(4, 6, 8, 9, 3, NA, 6, 4, 9, 2)
is.na(w) # Indica atrav�s de true a linha com o valor perdido
w == "NA" # Outro m�todo para encontrar NAs
# na.omit() # Usado para omitir NAs de tabelas
w.na <- na.omit(w) # Deve-se primeiro criar um objeto!
w.na
w.na * 2 # multiplica cada valor do conjunto de dados por 2

# N�mero, caracter, strings (cadeias) de caracteres, vetores e listas ---------------------------------------------

3.1412 # Numeric
c(2.5, 3, 6.8, 2) # vector of numbers
"Alice" # Character
c("Alice", "Maria", "Ana", "Jo�o") # Vector of character
list("Alice", "Maria", "Ana", "Jo�o") # Lista
data.frame(x = 1:3, y = c("Maria", "Ana", "Jo�o")) # Data frame - tabela
tabela <- data.frame(x = c(15, 43, 60), y = c("A", "B", "C"))
tabela

# Objetos - Atribui��es de vari�veis ----------------------------------------------------------

# Evite usar x ou y como nomes de vari�veis
# Evite usar n�meros ou s�mbolos
# Evite usar ponto e underline antes de um n�mero
# Evite espa�os em brancos ao nomear as vari�veis
# Evite nomes muito longos
# O nome � dado atrav�s do s�mbolo <- (menor e sinal de menos) 
# seguido do conjunto de dados

y <- 5 + 3 # Para maior legibilidade dos c�digos, separe os operadores
y # Resultado de 5 + 3 - 
# � importante ler os valores do objeto antes de cham�-lo em alguma fun��o 
x <- c(1, 2, 7, 4, 9) # Observe a fun��o concatenar "c" usado para 
# um conjunto de valores
# Concatenar = juntar em uma cadeia ou sequ�ncia l�gica
x # Aqui x n�o representa um c�culo, e sim um conjunto de valores
alt.arv <- c(1, 2, 7, 4, 9) # Ao dar o nome abreviado voc� saber� que o 
# conjunto se refere a altura de �rvores, isso facilita a identifica��o 
# das suas vari�veis
alt.arv

# Fun��es e argumentos ------------------------------------------------------------------------

# Fun��o tapply e aggregate

comp.sepala <- (iris$Sepal.Length) # Extrai a vari�vel comprimento de s�pala
comp.petal <- (iris$Petal.Length) # Extrai a vari�vel comprimento de p�tala
data.frame(x = comp.sepala, y = comp.petal) # Forma uma nova tabela
sp <- (iris$Species) # Extrai a vari�vel esp�cie

tapply(comp.petal, sp, mean) # M�dia do comprimento de p�tala por esp�cie
tapply(comp.petal, sp, var) # Vari�ncia do comprimento de p�tala por esp�cie
tapply(comp.petal, sp, sd) # desvio padr�o do comprimento de p�tala por esp�cie

aggregate(cbind(comp.sepala, comp.petal) ~ sp, iris, mean) 
# Resultados da m�dia de comprimento de s�palas + p�talas por esp�cie; 
# resultados de duas vari�veis

# Localiza��o de vetores

y <- c(8, 3, 5, 7, 6, 6, 8, 9, 2, 3, 9, 4, 10, 4, 11) # Conjunto de valores de y
which(y > 5) # Localiza a posi��o (n�o os valores) dos valores maiores que 5
which(y < 5)

# Transformando conjunto de vari�veis

numerico <- as.numeric(factor(c("a", "b", "c", "d"))) 
# Transformando valores categ�ricos em num�ricos
is.numeric(numerico)
numerico
fator <- as.factor(c("1", "6", "4", "7")) 
# Transformando valores num�ricos em categ�ricos
is.factor(fator)

# Matrizes - Fun��o matrix

X <- matrix(c(1, 0, 0, 0, 1, 0, 0, 0, 1), nrow = 3) 
# Conjunto de valores em 3 linhas
vector <- c(1, 2, 3, 4, 4, 3, 2, 1) # Defini��o de valores
V <- matrix(vector, byrow = F, nrow = 2) # Conjunto de valores em duas linhas
# byrow � um argumento da fun��o que define a ordem dos valores
is.matrix(V) # Confirmar se o conjunto � uma matriz; retorna TRUE
rowSums(X) # Soma das linhas da matriz de X
colSums(X) # Soma das colunas da matriz de X
rowSums(V) # Soma das linhas da matriz de V
colSums(V) # Soma das colunas da matriz de V
# V[Linha, Coluna] # Colchetes s�o usados para selecionar valores
V[1:2, 1:4] # Seleciona todos os valores
V[2, -1] # Seleciona valores na segunda linha e retira valor da primeira coluna

# Matriz com valores NA

X <- matrix(c(1, 3, 5, NA, 1, 7, 3, 9, 1), nrow = 3)
X
colSums(X, na.rm = T) # na = true
colSums(X, na.rm = F) # na = false

# N�meros rand�micos 

runif(3) # Gera tr�s n�mero rand�micos entre 0 e 1
runif(5) # Gera cinco n�mero rand�micos entre 0 e 1
set.seed(375) # Ao correr o c�digo novamente, permite obter o mesmo conjunto de 
# n�meros rand�micos da �ltima vez
runif(4)
current <-.Random.seed
current
runif(4)
runif(1:9) # Gera nove n�meros rand�micos

# Amostragem: fun��o sample

# A fun��o sample faz um embaralhamento dos conte�dos de um vetor em 
# uma sequ�ncia rand�mica.
# N�meros rand�micos podem ser usados em planejamentos de desenho 
# amostral (aloca��o de tratamentos para indiv�duos).

d <- c(3, 6, 4, 8, 3, 8, 4, 9, 4, 2, 8, 4, 8, 3)
sample(d)
sample(d, 5) # Faz um sorteio de 5 valores do conjunto
sample(d, replace = T) 
# Replace � um argumento da fun��o sample e T � igual a True, indicando
# que deve haver repeti��o dos valores no sorteio
z <- c(4, 5, 7, 3)
sample(z, 3, replace = T)
sample(z, 3, replace = F) # Seleciona 3 n�meros. 
# Replace = False indica n�o repeti��odos valores

# Fun��es unique e duplicate

names <- c("Williams", "Jones", "Smith", "Williams", "Jones", "Williams") 
# Objeto com lista de nomes
table(names) # A tabela mostra o n�mero de repeti��es de cada nome
unique(names) # Mostra apenas os nomes listados, sem repeti��o
marcas <- c("Apple", "Samsung", "Lenovo", "Dell", "Samsung")
duplicated(marcas) # Indica o local onde ocorre duplica��o atrav�s de true

# Outras fun��es matem�ticas -------------------------------------------------------------------------

floor(5.7) # Fun��o: mais pr�ximo n�mero inteiro abaixo
ceiling(5.7) # Fun��o: mais pr�ximo n�mero inteiro acima
log10(6) # log na base 10. Observe as op��es de log fornecidas pelo R
pi # Valor de pi
sin(pi / 3) # Seno
cos(pi / 3) # Conseno
runif(100) # Gera 100 n�meros rand�micos entre 0 e 1
dist.norm <- rnorm(50) # Gera 100 n�meros rand�micos com distrubui��o normal
dist.norm 
hist(dist.norm)
