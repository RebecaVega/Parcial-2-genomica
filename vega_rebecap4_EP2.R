### REBECA VEGA ESCAMILLA ###

# 3. P4 (5%)

#Genera un programa en R que modele lo siguiente: Se tienen tres genes, A,B, y C.
#El gen B está regulado negativamente por A, el A, negativamente por C y el C,
#negativamente por B.

# EScribo mis reglas con mis operadores en un archivo de texto plano 
# Cargo mi librería

library(BoolNet)

# Cargo mi archivo
red_negativos <- loadNetwork("C:/Users/perse/OneDrive/Escritorio/parte3.txt")
red_negativos
plotNetworkWiring(red_negativos) # lo hice nada más para ver cómo se ve

#1. ¿Cuántos atractores tiene esta red?
num_atractor<- getAttractors(red_negativos)
num_atractor
# Me arroja que tiene dos atractores

#2. ¿Cual es el estado más probable?
  #  Es el del atractor 2 que tiene 6 estados porque es mayor que el primero

#3. ¿Hay atractores cíclicos?
# El atractor 2 es un atractor cíclico pues en el gráfico se ve como estan 
# conectados y literal hace un circulito

#4. Dibuja los atractores.
plotAttractors(num_atractor)
# Salen 3 inactivos y 3 activos en cada estado

#5. Dibuja todos los atractores juntos
plotAttractors(red_negativos)
# Sale lo mismo, 9 activos y 9 inactivos 
