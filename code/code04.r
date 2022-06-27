# Num. Estudante X Notas Estudantes

jpeg("resExemp02.jpeg")

x <- c(
  5, 6, 15, 11, 30,
  4, 6, 10, 14, 18,
  20, 22, 2, 11, 16
)

y <- c(
  40, 60, 70, 65, 80,
  50, 55, 75, 90, 45,
  40, 95, 100, 35, 25
)

# Calcule correlação
correlacao <- cor(x, y)

plot(x, y,
  pch = 19, main = "Diagrama de Dispersão",
  xlab = "Número de Estudantes",
  ylab = "Notas dos Estudantes",
  col = "#158115"
)

text(paste("Correlation:", round(correlacao, 2)), x = 5, y = 90)

dev.off()
