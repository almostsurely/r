
# cargar paquetes
library("tidyverse")
library("readxl")

# primero usar la función setwd() para ubicarnos en nuestra carpeta de trabajo

# cargar datos de ingreso
ingreso = read_excel("./datos/indicatorGNIpercapitaPPP.xlsx")

# cargar datos de esperanza de vida
esperanza = read_csv("./datos/IHME_GBD_2010_LIFE_EXPECTANCY_AND_HALE_BY_COUNTRY_1970_2010_Y2012M02D23.csv")



