# Carga e instalación de paquetes
if(!require(expm)) { install.packages("expm", dependencies = TRUE); library(expm) }
if(!require(tm)) { install.packages("tm", dependencies = TRUE); library(tm) }
if(!require(dplyr)) { install.packages("dplyr", dependencies = TRUE); library(dplyr) }
if(!require(tidyr)) { install.packages("tidyr", dependencies = TRUE); library(tidyr) }
if(!require(diagram)) { install.packages("diagram", dependencies = TRUE); library(diagram) }
# Matriz de probablilidades de transición de estados
estados <- c("lluvia","soleado","nublado","granizo")
clima <- matrix(c(.53,.15,.25,0.07,
                  .14,.72,.14,0,
                  .4,.25,.35,0,
                  .56,.1,.29,.05),
                nrow=4, byrow=TRUE)
row.names(clima) <- estados
colnames(clima) <- estados
clima
# Sumatoria de probabilidades
rowSums(clima)
# Representación gráfica
plotmat(clima,pos = c(2,2), 
        lwd = 1, box.lwd = 2, 
        cex.txt = 0.8, 
        box.size = 0.1, 
        box.type = "circle", 
        box.prop = 0.5,
        box.col = "light blue",
        arr.length=.1,
        arr.width=.1,
        self.cex = .4,
        self.shifty = -.01,
        self.shiftx = .13,
        main = "")
# Matriz de probabilidades de detransición de estados para el segundo día 
clima2 <- clima %^% 2
clima2
# Matriz de probabilidades de detransición de estados para el 3er día 
clima3 <- clima %^% 3
clima3
# Vector de probabilidades para dos días despues si hoy fue un día de lluvia
u <- c(1,0,0,0)
vectorP<-(u %*% clima2)
vectorP
# Probalidad de que mañana esté nublado ya que hoy es un día soleado
v <- matrix(c(0,0,1,0),nrow=4, byrow=TRUE)
u <- c(0,1,0,0)
#climav<-clima %*% v
#ucimav<-u %*%climav
#ucimav
vectorP2<-(u %*% clima %*% v)
vectorP2
