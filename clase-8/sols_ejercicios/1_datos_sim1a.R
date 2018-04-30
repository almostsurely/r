
library("tidyverse")

# simular datos
sim1a <- tibble(
  x = rep(1:10, each = 3),
  y = x * 1.5 + 6 + rt(length(x), df = 2)
)

# visualizar datos
ggplot(sim1a, aes(x, y)) + 
  geom_point()

# ajustar modelo
sim1_mod <- lm(y ~ x, data = sim1a)

# parámetros
coef(sim1_mod)

# visualizar datos con modelo ajustado
ggplot(sim1a, aes(x, y)) + 
  geom_point() +
  geom_abline(intercept = coef(sim1_mod)[1], slope = coef(sim1_mod)[2], alpha = 1/4) 
