library('stringr')
sp_censo2010 <- read.csv("sp_censo2010.csv", header=T, skip=2, dec=",",fileEncoding="ISO-8859-1", nrows=64)
mulheres = subset(sp_censo2010,str_detect(sp_censo2010$Unidade,"mulheres"))
homens = subset(sp_censo2010,str_detect(sp_censo2010$Unidade,"homens"))

as.numeric(homens$Valor)
as.numeric(mulheres$Valor)