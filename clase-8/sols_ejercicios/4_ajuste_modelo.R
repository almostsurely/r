


# visualizar datos
ggplot(esperanza_ingreso, aes(GNI_capita_2010, le)) + 
  geom_point() +
  geom_text(aes(label=country_name),position=position_jitter(width=2,height=2),size=3)

# ajustar modelo
modelo <- lm(le ~ GNI_capita_2010, data = esperanza_ingreso)

# sumario del modelo
summary(modelo)
