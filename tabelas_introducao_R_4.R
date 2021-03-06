# R-Ladies Natal - Meetup
# R do zero
# Ministrante: Jeanne Franco
# Data: 21/05/21

# Tabelas -------------------------------------------------------------------------------------

datasets:: # Conjunto de dados do R 
data("iris") # Conjunto de dados iris
list(iris$Species) # Lista dos nomes das esp�cies
table(iris$Sepal.Length) # Valores do comprimento de s�palas

# install.packages("tibble")
library(tibble) # Tabela de dados simplificada e organizada
tibble(iris)

# Verificando sua tabela com fun��es vetoriais -------------------------------------------------------------------------

names(iris) # Nome de todas as vari�veis da tabela
str(iris) # Mostra quais vari�veis s�o num�ricas e categ�ricas
is.factor(iris$Species) # Verifica se a vari�vel Specie � um fator
is.numeric(iris$Species) # Verifica se a vari�vel Specie � num�rica
levels(iris$Species) # N�veis de esp�cies
nlevels(iris$Species) # N�mero de n�veis de esp�cies
summary(iris) # Mostra resultado dos valores m�ximos e m�nimos, m�dias e medianas
sum(iris$Sepal.Length) # Soma dos valores de comprimento de s�palas


# Estat�stica descritiva ----------------------------------------------------------------------

# M�dias, medianas, desvios padr�o, vari�ncia, etc.

mean(iris$Sepal.Length) # Valor m�dio do comprimento de s�palas
median(iris$Sepal.Length) # Valor da mediana
max(iris$Sepal.Length) # Valor m�ximo
min(iris$Sepal.Width) # Valor m�nimo
range(iris$Sepal.Length) # Apresenta ambos valores m�ximo e m�nimo
sd(iris$Petal.Length) # Desvio padr�o
var(iris$Petal.Length) # Vari�ncia
length(iris$Sepal.Length) # N�mero de amostras
quantile(iris$Sepal.Length) # Quantis em intervalos regulares
with(iris, mean(Sepal.Length)) 
# Fun��o que presenta mesma funcionalidade do indexador "$"
se <- with(iris, mean(Sepal.Length) / length(Sepal.Length)) # Calcula erro padr�o
se

# OBS.: Prefira usar o indexador "$" ou "with" ao inv�s da fun��o "attach"


# Importando tabelas do diret�rio ---------------------------------------------------------------

# Estabele�a o diret�rio
# Session > Set Working Directory > Choose Directory
# Selecione a pasta onde se encontra os scripts e tabela

dados <- read.csv("cumulative-total-tests.csv", header = TRUE, 
                  sep = ",", dec = ",")
# sep indica o separador de caracteres da tabela 
# dec indica separador decimal num�rico
dados
tibble(dados)
view(dados)

