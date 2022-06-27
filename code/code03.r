# Altura X Idade

jpeg("resExemp01.jpeg")

# altura em U.M americana
x <- c(
  2.3, 2.4, 2.5, 3, 3.2, # nolint
  2.9, 4, 4.5, 4.3, 3.8, # nolint
  5, 5.7, 4.2, 4.9, 5.3
)

y <- c(
  3, 4, 5, 6, 7, # nolint
  8, 9, 10, 11, 12, # nolint
  13, 14, 15, 16, 17
)

plot(x, y,
  pch = 19, main = "Diagrama de Dispersão",
  xlim = c(1, 6), ylim = c(1, 20),
  xlab = "Altura", ylab = "Idade",
  col = "#158115"
)

abline(lm(y ~ x), col = "#090979", lwd = 1)

dev.off()
