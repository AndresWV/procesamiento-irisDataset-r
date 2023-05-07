library(dplyr)
library(datasets)
iris
#ejerccio 1
select(iris, Sepal.Length,Sepal.Width,Petal.Length)
#ejerccio 2
select(iris,-Petal.Width)
#ejerccio 3
iris %>% select(starts_with("P")) 
#ejerccio 4
filter(iris,Sepal.Length >= 4.6 , Petal.Width >= 0.5)
#ejerccio 5
iris %>% select(Sepal.Width,Sepal.Length)
#ejerccio 6
arrange(iris,Sepal.Width)
#ejerccio 7
irisAux <- select(iris,1:3)
arrange((arrange(irisAux,Sepal.Length)),Sepal.Width)
#ejercicio 8
mutate(iris,proportion=Sepal.Length/Sepal.Width)
#ejercicio 9
summarise(iris,avg_slength = mean(Sepal.Length))  
iris
#ejercicio 10
iris %>% summarise(iris=iris/Sepal.Length)

