# R-Ladies Natal - Meetup
# R do zero
# Ministrante: Jeanne Franco
# Data: 21/05/21

# Tabelas -------------------------------------------------------------------------------------

datasets:: # Conjunto de dados do R 
data("iris") # Conjunto de dados iris
list(iris$Species) # Lista dos nomes das espécies
table(iris$Sepal.Length) # Valores do comprimento de sépalas

# install.packages("tibble")
library(tibble) # Tabela de dados simplificada e organizada
tibble(iris)

# Verificando sua tabela com funções vetoriais -------------------------------------------------------------------------

names(iris) # Nome de todas as variáveis da tabela
str(iris) # Mostra quais variáveis são numéricas e categóricas
is.factor(iris$Species) # Verifica se a variável Specie é um fator
is.numeric(iris$Species) # Verifica se a variável Specie é numérica
levels(iris$Species) # Níveis de espécies
nlevels(iris$Species) # Número de níveis de espécies
summary(iris) # Mostra resultado dos valores máximos e mínimos, médias e medianas
sum(iris$Sepal.Length) # Soma dos valores de comprimento de sépalas


# Estatística descritiva ----------------------------------------------------------------------

# Médias, medianas, desvios padrão, variância, etc.

mean(iris$Sepal.Length) # Valor médio do comprimento de sépalas
median(iris$Sepal.Length) # Valor da mediana
max(iris$Sepal.Length) # Valor máximo
min(iris$Sepal.Width) # Valor mínimo
range(iris$Sepal.Length) # Apresenta ambos valores máximo e mínimo
sd(iris$Petal.Length) # Desvio padrão
var(iris$Petal.Length) # Variância
length(iris$Sepal.Length) # Número de amostras
quantile(iris$Sepal.Length) # Quantis em intervalos regulares
with(iris, mean(Sepal.Length)) 
# Função que presenta mesma funcionalidade do indexador "$"
se <- with(iris, mean(Sepal.Length) / length(Sepal.Length)) # Calcula erro padrão
se

# OBS.: Prefira usar o indexador "$" ou "with" ao invés da função "attach"


# Importando tabelas do diretório ---------------------------------------------------------------

# Estabeleça o diretório
# Session > Set Working Directory > Choose Directory
# Selecione a pasta onde se encontra os scripts e tabela

dados <- read.csv("cumulative-total-tests.csv", header = TRUE, 
                  sep = ",", dec = ",")
# sep indica o separador de caracteres da tabela 
# dec indica separador decimal numérico
dados
tibble(dados)
view(dados)

