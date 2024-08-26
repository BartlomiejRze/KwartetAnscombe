ZAD.1.
Wyświetl zbiór anscombe z poziomu wiersza poleceń RStudio (wbudowany obiekt).

> print(anscombe)
   x1 x2 x3 x4    y1   y2    y3    y4
1  10 10 10  8  8.04 9.14  7.46  6.58
2   8  8  8  8  6.95 8.14  6.77  5.76
3  13 13 13  8  7.58 8.74 12.74  7.71
4   9  9  9  8  8.81 8.77  7.11  8.84
5  11 11 11  8  8.33 9.26  7.81  8.47
6  14 14 14  8  9.96 8.10  8.84  7.04
7   6  6  6  8  7.24 6.13  6.08  5.25
8   4  4  4 19  4.26 3.10  5.39 12.50
9  12 12 12  8 10.84 9.13  8.15  5.56
10  7  7  7  8  4.82 7.26  6.42  7.91
11  5  5  5  8  5.68 4.74  5.73  6.89
> anscombe$x1
 [1] 10  8 13  9 11 14  6  4 12  7  5

ZAD.2.
Podziel dane na cztery ramki danych: ans1, …, ans4 z kolumnami x oraz y.
Zbuduj ramki danych z wykorzystaniem data.frame()

> ans1 <- data.frame(x = anscombe$x1, y = anscombe$y1)
> ans1
    x     y
1  10  8.04
2   8  6.95
3  13  7.58
4   9  8.81
5  11  8.33
6  14  9.96
7   6  7.24
8   4  4.26
9  12 10.84
10  7  4.82
11  5  5.68

> ans2 <- data.frame(x = anscombe$x2, y = anscombe$y2)
> ans2
    x    y
1  10 9.14
2   8 8.14
3  13 8.74
4   9 8.77
5  11 9.26
6  14 8.10
7   6 6.13
8   4 3.10
9  12 9.13
10  7 7.26
11  5 4.74

> ans3 <- data.frame(x = anscombe$x3, y = anscombe$y3)
> ans3
    x     y
1  10  7.46
2   8  6.77
3  13 12.74
4   9  7.11
5  11  7.81
6  14  8.84
7   6  6.08
8   4  5.39
9  12  8.15
10  7  6.42
11  5  5.73

> ans4 <- data.frame(x = anscombe$x4, y = anscombe$y4)
> ans4
    x     y
1   8  6.58
2   8  5.76
3   8  7.71
4   8  8.84
5   8  8.47
6   8  7.04
7   8  5.25
8  19 12.50
9   8  5.56
10  8  7.91
11  8  6.89

ZAD.3.
Wyznacz średnią (z wykorzystaniem wbudowanej funkcji) z każdej zmiennej x oraz y.

> mean(anscombe$x1)
[1] 9
> mean(anscombe$x2)
[1] 9
> mean(anscombe$x3)
[1] 9
> mean(anscombe$x4)
[1] 9
> mean(anscombe$y1)
[1] 7.500909
> mean(anscombe$y2)
[1] 7.500909
> mean(anscombe$y3)
[1] 7.5
> mean(anscombe$y4)
[1] 7.500909

> sapply(anscombe, mean)
      x1       x2       x3       x4       y1       y2       y3       y4 
9.000000 9.000000 9.000000 9.000000 7.500909 7.500909 7.500000 7.500909 
#wartości średniej są identyczne, ale zapisane z zerami po kropce 

ZAD.4.
Wyznacz odchylenie standardowe (z wykorzystaniem wbudowanej funkcji) z każdej zmiennej x oraz y.

> sd(anscombe$x1)
[1] 3.316625
> sd(anscombe$x2)
[1] 3.316625
> sd(anscombe$x3)
[1] 3.316625
> sd(anscombe$x4)
[1] 3.316625
> sd(anscombe$y1)
[1] 2.031568
> sd(anscombe$y2)
[1] 2.031657
> sd(anscombe$y3)
[1] 2.030424
> sd(anscombe$y4)
[1] 2.030579

ZAD.5.
Wykorzystaj funkcję knitr::kable(), aby wyświetlić uzyskane wartości (z zadana 4).

> results <- c(sd(anscombe$x1),sd(anscombe$x2),sd(anscombe$x3),sd(anscombe$x4),sd(anscombe$y1),sd(anscombe$y2),sd(anscombe$y3),sd(anscombe$y4))
> results
[1] 3.316625 3.316625 3.316625 3.316625 2.031568 2.031657 2.030424 2.030579

> knitr::kable(results, col.names="odchylenie standardowe")

| odchylenie standardowe|
|----------------------:|
|               3.316625|
|               3.316625|
|               3.316625|
|               3.316625|
|               2.031568|
|               2.031657|
|               2.030424|
|               2.030578|
#funkcja stworzyła w konsoli tabelkę z obliczonymi wcześniej wartościami odchylenia standardowego

ZAD.6.
Dla każdego zestawu danych dopasuj(-my) prosty model regresji liniowej.

> GGally::ggpairs(ans1)
> GGally::ggpairs(ans2)
> GGally::ggpairs(ans3)
> GGally::ggpairs(ans4)
> GGally::ggpairs(ans5)
> GGally::ggpairs(anscombe)

> plot(ans1)
> plot(ans2)
> plot(ans3)
> plot(ans4)

> line(ans1)

Call:
line(ans1)

Coefficients:
[1]  2.4757  0.5564

> line(ans2)

Call:
line(ans2)

Coefficients:
[1]  3.13  0.50

> line(ans3)

Call:
line(ans3)

Coefficients:
[1]  3.81  0.37

> line(ans4)

Call:
line(ans4)

Coefficients:
[1]  -Inf   Inf

> plot(anscombe)
> line(anscombe)

Call:
line(anscombe)

Coefficients:
[1]  0  1

> fit_models <- function(ans1) {
+     # ans jest ramka danych z kolumnami x oraz y
+     f <- lm(y~x, data=ans1) # dopasuj model liniowy
+     print(f$coefficients) # wspolczynniki
+     plot(ans1$x, ans1$y) # wykres
+     abline(f, col="red") # linia regresji
+     return(f)
+ }
> fit_models(ans1)
(Intercept)           x 
  3.0000909   0.5000909 

Call:
lm(formula = y ~ x, data = ans1)

Coefficients:
(Intercept)            x  
     3.0001       0.5001 

#y = 0.5000909x + 3.0000909

> fit_models <- function(ans2) {
+     # ans jest ramka danych z kolumnami x oraz y
+     f <- lm(y~x, data=ans2) # dopasuj model liniowy
+     #formuła
+     print(f$coefficients) # wspolczynniki
+     plot(ans2$x, ans2$y) # wykres
+     abline(f, col="red") # linia regresji
+     return(f)
+ }
> fit_models(ans2)
(Intercept)           x 
   3.000909    0.500000 

Call:
lm(formula = y ~ x, data = ans2)

Coefficients:
(Intercept)            x  
      3.001        0.500
#y = 0.500000x + 3.000909

> fit_models <- function(ans3) {
+     # ans jest ramka danych z kolumnami x oraz y
+     f <- lm(y~x, data=ans3) # dopasuj model liniowy
+     #formuła
+     print(f$coefficients) # wspolczynniki
+     plot(ans3$x, ans3$y) # wykres
+     abline(f, col="red") # linia regresji
+     return(f)
+ }
> fit_models(ans3)
(Intercept)           x 
  3.0024545   0.4997273 

Call:
lm(formula = y ~ x, data = ans3)

Coefficients:
(Intercept)            x  
     3.0025       0.4997 

#y = 0.4997273 + 3.0024545

> fit_models <- function(ans4) {
+     # ans jest ramka danych z kolumnami x oraz y
+     f <- lm(y~x, data=ans4) # dopasuj model liniowy
+     #formuła
+     print(f$coefficients) # wspolczynniki
+     plot(ans4$x, ans4$y) # wykres
+     abline(f, col="red") # linia regresji
+     return(f)
+ }
> fit_models(ans4)
(Intercept)           x 
  3.0017273   0.4999091 

Call:
lm(formula = y ~ x, data = ans4)

Coefficients:
(Intercept)            x  
     3.0017       0.4999 

#y = 0.4999x + 3.0017