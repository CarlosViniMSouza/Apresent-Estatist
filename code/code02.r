# Scatter Plot in R

# Considere o modelo 'Y = 2 + 3X^2 + ε', sendo 'Y' a variável dependente,
# 'X' a variável independente e 'ε' um termo de erro,
# tal que 'X∼U(0, 1)' e 'ε∼N(0, 0.25)'.

set.seed(12)

n <- 100
x <- runif(n)
eps <- rnorm(n, 0, 0.25)

y <- 2 + 3 * x^2 + eps

# Para plotar as observações, você pode digitar:
plot(x, y, pch = 19, col = "gray52")

# Além disso, você pode usar a função de 'identificação' para "rotular manualmente alguns pontos de dados do gráfico", por exemplo, alguns valores discrepantes. No argumento de 'rótulos' você pode especificar os rótulos que deseja para cada ponto. # nolint

# Gráfico de dispersão em R com cores diferentes #

# Se você tem uma variável que categoriza os pontos de dados em
# alguns grupos, você pode defini-la como parâmetro do argumento
# 'col' para plotar os pontos de dados 'com cores diferentes',
# dependendo do seu grupo, ou até mesmo definir símbolos
# diferentes por grupo. # nolint

group <- as.factor(ifelse(x < 0.5, "Group 1", "Group 2"))

plot(x, y, pch = as.numeric(group), col = group)

# Gráfico de dispersão com linha de regressão #

# Como dissemos na introdução, o principal uso dos gráficos de dispersão em R é "verificar a relação entre as variáveis". Para isso, "você pode adicionar linhas de regressão" (ou adicionar curvas no caso de estimativas não lineares) com a função de 'linhas', que permite personalizar a largura da linha com o argumento 'lwd' ou o tipo de linha com o argumento 'lty', entre outros argumentos. # nolint

plot(x, y, pch = 19, col = "gray52")

# Modelo subjacente
lines(seq(0, 1, 0.05), 2 + 3 * seq(0, 1, 0.05)^2, col = "2", lwd = 3, lty = 2)

# Ajuste linear
abline(lm(y ~ x), col = "orange", lwd = 3)

# Ajuste suave
lines(lowess(x, y), col = "blue", lwd = 3)

# Legenda
legend("topleft",
  legend = c("Theoretical", "Linear", "Smooth"),
  lwd = 3, lty = c(2, 1, 1), col = c("red", "orange", "blue")
)

# Além disso, você pode adicionar a "correlação de Pearson"
# entre as variáveis ​​que você pode calcular com a função
# 'cor'. # Então, você pode colocar a saída em algumas
# coordenadas do gráfico com a função 'text'. # nolint

# Calcule correlação
correlacao <- cor(x, y)

# Crie o gráfico e adicione o valor calculado
plot(x, y, pch = 19)

text(paste("Correlation:", round(correlacao, 2)), x = 0.2, y = 4.5)
