# Grafico de Dispersão em R

# para salvarmos nosso gráfico de dispersão.
jpeg("myplot.jpeg", width = 4, height = 4, units = "in", res = 300)
set.seed(12)

n <- 100
x <- runif(n)
eps <- rnorm(n, 0, 0.25)
y <- 2 + 3 * x^2 + eps

plot(x, y, pch = 19, col = "gray52")
dev.off()
