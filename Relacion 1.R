# RELACION 1 ----

## PROBLEMA 1 ----
source("teoriadecision_funciones_incertidumbre.R")

tb01 <- crea.tablaX(c(5,4,6,
                    2,3,1,
                    -1,8,7,
                    5,2,0), numalternativas = 4, numestados = 3 )
tb01

sol01_wald <- criterio.Wald(tb01)
sol01_wald
