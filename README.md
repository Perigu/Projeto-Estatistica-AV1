# Projeto-Estatistica-AV1
Projeto para a primeira unidade da disciplina de Estatística Exploratória I
Fiquei responsável com o levantamento de dados e estatísticas das amostras de Enterococcus nas praias da cidade de Itanhaém

## Questão 1:
### Encontre média, desvio-padrão, mediana, Q1, Q3, mínimo e máximo dos enterococos de cada praia.
Como visto na [resolução](https://github.com/Perigu/Projeto-Estatistica-AV1/blob/main/Q1.r) da primeira questão, os dados foram calculados e sumarizados.

## Questão 2:
### Faça um gráfico de barras com a variável Beach, ordenando da praia com maior quantidades de amostras para a menor. Colorir gráfico com base na praia. Anotar as porcentagens no topo das barras.
Na segunda questão, os dados foram sumarizados de maneira diferente (Considerando o total de amostras e a ordem de maior quantidade para menor, por praia) a fim de facilitar a criação do gráfico durante a implementação do ggplot. [Resolução](https://github.com/Perigu/Projeto-Estatistica-AV1/blob/main/Q2.r)

![Grafico de barras](https://github.com/Perigu/Projeto-Estatistica-AV1/blob/main/Barras.png)
> Coloquei as porcentagens dentro das barras e as deixei no eixo vertical por preferência. Se tivesse deixado no horizontal, teria que rotacionar os nomes das praias para evitar sobreposição.

## Questão 3:
### Repita a questão 2, fazendo desta vez um gráfico de pizza.
Conforme o requisitado, aqui está a implementação dos mesmos dados, porém em gráfico de pizza. [Resolução](https://github.com/Perigu/Projeto-Estatistica-AV1/blob/main/Q3.r)

![Grafico de pizza](https://github.com/Perigu/Projeto-Estatistica-AV1/blob/main/Pizza.png)

## Questão 4:
### Faça um histograma com todos os dados de Enterococos das praias da sua cidade.
Histograma da incidência dos valores de Enterococcus nas amostras. Não diz muito por si só, mas facilita bastante o entendimento dos box-plots, na questão seguinte. [Resolução](https://github.com/Perigu/Projeto-Estatistica-AV1/blob/main/Q4.r)

![Histograma](https://github.com/Perigu/Projeto-Estatistica-AV1/blob/main/Histograma.png)

## Questão 5:
### Faça box-plots de todas as praias da sua cidade num único gráfico.
Box plots gerados a partir dos valores das amostras. A partir deste gráfico observa-se que, apesar de existirem amostras com valores altos, estas são dadas como pontos discrepantes, pois a maior parte das amostras apresenta valores menores, como observado no histograma. [Resolução](https://github.com/Perigu/Projeto-Estatistica-AV1/blob/main/Q5.r)

![BoxPlots](https://github.com/Perigu/Projeto-Estatistica-AV1/blob/main/BoxPlots.png)