
# cargar paquetes
library("tidyverse")
library("readxl")

# primero usar la función setwd() para ubicarnos en nuestra carpeta de trabajo

# cargar datos de ingreso
ingreso = read_excel("./datos/indicatorGNIpercapitaPPP.xlsx")

# cargar datos de esperanza de vida
esperanza = read_csv("./datos/IHME_GBD_2010_LIFE_EXPECTANCY_AND_HALE_BY_COUNTRY_1970_2010_Y2012M02D23.csv")

# sleccionar campos de datos de ingreso: sólo año 2010
ingreso = ingreso %>%
          select(1,'2010')

# renombrar columnas
colnames(ingreso) = c("pais","GNI_capita_2010")

# filtrar datos de esperanza de vida: año 2010, ambos sexos, 20-24 años
esperanza = esperanza %>% 
            filter(year==2010,age_name=="20-24 years",sex_name=="Both")

# join de las tablas anteriores
esperanza_ingreso = inner_join(esperanza, ingreso, by = c("country_name" = "pais"))

# tirar datos faltantes
esperanza_ingreso = esperanza_ingreso %>%
                    filter(!is.na(GNI_capita_2010))




