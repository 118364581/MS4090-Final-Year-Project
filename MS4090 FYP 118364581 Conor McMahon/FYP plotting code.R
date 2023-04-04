traindata = t(`ReCA.Train.Data.v1,.window.size.=.12`)

median_line = vector(length = 5000, mode = "double")
mean_line = vector(length = 5000, mode = "double")

for (i in 1:5000){
  row_vector = vector(length = 50, mode = "double")
  for (j in 1:50){
    row_vector[j] = traindata[i,j]
  }
  median_line[i] = median(row_vector)
  mean_line[i] = mean(row_vector)
}

sample = seq(2, 5000, 1)
plot(sample,median_line[sample], type = "l" , col = "black", ylim = c(0,0.2), main = "ReCA Training error over iterations, window size = 12", xlab = "epoch", ylab = "Error rate")
#lines(sample,mean_line[sample], type  = "l", col = "blue")
sample = seq(250, 5000, 250)
trainpoints = vector(length = length(sample), mode = "double")
for (j in 1:50){
  for (i in 1:length(sample)){
    trainpoints[i] = traindata[sample[i],j]
  }
  points(sample, trainpoints, col = "#d1cfcf")
}
legend(4000, 0.6, legend = c("Median Value", "Intervals"), col = c("black", "#d1cfcf"), lty=1:2, cex=0.8)

elmantrain = t(Elman.Train.Data.v1)

for (i in 1:5000){
  row_vector = vector(length = 100, mode = "double")
  for (j in 1:100){
    row_vector[j] = elmantrain[i,j]
  }
  median_line[i] = median(row_vector)
  mean_line[i] = mean(row_vector)
}

sample = seq(2, 5000, 10)
plot(sample,median_line[sample], type = "l" , col = "black", ylim = c(0,0.6), main = "Elman Network Training error over iterations", xlab = "epoch", ylab = "Error rate")
lines(sample,mean_line[sample], type  = "l", col = "blue")

sample = seq(100, 5000, 200)
trainpoints = vector(length = length(sample), mode = "double")
for (j in 1:100){
  for (i in 1:length(sample)){
    trainpoints[i] = elmantrain[sample[i],j]
  }
  points(sample, trainpoints, col = "#d1cfcf")
}
legend(4000, 0.6, legend = c("Median Value", "Mean Value", "Intervals"), col = c("black", "blue","#d1cfcf"), lty = 1:1, cex=0.8)

jordantrain = t(Jordan.Train.Data.v1)

for (i in 1:5000){
  row_vector = vector(length = 100, mode = "double")
  for (j in 1:100){
    row_vector[j] = jordantrain[i,j]
  }
  median_line[i] = median(row_vector)
  mean_line[i] = mean(row_vector)
}

sample = seq(2, 5000, 10)
plot(sample,median_line[sample], type = "l" , col = "black", ylim = c(0,0.6), main = "Jordan Network Training error over iterations", xlab = "epoch", ylab = "Error rate")
lines(sample,mean_line[sample], type  = "l", col = "blue")

sample = seq(100, 5000, 200)
trainpoints = vector(length = length(sample), mode = "double")
for (j in 1:100){
  for (i in 1:length(sample)){
    trainpoints[i] = jordantrain[sample[i],j]
  }``
  points(sample, trainpoints, col = "#d1cfcf")
}
legend(4000, 0.6, legend = c("Median Value", "Mean Value", "Intervals"), col = c("black", "blue","#d1cfcf"), lty = 1:1, cex=0.8)

data = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\4th Year Resources\\ST4064\\ST4064 CA1 118364581\\CPM01.20230217T200252.csv", header = TRUE)
data_All = subset(data, data$Commodity.Group == "All items")

train = head(data_All$VALUE, round(length(data_All$VALUE) * 0.8))
test = tail(data_All$VALUE, round(length(data_All$VALUE) * 0.2))


train.d1 = head(diff(data_All$VALUE), round(length(diff(data_All$VALUE)) * 0.8))
test.d1 = tail(diff(data_All$VALUE), round(length(diff(data_All$VALUE)) * 0.2))
summary(train.d1)

par(mfrow = c(2,1))
testx = seq(250,311,1)
plot(train, type = "l", xlim = c(0,311), ylim = c(90, 180), main = "CPI Dataset", xlab = "Monthly values", ylab = "CPI Values")
lines(testx, test, type = "l", col = "red")
abline(v = 250, lty = 2)
text(x = 200, y = 100, expression("Train Data"))
text(x = 280, y = 100, expression("Test Data"))

testx = seq(249,310,1)
plot(train.d1, type = "l", xlim = c(0,311), ylim = c(-2.5,3), main = "CPI Dataset Differences, Lag 1", xlab = "Monthly values", ylab = "Monthly Inflation Differences")
lines(testx, test.d1, type = "l", col = "red")
abline(v = 250, lty = 2)
text(x = 200, y = -2, expression("Train Data"))
text(x = 280, y = -2, expression("Test Data"))



ReCA_Forecast = t(ReCA.Test.Forecast.v1)
ReCA.Test.Forecast.v1[4,1]

Highvals = vector(length = 61, mode = "double")
Lowvals = vector(length = 61, mode = "double")

Highline = vector(length = 61, mode = "double")
Lowline = vector(length = 61, mode = "double")


Highline = vector(length = 61, mode = "double") + tail(train, length(1))
Lowline = vector(length = 61, mode = "double") + tail(train, length(1))
for (i in 1:61){
  Highvals[i] = -0.2*ReCA.Test.Forecast.v1[i,1] + 0.2*ReCA.Test.Forecast.v1[i,2] + 0.6*ReCA.Test.Forecast.v1[i,3] + 1.9*ReCA.Test.Forecast.v1[i,3]
  Lowvals[i] = -2.4*ReCA.Test.Forecast.v1[i,1] + -0.2*ReCA.Test.Forecast.v1[i,2] + 0.2*ReCA.Test.Forecast.v1[i,3] + 0.6*ReCA.Test.Forecast.v1[i,3]
}
count = 1
for (i in 1:61){
  for (j in count:62){
    Highline[j] = Highline[j] + Highvals[j]
    Lowline[j] = Lowline[j] + Lowvals[j]
  }
  count = count + 1
}
Highline
Highvals
Lowline

testx = seq(250,311,1)
plot(train, type = "l", xlim = c(0,311), ylim = c(90, 180))
lines(testx, test, type = "l", col = "red")
abline(v = 250)
text(x = 200, y = 100, expression("Train Data"))
text(x = 280, y = 100, expression("Test Data"))







testx = seq(250,311,1)
plot(train, type = "l", xlim = c(0,311), ylim = c(90, 180))
lines(testx, test, type = "l", col = "red")
abline(v = 250)
text(x = 200, y = 100, expression("Train Data"))
text(x = 280, y = 100, expression("Test Data"))



ReCA1 = t(`ReCA.Train.Data.v1,.window.size.=.1`)
ReCA2 = t(`ReCA.Train.Data.v1,.window.size.=.2`)
ReCA3 = t(`ReCA.Train.Data.v1,.window.size.=.3`)
ReCA4 = t(`ReCA.Train.Data.v1,.window.size.=.4`)
ReCA5 = t(`ReCA.Train.Data.v1,.window.size.=.5`)
ReCA6 = t(`ReCA.Train.Data.v1,.window.size.=.6`)
ReCA7 = t(`ReCA.Train.Data.v1,.window.size.=.7`)
ReCA8 = t(`ReCA.Train.Data.v1,.window.size.=.8`)
ReCA9 = t(`ReCA.Train.Data.v1,.window.size.=.9`)
ReCA10 = t(`ReCA.Train.Data.v1,.window.size.=.10`)
ReCA11 = t(`ReCA.Train.Data.v1,.window.size.=.11`)
ReCA12 = t(`ReCA.Train.Data.v1,.window.size.=.12`)

median1 = vector(length = 5000, mode = "double")
median2 = vector(length = 5000, mode = "double")
median3 = vector(length = 5000, mode = "double")
median4 = vector(length = 5000, mode = "double")
median5 = vector(length = 5000, mode = "double")
median6 = vector(length = 5000, mode = "double")
median7 = vector(length = 5000, mode = "double")
median8 = vector(length = 5000, mode = "double")
median9 = vector(length = 5000, mode = "double")
median10 = vector(length = 5000, mode = "double")
median11 = vector(length = 5000, mode = "double")
median12 = vector(length = 5000, mode = "double")

row_vector = vector(length = 50, mode = "double")
for (i in 1:5000){
  for (j in 1:50){
    row_vector[j] = ReCA1[i,j]
  }
  median1[i] = median(row_vector)
  
  for (j in 1:50){
    row_vector[j] = ReCA2[i,j]
  }
  median2[i] = median(row_vector)
  
  for (j in 1:50){
    row_vector[j] = ReCA3[i,j]
  }
  median3[i] = median(row_vector)
  
  for (j in 1:50){
    row_vector[j] = ReCA4[i,j]
  }
  median4[i] = median(row_vector)
  
  for (j in 1:50){
    row_vector[j] = ReCA5[i,j]
  }
  median5[i] = median(row_vector)
  
  for (j in 1:50){
    row_vector[j] = ReCA6[i,j]
  }
  median6[i] = median(row_vector)
  
  for (j in 1:50){
    row_vector[j] = ReCA7[i,j]
  }
  median7[i] = median(row_vector)
  
  for (j in 1:50){
    row_vector[j] = ReCA8[i,j]
  }
  median8[i] = median(row_vector)
  
  for (j in 1:50){
    row_vector[j] = ReCA1[i,j]
  }
  median1[i] = median(row_vector)
  
  for (j in 1:50){
    row_vector[j] = ReCA9[i,j]
  }
  median9[i] = median(row_vector)
  
  for (j in 1:50){
    row_vector[j] = ReCA10[i,j]
  }
  median10[i] = median(row_vector)
  
  for (j in 1:50){
    row_vector[j] = ReCA11[i,j]
  }
  median11[i] = median(row_vector)
  
  for (j in 1:50){
    row_vector[j] = ReCA12[i,j]
  }
  median12[i] = median(row_vector)
}

sample = seq(2, 5000, 2)
plot(sample,median1[sample], type = "l" , col = "black", ylim = c(0,0.2), main = "ReCA Training error over iterations", xlab = "epoch", ylab = "Error rate")
lines(sample, median2[sample], type = "l", col = "blue")
lines(sample, median3[sample], type = "l", col = "red")
lines(sample, median4[sample], type = "l", col = "green")
lines(sample, median5[sample], type = "l", col = "yellow")
lines(sample, median6[sample], type = "l", col = "pink")
lines(sample, median7[sample], type = "l", col = "orange")
lines(sample, median8[sample], type = "l", col = "#BAE84A")
lines(sample, median9[sample], type = "l", col = "purple")
lines(sample, median10[sample], type = "l", col = "#b45f06")
lines(sample, median11[sample], type = "l", col = "#00d2ff")
lines(sample, median12[sample], type = "l", col = "#5b5b5b")
legend(4800, 0.20, legend = c("1","2","3","4","5","6","7","8","9","10","11","12"), 
       col = c("black","blue","red","green","yellow","pink","orange","#BAE84A","purple","#b45f06","#00d2ff","#5b5b5b"), lty = 1:1, cex=0.3)

























