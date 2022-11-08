---
title: "Ejemplo Integración Monte Carlo"
author: "Guillermo Durán González"
date: "2022-11-05"
output: pdf_document
---



# Ejemplo de Integración Monte Carlo

## Estimemos el valor de la siguiente integral usando Monte Carlo:

$$
\theta=\int_0^1 e^{-x} d x
$$
# Apliquemos el siguiente script:


```r
n <- 10000
x <- runif(n)
media<-mean(exp(-x))
theta <- media*(1-0)
print(theta)
```

```
## [1] 0.6345205
```
## En la gráfica se puede notar en rojo la media:


```r
plot(x, exp(-x),xlab="x", ylab="e^(-x)", type="p",col="green", xlim=c(0,1))
text(0.5,media-0.025, "Media", col="red") 
abline(h=media, col="red")
```

![](Ejemplo-Integración-Monte-Carlo_files/figure-latex/remedy003-1.pdf)<!-- --> 


## Notese que al resolver la integral obtenemos un valor similar:

$$
\int_0^1 e^{-x} d x=-e^{-x}\Big|_0^1=1-\frac{1}{e}= 0.6321206
$$

\newpage

## Obtenga el valor de la siguiente integral usando Monte Carlo:

$$
\theta=\int_2^4 e^{-x} d x
$$
Solución: Mediante Monte Carlo se encuentra el siguiente valor:


```r
n <- 10000
x <- runif(n, min=2, max=4 )
media<-mean(exp(-x))
theta <- media*(4-2)
plot(x, exp(-x),xlab="x", ylab="e^(-x)",col="green", 
     xlim=c(2,4), ylim=c(0,theta+.1),type="p")
text(3,media+0.05, "Media", col="red")
abline(h=media, col="red")
```

![](Ejemplo-Integración-Monte-Carlo_files/figure-latex/remedy002-1.pdf)<!-- --> 

```r
print(theta)
```

```
## [1] 0.1160732
```
# Resolviendo la integral se obtiene:

$$
\int_2^4 e^{-x} d x=-e^{-x}\Big|_2^4=\frac{1}{e^2}-\frac{1}{e^4}= 0.11701...
$$
