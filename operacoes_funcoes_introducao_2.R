# R-Ladies Natal - Meetup
# R do zero
# Ministrante: Jeanne Franco
# Data: 21/05/21

# Operações matemáticas -----------------------------------------------------------------------

# Operadores: 
# + (soma)
# - (subtração)
# / (divisão)
# * (multiplicação)

8/4
log(42/7.3) # Função logaritmica
5+6+3+6+4+2+4 # Soma
5+6+3+5+9+ # Observe o prompt que retorna um "+" indicando função incompleta

# Pressione "Esc" após clicar no console para voltar o prompt >

5 * 8 # Multiplicação
4 - 9 # Subtração
2 + 3; 5 * 7; 3 - 7 # Podemos escrever as operações na mesma linha usando ";"
1.2e3 # Move três casas decimais à direita
1.2e-2 # Move duas casas decimais à esquerda
7 ^ 3 # 7 elevado ao cubo
3 ^ 2 # 3 elevado ao quadrado
3 ^ 2 / 2 # Elevado a dois e dividido por 2
(2 + 6 + 6 + 2) / 5 # Resolve primeiro o cálculo em parênteses
16 / 5

# Operadores ----------------------------------------------------------------------------------

# >= maior igual 
# <  Menor que
# <=  Menor igual 
# ==  Igual (não devemos confundir com = que é atribuído a um objeto)
# !=  Não iguais
# * Inserido em um modelo não indica multiplicação
# Indica mais quando se refere a variáveis 
# : Inserido em um modelo não indica sequência
# Indica interação entre variáveis
# <- Indica atribuição (nomeação de objetos)
# $ Indexação de listas. Serve para selecionar variáveis de um conjunto de dados

# Função de igualdade all.equal

a <- 0.6 - 0.2 # Atribuição de variável a
b <- 0.4 # Atribuição de variável b
a == b # a e b são iguais? retorna False
all.equal(a, b) # a e b são iguais? Função mais adequada
a <- 5
b <- 5
a == b

# Ranqueamento dos dados das variáveis

data("iris") # Conjuto de dados disponível no R
sort(iris$Sepal.Width) # Coloca os valores do menor para o maior
# decreasing = T

rank(c(20, 40, 50, 30, 10, 60, 80, 70, 90)) # Indica o ranking de cada valor
# Do menor para maior valor o 10 - 1°, 20 - 2°, 30 - 3° e assim por diante
order(c(20, 40, 50, 30, 10, 60, 80, 70, 90)) # Indica a ordem do menor pra o
# menor de acordo com a sequência no conjunto de dados

# Gerando repetições

rep(5, 10) # Repete o número 5 dez vezes
rep(6, 7) # Repete o número 6 sete vezes
rep(1:8, 2) # De 1 a 8 repetindo a sequência duas vezes
rep(1:8, each = 2, times = 4) # Sequência de 1 a 8 de dois valores 
# repetidos 4 vezes

# Gerando sequências

0:10 # Sequência de 0 a 10
seq(0, 20, 2) # Sequência de 0 a 20, de dois em dois números
seq(from = 0.04, by = 0.01, length = 11) # Partindo de 0.04 com 11 valores


# NAs, valores infinitos e não-numéricos -------------------------------------------------------------------------------

# O R indica quando um valor é infinito através do "Inf" ou "-Inf" 
# (infinito e negativo)

3 / 0 
-12 / 0
1 / 0

# O R também indica valores que não são númericos (NaN). Exemplos:

0 / 0
Inf - Inf
Inf / Inf

# Para checar se um conjunto de dados apresentam valores não numéricos, 
# infinitos ou NAs, use:
# is.infinit()
# is.finit()
# is.na()
# is.nan()
# na.omit() Usado para omitir NAs de tabelas
# rm.na  parâmetro lógico que lida com dados faltantes


# Observação sobre NA --------------------------------------------------------------------------------------------------


# Uma vez que o valor de NA é um valor de lugar e não um valor numérico real, 
# não pode ser incluído nos cálculos. Portanto, de alguma forma, precisa de ser 
# retirado dos cálculos para obter um valor significativo. Se se incluir o valor 
# de NA num cálculo, resultará num valor de NA. Embora isto possa estar bem, 
# por vezes, é necessário um número. Os dois valores de NA removidos em r são 
# pela função na.omit() que apaga a linha inteira, e o perímetro lógico na.rm que 
# diz à função para saltar esse valor.

#---------------------------------------------------------------------------------------------------------------------


# Algumas tabelas podem apresentar NAs o qual indica valores perdidos e 
# que podem afetar as suas análises. 

# Exemplo:

w <- c(4, 6, 8, 9, 3, NA, 6, 4, 9, 2)
is.na(w) # Indica através de true a linha com o valor perdido
w == "NA" # Outro método para encontrar NAs
# na.omit() # Usado para omitir NAs de tabelas
w.na <- na.omit(w) # Deve-se primeiro criar um objeto!
w.na
w.na * 2 # multiplica cada valor do conjunto de dados por 2

# Número, caracter, strings (cadeias) de caracteres, vetores e listas ---------------------------------------------

3.1412 # Numeric
c(2.5, 3, 6.8, 2) # vector of numbers
"Alice" # Character
c("Alice", "Maria", "Ana", "João") # Vector of character
list("Alice", "Maria", "Ana", "João") # Lista
data.frame(x = 1:3, y = c("Maria", "Ana", "João")) # Data frame - tabela
tabela <- data.frame(x = c(15, 43, 60), y = c("A", "B", "C"))
tabela

# Objetos - Atribuições de variáveis ----------------------------------------------------------

# Evite usar x ou y como nomes de variáveis
# Evite usar números ou símbolos
# Evite usar ponto e underline antes de um número
# Evite espaços em brancos ao nomear as variáveis
# Evite nomes muito longos
# O nome é dado através do símbolo <- (menor e sinal de menos) 
# seguido do conjunto de dados

y <- 5 + 3 # Para maior legibilidade dos códigos, separe os operadores
y # Resultado de 5 + 3 - 
# É importante ler os valores do objeto antes de chamá-lo em alguma função 
x <- c(1, 2, 7, 4, 9) # Observe a função concatenar "c" usado para 
# um conjunto de valores
# Concatenar = juntar em uma cadeia ou sequência lógica
x # Aqui x não representa um cáculo, e sim um conjunto de valores
alt.arv <- c(1, 2, 7, 4, 9) # Ao dar o nome abreviado você saberá que o 
# conjunto se refere a altura de árvores, isso facilita a identificação 
# das suas variáveis
alt.arv

# Funções e argumentos ------------------------------------------------------------------------

# Função tapply e aggregate

comp.sepala <- (iris$Sepal.Length) # Extrai a variável comprimento de sépala
comp.petal <- (iris$Petal.Length) # Extrai a variável comprimento de pétala
data.frame(x = comp.sepala, y = comp.petal) # Forma uma nova tabela
sp <- (iris$Species) # Extrai a variável espécie

tapply(comp.petal, sp, mean) # Média do comprimento de pétala por espécie
tapply(comp.petal, sp, var) # Variância do comprimento de pétala por espécie
tapply(comp.petal, sp, sd) # desvio padrão do comprimento de pétala por espécie

aggregate(cbind(comp.sepala, comp.petal) ~ sp, iris, mean) 
# Resultados da média de comprimento de sépalas + pétalas por espécie; 
# resultados de duas variáveis

# Localização de vetores

y <- c(8, 3, 5, 7, 6, 6, 8, 9, 2, 3, 9, 4, 10, 4, 11) # Conjunto de valores de y
which(y > 5) # Localiza a posição (não os valores) dos valores maiores que 5
which(y < 5)

# Transformando conjunto de variáveis

numerico <- as.numeric(factor(c("a", "b", "c", "d"))) 
# Transformando valores categóricos em numéricos
is.numeric(numerico)
numerico
fator <- as.factor(c("1", "6", "4", "7")) 
# Transformando valores numéricos em categóricos
is.factor(fator)

# Matrizes - Função matrix

X <- matrix(c(1, 0, 0, 0, 1, 0, 0, 0, 1), nrow = 3) 
# Conjunto de valores em 3 linhas
vector <- c(1, 2, 3, 4, 4, 3, 2, 1) # Definição de valores
V <- matrix(vector, byrow = F, nrow = 2) # Conjunto de valores em duas linhas
# byrow é um argumento da função que define a ordem dos valores
is.matrix(V) # Confirmar se o conjunto é uma matriz; retorna TRUE
rowSums(X) # Soma das linhas da matriz de X
colSums(X) # Soma das colunas da matriz de X
rowSums(V) # Soma das linhas da matriz de V
colSums(V) # Soma das colunas da matriz de V
# V[Linha, Coluna] # Colchetes são usados para selecionar valores
V[1:2, 1:4] # Seleciona todos os valores
V[2, -1] # Seleciona valores na segunda linha e retira valor da primeira coluna

# Matriz com valores NA

X <- matrix(c(1, 3, 5, NA, 1, 7, 3, 9, 1), nrow = 3)
X
colSums(X, na.rm = T) # na = true
colSums(X, na.rm = F) # na = false

# Números randômicos 

runif(3) # Gera três número randômicos entre 0 e 1
runif(5) # Gera cinco número randômicos entre 0 e 1
set.seed(375) # Ao correr o código novamente, permite obter o mesmo conjunto de 
# números randômicos da última vez
runif(4)
current <-.Random.seed
current
runif(4)
runif(1:9) # Gera nove números randômicos

# Amostragem: função sample

# A função sample faz um embaralhamento dos conteúdos de um vetor em 
# uma sequência randômica.
# Números randômicos podem ser usados em planejamentos de desenho 
# amostral (alocação de tratamentos para indivíduos).

d <- c(3, 6, 4, 8, 3, 8, 4, 9, 4, 2, 8, 4, 8, 3)
sample(d)
sample(d, 5) # Faz um sorteio de 5 valores do conjunto
sample(d, replace = T) 
# Replace é um argumento da função sample e T é igual a True, indicando
# que deve haver repetição dos valores no sorteio
z <- c(4, 5, 7, 3)
sample(z, 3, replace = T)
sample(z, 3, replace = F) # Seleciona 3 números. 
# Replace = False indica não repetiçãodos valores

# Funções unique e duplicate

names <- c("Williams", "Jones", "Smith", "Williams", "Jones", "Williams") 
# Objeto com lista de nomes
table(names) # A tabela mostra o número de repetições de cada nome
unique(names) # Mostra apenas os nomes listados, sem repetição
marcas <- c("Apple", "Samsung", "Lenovo", "Dell", "Samsung")
duplicated(marcas) # Indica o local onde ocorre duplicação através de true

# Outras funções matemáticas -------------------------------------------------------------------------

floor(5.7) # Função: mais próximo número inteiro abaixo
ceiling(5.7) # Função: mais próximo número inteiro acima
log10(6) # log na base 10. Observe as opções de log fornecidas pelo R
pi # Valor de pi
sin(pi / 3) # Seno
cos(pi / 3) # Conseno
runif(100) # Gera 100 números randômicos entre 0 e 1
dist.norm <- rnorm(50) # Gera 100 números randômicos com distrubuição normal
dist.norm 
hist(dist.norm)
