#1) Importa los datos del archivo HousingData.csv
library(readr)
HousingData <- read_csv("C:/Users/julie/Downloads/HousingData.csv")


#2) Cuenta el numero de NAs por columna
  apply(HousingData , MARGIN = 2 ,function(x) sum(is.na(x)))
#3) Sustituye los NAs de la columna AGE por la media de la columna
HousingData[is.na(HousingData$AGE), "AGE"]<- median(HousingData$AGE, na.rm = TRUE )