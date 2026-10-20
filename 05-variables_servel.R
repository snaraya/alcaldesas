
# SINIM -------------------------------------------------------------------

#pak::pak("robsalasco/sinimr")

library(tidyverse)
library(sinimr)
library(sjmisc)

# Tasa de pobreza por ingresos (estimación comunal) ----

get_sinim_cats()

search_sinim_vars("pobreza")

tasa_pobreza <- get_sinim(744, 2011:2017)

# Gasto municipal total / población ----

get_sinim_vars(191)

poblacion <- get_sinim(571, 2001:2024)

search_sinim_vars("Gastos Municipales")

gasto_municipal_total <- get_sinim(1093, 2001:2024)

# Participación del Fondo Común Municipal en el Ingreso Total %

porc_fcm_ingreso_total <- get_sinim(1087, 2001:2024) 

# Fondo Común Municipal / ingresos totales ----

# search_sinim_vars("fondo común municipal")
# 
# ingreso_fcm <- get_sinim(880, 2001:2024)
# 
# get_sinim_vars(20)
# 
# gasto_municipal_total <- get_sinim(1093, 2001:2024)

# Participación del Fondo Común Municipal en el Ingreso Total %

porc_fcm_ingreso_total <- get_sinim(1087, 2001:2024)

# Distancia a la capital regional ----

get_sinim_vars(49)

distancia_capital_regional <- get_sinim(824, 2001:2024) # Distancia no cambia

