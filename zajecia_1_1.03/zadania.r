# Zadanie 1 Przetestowanie pierwszych funkcji

data(iris) # ładuje do pamięci dane o nazwie iris
help(iris) # wyświetla informacje na temat danych iris.
View(iris) # wyświetla dane w oknie edytora.
plot(iris$Sepal.Length, iris$Sepal.Width, pch=19, col=iris$Species) # wykreśla zależność szerokości od długości płatków irysa i koloruje punkty w zależności od gatunku rośliny.
legend('topright', legend=levels(iris$Species), fill=1:3) # dodaje legendę do wykresu.
help(mean) # wyświetla dokumentację funkcji mean.
tapply(iris$Sepal.Length, iris$Species, mean) # oblicza średnią długość płatka dla każdego gatunku.

# Zadanie 2. Utwórz nowy notatnik markdown z domyślnymi ustawieniami (File -> New File -> R Markdown) i zapisz go w wybranym katalogu.
# Utwórz nową komórkę z kodem w R i wklej do niej następujące komendy:
#     data(iris)
#     head(iris), wyświetla kilka pierwszych wierszy tabeli iris.

# w pliku zad2.rmd

# Zadanie 3. Dołącz do danych iris nową kolumnę o nazwie Sepal.Area, równą iloczynowi kolumn Sepal.Length oraz Sepal.Width

iris$Sepal.Area <- iris$Sepal.Length * iris$Sepal.Width
head(iris)

# Zadanie 4. Utwórz wektor kolejnych liczb naturalnych od 1 do 1000 włącznie. Następnie:
#
#     1. Pomnóż każdy element przez 2.
#     2. Zmień co piąty element na 0, korzystając z operatora : i działań arytmetycznych.
#     3. Dodaj elementy -2, -1 na początku wektora oraz 2001, 2002 na końcu.
#     4. Sprawdź długość nowego wektora.

x <- seq(1:1000)
x*2 # krok 1
x[seq(1,1000,5)] <- 0 # krok 2
y <- c(-2, -1, x, 2001, 2002) # krok 3
length(y) # krok 4

# Biblioteka ggplot2
library(ggplot2)
ggplot(iris)
ggplot(iris) + geom_point(aes(x=Sepal.Length, y=Sepal.Width, col=Species))
ggplot() + geom_point(aes(x=Sepal.Length, y=Sepal.Width, col=Species), data=iris)
ggplot(iris) + geom_point(aes(x=Sepal.Length, y=Sepal.Width, col=Species)) + theme_minimal()

# Zadanie 3
# Utwórz nową kolumnę z kodem w R w notatniku z poprzedniego zadania.
# Załaduj dane o nazwie DNase. Wybierz co drugi wiersz tabeli.
# Korzystając z biblioteki ggplot2 oraz geometrii geom_line, przedstaw zależność zmiennej density od zmiennej conc na wykresie liniowym.
# Dodaj kolejną warstwę z wykresem punktowym obrazującym tę zależność.
data(DNase)
dNase_2 <- DNase[seq(2, nrow(DNase), 2),]

ggplot(DNase) + geom_line(aes(x=conc, y=density, color=Run)) + geom_point(aes(x=conc, y=density))