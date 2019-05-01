# Curso:       Bacharelado em Ciência da Computação
# Disciplina:  Estatística Básica
# Aluno:       João Victor Lemes de Oliveira

# Relação de comandos auxiliares ------------------------------------------

#  A sintaxe dos comandos poderá ser obtita utilizando 
#  'help <nome_do_comando>'  ou '? <nome_do_comando>'.

#  Gráficos:      plot, barplot, boxplot, stem.
#  Estatísticos:  mean, median, var, sd, diff, range, nclass.Sturges, quantile,
#                 summary, help, 
#


#  Para cada questão: execute o comando, mostre o resultado e, se necessário, 
#  explique os valores obtidos.



# Variável aleatória discreta ---------------------------------------------

#1)   Um dado foi lançado 30 vezes e os resultados obtidos foram anotados e 
#     armazenados na variável 'dado'.

set.seed(7)
faces <- sample(1:6, 30, replace = T)

#a)   Construa a tabela de frequência.
#     (utilize o comando table)
nclass.Sturges(faces)
table(cut(faces, breaks = 6))


#b)   Crie um gráfico de barras para representar os resultados obtidos nos
#     lançamentos do dado.
#     (utilize o comando barplot)
barplot(faces)

#c)   Crie um gráfico de linha para representar a frequência relativa acumulada.
plot(faces, type = "l")




# Variável aleatória contínua ---------------------------------------------

#2)   Para adquirir um medicamento, realizou-se uma pesquisa de preços e 
#     os dados foram armazenados na variável 'valor'.

set.seed(7)
valor <- round(runif(35, min=30, max=100), 2)

#     Com base nas informações obtidas, e utilizandos os comandos do R, calcule:


#a)   A amplitude da amostra (L);
L <- max(valor) - min(valor)
L

#b)   A quantidade de classes segundo o método de Sturges (k);
K <- nclass.Sturges(valor)
K

#c)   A amplitude de cada classe (h);
H <- L/K
H


#d)   A distribuição de frequências (absoluta e relativa);
table(cut(valor, breaks = K))

#e)   Gere um diagrama de dispersão para visualizar a forma como os dados 
#     estão distribuídos;
plot(valor,type = "o")

#f)   Gere um gráfico de barras para representar a distribuição de frequências;
barplot(valor)


#g)   Gere um gráfico boxplot (gráfico de bigode) e explique a variabilidade dos
#     dados representados plea variável 'valor';
boxplot(valor)

#h)   Determine os quartis e a amplitude interquartis (AIQ); Exlique a relação
#     com o boxplot criado no item g.
quantile(valor)
Q1 <- quantile(valor, probs = 0.25)
Q3 <- quantile(valor, probs = 0.75)
AIQ <- Q3 - Q1
AIQ
# EXPLICACAO:
# Os dados dos quartis nos mostram os dados em determinado ponto, 25%,50%,75%,100% e 0%, se relacionando com
# o bloxplot podemos dizer que um acompaha o outro, nos informando melhor onde está cada determinada porcentagem

#i    Cosntrua um diagrama de ramo-e-folhas.
stem(valor)


#j)   Calcule as estatísticas: média, mediana, variância, desvio padrão e 
#     coeficiente de variação;
# DADOS ORDENADOS:
sort(valor)
# MÉDIA:
mean(valor)
# MEDIANA:
median(valor)
# VARIÂNCIA:
var(valor)
# DESVIO PADRÃO:
sd(valor)
# COEFICIENTE DE VARIAÇÃO
sd(valor) / mean(valor)



# Questão com análise livre -----------------------------------------------

#3)   Sabendo que a altura das pessoas de uma determinada região varia 
#     entre 1,50m e 1,95m. Faça sua análise, de acordo com o conteúdo estudado,
#     considerando os dados seguintes:

set.seed(7)
altura <- round(runif(100, min = 1.50, max = 1.95), 2)

# DADOS ORDENADOS:
sort(altura)
# MÉDIA:
mean(altura)
# MEDIANA:
median(altura)
# VARIÂNCIA:
var(altura)
# DESVIO PADRÃO:
sd(altura)
# AMPLITUDE (L)
L2 <- max(altura) - min(altura)
L2
# QUANTIDADE DE CLASSES:
K2 <- nclass.Sturges(altura)
K2
# AMPLITUDE DA CLASSE:
H2 <- L2/K2
H2
# GRÁFICO DE RAMO-E-FOLHAS
stem(altura)
# DISTRIBUIÇÃO DE FREQUÊNCIA
table(cut(altura, breaks = K2))
# QUARTIS E INTERQUARTIS
quantile(altura)
Q1_questao <- quantile(altura, probs = 0.25)
Q3_questao <- quantile(altura, probs = 0.75)
AIQ_questao <- Q3_questao - Q1_questao
AIQ_questao
#  GRÁFICO DE DISPERSÃO
plot(altura)
# GRÁFICO DE BARRAS
barplot(altura)
# RESUMO DA QUESTAO
summary(altura)







# Questão Extra (Opcional) ------------------------------------------------

#4)   Uma pesquisa identificou que, quando conectados à Internet, os usuários
#     enviam informações somente em 20% de seu tempo de conexão. 
#     Sabendo dessa informação, em uma empresa com 35 funcionários, qual a 
#     probabilidade de 10 usuários, ou mais, estarem conectados e enviando 
#     informações simultaneamente.
#
#  Dica: probabilidade = C(N, n) * p^n * q^(N-n) * 100
#
#     C: combinação; 
#     N: total de funcionários da empresa;
#     n: número de funcionários enviando informações na Internet;
#     p: probabilidade do funcionário está enviando informações;
#     q: probabilidade do funcionário não está enviando informações.
N <- 35
n <- 10
p <- 20/100
q <- 80/100

choose(N,n) * (p^n) * q^(N-n) * 100

 
#
# Gere um documento PDF para postar no GoogleClass ------------------------

# Após executar todos os comandos sem erro, compile o script do trabalho para
# pressionando as teclas 'Ctrl + Shift + k'


