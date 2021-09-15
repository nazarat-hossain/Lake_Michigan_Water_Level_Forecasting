dataPath<-"C:/Users/nazar/Desktop/Project_time_series"
miHuron <- read.csv(paste(dataPath,'miHuron.csv',sep = '/'), header=TRUE)
head(miHuron)

miHuron<-ts(miHuron, frequency=12, start=c(1918,1))
miHuron
plot.ts(miHuron)


# Split data into train and test dataset

train<-window(miHuron,start=c(1918,1),end=c(2000,12))
test<-window(miHuron,start=c(2001,1),end=c(2019,12))
print(train)
print(test)

plot.ts(train)
plot.ts(test)

# Arima Model

m.arima=auto.arima(train)
summary(m.arima)
