# R-Ladies Natal - Meetup
# R do zero
# Ministrante: Jeanne Franco
# Data: 21/05/21

# Testes Clássicos ----------------------------------------------------------------------------

# Amostras Simples ----------------------------------------------------------------------------

# Qual a média?
# O valor médio é significativamente diferente do esperado?
# Qual o nível de incerteza do valor médio?
# Os valores são normalmente distribuídos?
# Existem outliers?

data("cars")
library(tibble)
tibble(cars)
summary(cars$speed)
hist(cars$speed)
y <- cars$speed
y 

# Gráfico para teste de normalidade -----------------------------------------------------------

# quantile-quantile plot
# Dados normalmente distribuídos = Linha reta
# Amostras pequenas podem indicar pouca credibilidade no teste 
# de normalidade

qqnorm(y)
qqline(y, lty = 2) # Plot da linha

# O resultado apresenta apenas um leve formato de "S"

# Testes de normalidade ------------------------------------------------------------------------

# Shapiro.wilk ---------------------------------------------------------------------------------------------------------

# Hipótese nula = dados normalmente distribuídos

shapiro.test(y) # Resultado: distribuição normal (valor de p>0.05)
# Aceita-se a hipótese alternativa

x <- exp(rnorm(30))
shapiro.test(x) 

# Skew e Kurtosis -----------------------------------------------------------------------------

# Skew = assimetria
# Skew mede até que ponto uma distribuição apresenta caudas longas, 
# de um lado ou de outro da distribuição. 
# Uma distribuição normal apresenta skew = 0, pois ela é simétrica.
# Quando a cauda se distribui à direita da média: skew positiva; 
# Quando a cauda está esticada à esquerda da média: skew é negativa.

x1 <- seq(0, 4, 0.01)

plot(x1, dgamma(x1, 2, 2), type = "l", ylab = "f(x)", xlab = "x", col = "red")
text(2.7, 0.5, "positive skew")

plot(4-x1, dgamma(x1, 2, 2), type = "l", ylab = "f(x)", xlab = "x", col = "red")
text(1.3, 0.5, "negative skew")

# Função para calcular a assimetria com os dados de x

hist(x)
skew <- function(x){
  m3 <- sum((x-mean(x)) ^ 3) / length(x) # Terceiro momento da média
  s3 <- sqrt(var(x)) ^ 3
  m3/s3
}

skew(x) # Skew positiva

skew(x) / sqrt(6 / length(x)) # Para saber se é diferente de zero
# Fazemos um test t dividindo o valor observado de skew pelo erro padrao

1-pt(2.685, 28) # Probabilidade de obter um valor de 2.685 ao acaso 
# quando o valor de skew for zero.
# 28 graus de liberdade
# Os dados apresentam significante não normalidade p=0.006

# Kurtosis = relação com o pico de uma distribuição em relação ao plano do eixo x. 
# Uma distribuição cúrtica é diferente da distribuição normal em forma de sino. 
# Distribuição mais plana é chamada platicúrtica e uma distribuição mais aguda 
# chamada leptocúrtica.

plot(-200:200, 
     dcauchy(-200:200, 0, 10), type = "l", ylab = "f(x)", xlab = "", yaxt = "n",
     xaxt = "n", main = "leptokurtosis", col = "red")

xv <- seq(-2, 2, 0.01)
plot(xv, 
     exp(-abs(xv) ^ 6), type = "l", ylab = "f(x)", xlab = "", yaxt = "n",
     xaxt = "n", main = "platykurtosis", col = "red")

# Função para calcular a curtose com os dados de x

kurtosis <- function(x) {
  m4 <- sum((x-mean(x)) ^ 4) / length(x)
  s4 <- var(x) ^ 2
  m4/s4 - 3 }

kurtosis(x)

# Teste Kolmogorov-Smirnov --------------------------------------------------------------------

# Analisa o formato de uma distribuição de dados retirados de uma população
# a qual queremos saber a média
# Determina se uma distribuição subjacente difere de uma distribuição teórica
# O teste detecta diferença nas amostras em relação a escla, skewness
# Para amostras simples testa a distância entre dados observados e 
# uma distribuição ideal.
# Checa a normalidade de uma distribuição

# Teste para amostra simples

runif(30)
prob.germ <- c(0.676434301, 0.448928425, 0.853052609, 
               0.473205741, 0.164652520, 0.278773492,
               0.335581518, 0.166231713, 0.118047846, 
               0.535419890, 0.398960461, 0.820369403,
               0.596322970, 0.469289374, 0.745087779, 
               0.273681890,
               0.194832060, 0.734254131, 0.091754496, 
               0.003610658, 0.395827094, 0.181725072,
               0.399015331, 0.484991677, 0.810088073, 
               0.984973677, 0.469517935,
               0.100947151, 0.043670013, 0.150498043)

ks.test(prob.germ, "pnorm")
hist(prob.germ)

# Resultado: p < 0.05; rejeita-se a hipótese nula, distribuição diferente da 
# normal

# Teste com duas amostras ---------------------------------------------------------------------

# Comparando variâncias: Fisher's F test, var.test
# Comparando médias: Student's t test, t.test
# Comparando médias com erros nao normais: Wilcoxon's rank test, wilcox.test
# Comparando duas proporções: binomial test, prop.test

# Pressupostos

# Variância

x <- rnorm(240)
y <- rnorm(300)
var(x)
var(y)
var.test(x, y) # Amostras não apresentam diferenças na variância


# Teste t de Student (grupos independentes) ----------------------------------------------------------------------------

# Amostras independentes, variâncias constantes, erros normalmente distribuídos
# Teste paramétrico

controle  <- c(24, 35, 32, 23, 25, 22, 27, 25, 21, 42, 20, 24)
experimento <- c(50, 64, 57, 52, 58, 51, 50, 56, 55, 54, 49, 48)

shapiro.test(controle)
shapiro.test(experimento)
var.test(controle, experimento) # Amostras não apresentam diferenças na variância
t.test(controle, experimento) # Médias das amostras são diferentes
# Cálculo da média, sd, variância e boxplot

# Amostras pareadas - Teste t pareado ---------------------------------------------------------

# Observações pareadas
# Correlações entre duas medidas
# São medidas de um mesmo indivíduo ou tomadas de um mesmo local

temp.veg  <- c(22, 26, 27, 25, 28, 30, 25, 21, 23, 27, 25, 22) 
# Solo com vegetação
temp.solo.exp <- c(35, 31, 37, 38, 40, 32, 31, 33, 37, 32, 30, 33) 
# Solo exposto

t.test(temp.veg, temp.solo.exp, paired = TRUE) 
# Médias das amostras apresentam diferenças

# Testes feitos ANTES e DEPOIS de aplicar algum tratamento apresentam
# amostras pareadas, pois utilizam o mesmo grupo no experimento.

# Teste Wilcoxon -------------------------------------------------------------------------------------------------------

## Teste não paramétrico alternativo ao teste t 

x <- runif(300)
y <- runif(300)

# Antes devemos testar normalidade para saber se os dados são
# ou não paramétricos

shapiro.test(x) # Dados diferentes da dist. normal
var.test(x, y) # Variâncias não são diferentes
qqnorm(x)
qqline(x)
qqnorm(y)
qqline(y)

# Caso os dados não sejam paramétricos usar o teste:

wilcox.test(x, y) # Médias não apresentam diferenças caso p>0.05
mean(x)
mean(y)

# Correlação e covariância --------------------------------------------------------------------

# Duas variáveis contínuas são relacionadas?
# Covariância e correlação: ambas medem a relação linear entre duas variaveis
# Covariância: valores não sao padronizados e variam de menos a mais infinito
# Correlação: coeficientes padronizados e variam de 1 a -1

data("cars")
var(cars$dist)
var(cars$speed)

var(cars$dist, cars$speed) 
# Covariância

var(cars$dist, cars$speed) / sqrt(var(cars$dist) * var(cars$speed)) 
# Coeficiente de correlação pode ser calculado a partir da covariância

cor(cars$dist, cars$speed) # Correlação que gera mesmo resultado
# O defaul do R usa p método de Pearson

cor.test(cars$dist, cars$speed) # Fornece informações mais detalhadas da análise
# Valor de t, graus de liberdade, valor de p e intervalos de confiança

plot(cars$dist, cars$speed) # Gráfico

# Correlação de Pearson: teste paramétrico -----------------------------------------------------------------------------
# Pressupostos: Normalidade, homocedasticidade, relação linear e sem outliers

datasets::iris
tibble(iris)
plot(iris$Sepal.Length ~ iris$Petal.Length)
abline(lm(iris$Sepal.Length ~ iris$Petal.Length))

shapiro.test(iris$Sepal.Length) 
hist(iris$Sepal.Length)
boxplot(iris$Sepal.Length) # verifica outliers
shapiro.test(iris$Petal.Length) 
hist(iris$Petal.Length)
boxplot(iris$Petal.Length)

# Homocedasticidade
mod_reg <- lm(iris$Sepal.Length ~ iris$Petal.Length)
plot(mod_reg) # quanto mais reta a linha vermelha e mais dispersos os pontos
# melhor o modelo - Mais homocedastico

cor.test(iris$Sepal.Length, iris$Petal.Length, method = "pearson")

# Exemplo correlação spearman - Teste não paramétrico ------------------------------------------------------------------

cor.test(iris$Sepal.Length, iris$Petal.Length, method = "spearman")

# Correlação de Kendall: teste não paramétrico -------------------------------------------------------------------------

# O coeficiente de correlação Tau de Kendall serve para verificar se existe 
# correlação entre duas variáveis ordinais. É um método adequado quando 
# amostras têm tamanhos reduzidos, pois o método é mais preciso.

# Variáveis devem ter o mesmo comprimento
# Gerando valores aleatórios

datasets::trees
tibble(trees)

shapiro.test(trees$Girth) # p>0.05 = paramétrico
shapiro.test(trees$Volume) # p<0.05 = não paramétrico

cor.test(trees$Girth, trees$Volume, method = "kendall") 
cor.test(trees$Girth, trees$Volume, method = "pearson") 
plot(trees$Girth, trees$Volume, col = "darkblue")


