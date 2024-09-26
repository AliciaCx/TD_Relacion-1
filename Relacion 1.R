# RELACION 1 ----

## PROBLEMA 1 ----
### Apartado a) ----
source("teoriadecision_funciones_incertidumbre.R")

tb01a <- crea.tablaX(c(5,4,6,
                    2,3,1,
                    -1,8,7,
                    5,2,0), numalternativas = 4, numestados = 3 )
tb01a

sol01a_wald <- criterio.Wald(tb01a,T)
sol01a_wald
cat("La alternativa optima segun el metodo de Wald es", names(sol01a_wald$AlternativaOptima))

sol01a_optimista <- criterio.Optimista(tb01a)
sol01a_optimista
cat("La alternativa optima segun el metodo optimista es", names(sol01a_optimista$AlternativaOptima))

sol01a_hurwicz <- criterio.Hurwicz(tb01a)
sol01a_hurwicz
cat("La alternativa optima segun el metodo de Hurwicz es", names(sol01a_hurwicz$AlternativaOptima))
dibuja.criterio.Hurwicz(tb01a)
dibuja.criterio.Hurwicz_Intervalos(tb01a)

sol01a_savage <- criterio.Savage(tb01a)
sol01a_savage
cat("La alternativa optima segun el metodo de Savage es", names(sol01a_savage$AlternativaOptima))

sol01a_Laplace <- criterio.Laplace(tb01a)
sol01a_Laplace
cat("La alternativa optima segun el metodo de Laplace es", names(sol01a_Laplace$AlternativaOptima))

sol01a_punto_ideal <- criterio.PuntoIdeal(tb01a)
sol01a_punto_ideal
cat("La alternativa optima segun el punto ideal es", names(sol01a_punto_ideal$AlternativaOptima))


criterio.Todos(tb01a)

### Apartado b) ----
tb01b <- crea.tablaX(c(2,12,-3,
                       5,5,-1,
                       0,10,-2), 3,3)
criterio.Todos(tb01b, alfa = 0.4, F)

## PROBLEMA 2 ----
tb02 <- crea.tablaX(c(0,1,0,
                      1,0,0,
                      1/2,1/2,0), 3, 3)
dibuja.criterio.Hurwicz(tb02)
dibuja.criterio.Hurwicz_Intervalos(tb02, favorable = T) #Nos da error, usaremos Rerun with Debug
debug(dibuja.criterio.Hurwicz_Intervalos)
dibuja.criterio.Hurwicz_Intervalos(tb02, favorable = T)

## PROBLEMA 3 ----
tb03 <- crea.tablaX(c(24, 19, 10, 16,
                      22, 22, 23, 20,
                      23, 23, 21, 15,
                      25, 24, 18, 14), 4, 4)
criterio.Todos(tb03, alfa = 0.5, T)

## PROBLEMA 4 ----
# Decisor: Ana
# Costos
# Alternativas 3
# Requisitos 2

m11 <- (30*12)+(3600/2)
m12 <- 30*12
m21 <- 60*12
m22 <- 60*12
m31 <- (40*12)+3000
m32 <- 40*12

tb04 <- crea.tablaX(c(2160, 360,
                      720, 720,
                      3480, 480), 3, 2)
criterio.Todos(tb04, alfa = 0.5, F)

## PROBLEMA 5 ----
# Una unica decision entre 2 personas
# Costos
# Alternativas 3
# Estado de la naturaleza (incertidumbre) <- 2
#   e1: comer, copa y taxi
#.  e2: comner, no tomar compa, ir andando

tb05 <- crea.tablaX(c(125, 120,
                      156, 60,
                      130, 80), 3, 2)
criterio.Todos(tb05, alfa = 0.5, F)

## PROBLEMA 6

# Unica solucion cada uno de ellos
# Modelo beneficios
# Estadis <-  2
# Alternativas <- 3

tb05 <- crea.tablaX(c(55, 5,
                      70, -30,
                      85, 65), 3, 2)
criterio.Todos(tb05, alfa = 0.5, T)

# Alberto es pesimista <- mejor d1
# Juan es optimista <-  mejor d3

