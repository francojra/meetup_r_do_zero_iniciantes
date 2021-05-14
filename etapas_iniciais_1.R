# R-Ladies Natal - Meetup
# R do zero
# Ministrante: Jeanne Franco
# Data: 21/05/21

# Otimizar layout do R ------------------------------------------------------------------------

# Tools > Global Options > Appearance

# Eatapas Iniciais R Studio----------------------------------------------------------------------------

# 1. Observe a janela do Console;
# 2. Versão do R;
# 3. Conceito do R.
# 4. Use alguns dos exemplos fornecidos;
# 5. Prompt;
# 6. Use: citation( ); demo( ); help( ); q( );
# 7. Observe alguns possíveis erros simples. 

# Pedindo ajuda -------------------------------------------------------------------------------

# Help: função encontrada no painel à direita
help("anova") # Ajuda sobre a ANOVA
?anova # Outra forma de pedir ajuda sobre a análise
?read.table # Solicitar ajuda sobre a função read.table
??anova
# Permite visualizar a descrição de variáveis de conjuntos de dados do R
?iris
View(iris) # Função View permite visualizar o conjunto de dados organizados em tabela

# Outras funções ------------------------------------------------------------------------------

find("plot") # Encontra os pacotes de cada função
find("anova")
example("plot") # Apresenta diferentes tipos de gráficos
example("lm") # Retorna um exemplo com a função lm
demo(Hershey) # Apresenta diversos símbolos que podem ser usados em fórmulas matemáticas
demo() # Apresenta funções, exemplos de gráficos, fórmulas, etc.

# Diretório e script --------------------------------------------------------------------------

# 1. Estabeleça um diretório;
# 2. Listar funções e objetos;
# 3. Linha de comando vs Script

# Você deve sempre abrir um novo script ao screver muitas linhas de comando 
# ou para organizar suas análises de trabalhos de disciplinas ou TCC. 
# Isso evita que você perca os códigos e continue de onde parou ao salvar 
# seu script em um diretório ou pasta.

# 4. Novo script;

# Clique em "File" > "Novo Script"
# Coloque informaçõs sobre as análises do seu trabalho, seu nome e data
# Para salvar novo script: "Ctrl+S" ou "File" > "Save As"

# 5. Salvar script;
# 6. Abrir script salvo.

