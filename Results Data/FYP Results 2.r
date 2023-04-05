#Model Forecasting
data = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\MS4090 FYP 118364581 Conor McMahon\\CPM01.20230202T190255.csv", header = TRUE)

train = head(data$VALUE, 250)
test = tail(data$VALUE, 62)

ReCA.Forecast1 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\ReCA Forecast Results 1.csv", header = FALSE)

Elman.Forecast1 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\Elman Forecast Results 1.csv", header = FALSE)

Jordan.Forecast1 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\Jordan Forecast Results 1.csv", header = FALSE)

nrow(ReCA.Forecast1)
dim(Elman.Forecast1)
dim(Jordan.Forecast1)

date_vals = seq(1,300,12)
Dates = data$Month[date_vals]


ReCA1.High = numeric(nrow(ReCA.Forecast1))
ReCA1.Low = numeric(nrow(ReCA.Forecast1))






Elman1.High = numeric(nrow(Elman.Forecast1))
Elman1.Low = numeric(nrow(Elman.Forecast1))






Jordan1.High = numeric(nrow(Jordan.Forecast1))
Jordan1.Low = numeric(nrow(Jordan.Forecast1))






trainx = seq(1,250,1)
testx = seq(251,312,1)
data.range = seq(1,312,1)

ReCA_forecast.range = seq(313 - nrow(ReCA.Forecast1),312)
Elman_forecast.range = seq(313 - nrow(Elman.Forecast1),312)
Jordan_forecast.range = seq(313 - nrow(Jordan.Forecast1),312)

length(ReCA_forecast.range)
length(ReCA1.High)

length(Elman_forecast.range)
length(Elman1.High)

length(Jordan_forecast.range)
length(Jordan1.High)


for(i in 1:nrow(ReCA.Forecast1)){
  ReCA1.High[i] = data$VALUE[i + 311 - nrow(ReCA.Forecast1)] + (1.9*ReCA.Forecast1[i,1] + 0.6*ReCA.Forecast1[i,2] + 0.2*ReCA.Forecast1[i,3] - 0.2*ReCA.Forecast1[i,4])
  ReCA1.Low[i] = data$VALUE[i + 311 - nrow(ReCA.Forecast1)] + (0.6*ReCA.Forecast1[i,1] + 0.2*ReCA.Forecast1[i,2] - 0.2*ReCA.Forecast1[i,3] - 2.4*ReCA.Forecast1[i,4])
}

for(i in 1:nrow(Elman.Forecast1)){
  Elman1.High[i] = data$VALUE[i + 311 - nrow(Elman.Forecast1)] + (1.9*Elman.Forecast1[i,1] + 0.6*Elman.Forecast1[i,2] + 0.2*Elman.Forecast1[i,3] - 0.2*Elman.Forecast1[i,4])
  Elman1.Low[i] = data$VALUE[i + 311 - nrow(Elman.Forecast1)] + (0.6*Elman.Forecast1[i,1] + 0.2*Elman.Forecast1[i,2] - 0.2*Elman.Forecast1[i,3] - 2.4*Elman.Forecast1[i,4])
}

for(i in 1:nrow(Jordan.Forecast1)){
  Jordan1.High[i] = data$VALUE[i + 311 - nrow(Jordan.Forecast1)] + (1.9*Jordan.Forecast1[i,1] + 0.6*Jordan.Forecast1[i,2] + 0.2*Jordan.Forecast1[i,3] - 0.2*Jordan.Forecast1[i,4])
  Jordan1.Low[i] = data$VALUE[i + 311 - nrow(Jordan.Forecast1)] + (0.6*Jordan.Forecast1[i,1] + 0.2*Jordan.Forecast1[i,2] - 0.2*Jordan.Forecast1[i,3] - 2.4*Jordan.Forecast1[i,4]
}





#Model Accuracy
acc_benchmark = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\Accuracy Classifier True Values.csv")

dim(acc_benchmark)
dim(ReCA.Forecast1)

nrow(ReCA.Forecast1)
nrow(Elman.Forecast1)
nrow(Jordan.Forecast1)


ReCA.Accuracy = vector(length = nrow(ReCA.Forecast1))




Elman.Accuracy = vector(length = nrow(Elman.Forecast1))
Jordan.Accuracy = vector(length = nrow(Jordan.Forecast1))

ReCA.Check = tail(acc_benchmark, n = nrow(ReCA.Forecast1))
Elman.Check = tail(acc_benchmark, n = nrow(Elman.Forecast1))
Jordan.Check = tail(acc_benchmark, n = nrow(Jordan.Forecast1))

for (i in 1:nrow(ReCA.Forecast1)){
    ReCA.Accuracy[i] = ReCA.Check[i,1]*ReCA.Forecast1[i,1] + ReCA.Check[i,2]*ReCA.Forecast1[i,2] + ReCA.Check[i,3]*ReCA.Forecast1[i,3] + ReCA.Check[i,4]*ReCA.Forecast1[i,4]
}

for (i in 1:nrow(Elman.Forecast1)){
    Elman.Accuracy[i] = Elman.Check[i,1]*Elman.Forecast1[i,1] + Elman.Check[i,2]*Elman.Forecast1[i,2] + Elman.Check[i,3]*Elman.Forecast1[i,3] + Elman.Check[i,4]*Elman.Forecast1[i,4]
}

for (i in 1:nrow(Jordan.Forecast1)){
    Jordan.Accuracy[i] = Jordan.Check[i,1]*Jordan.Forecast1[i,1] + Jordan.Check[i,2]*Jordan.Forecast1[i,2] + Jordan.Check[i,3]*Jordan.Forecast1[i,3] + Jordan.Check[i,4]*Jordan.Forecast1[i,4]
}








mean(tail(ReCA.Accuracy, n =62))
mean(tail(Elman.Accuracy, n =62))
mean(tail(Jordan.Accuracy, n =62))

mean(ReCA.Accuracy[seq(length(ReCA.Accuracy) - 62, length(ReCA.Accuracy) - 15)])
mean(Elman.Accuracy[seq(length(Elman.Accuracy) - 62, length(Elman.Accuracy) - 15)])
mean(Jordan.Accuracy[seq(length(Jordan.Accuracy) - 62, length(Jordan.Accuracy) - 15)])

mean(ReCA.Accuracy[seq(length(ReCA.Accuracy) - 14, length(ReCA.Accuracy))])
mean(Elman.Accuracy[seq(length(Elman.Accuracy) - 14, length(Elman.Accuracy))])
mean(Jordan.Accuracy[seq(length(Jordan.Accuracy) - 14, length(Jordan.Accuracy))])


mean(ReCA.Accuracy[seq(1,length(ReCA.Accuracy) - 63)])
mean(Elman.Accuracy[seq(1,length(Elman.Accuracy) - 63)])
mean(Jordan.Accuracy[seq(1,length(Jordan.Accuracy) - 63)])

sd(ReCA.Accuracy)
sd(Elman.Accuracy)
sd(Jordan.Accuracy)

sd(tail(ReCA.Accuracy, n =62))
sd(tail(Elman.Accuracy, n =62))
sd(tail(Jordan.Accuracy, n =62))

sd(ReCA.Accuracy[seq(length(ReCA.Accuracy) - 62, length(ReCA.Accuracy) - 15)])
sd(Elman.Accuracy[seq(length(Elman.Accuracy) - 62, length(Elman.Accuracy) - 15)])
sd(Jordan.Accuracy[seq(length(Jordan.Accuracy) - 62, length(Jordan.Accuracy) - 15)])

sd(ReCA.Accuracy[seq(length(ReCA.Accuracy) - 14, length(ReCA.Accuracy))])
sd(Elman.Accuracy[seq(length(Elman.Accuracy) - 14, length(Elman.Accuracy))])
sd(Jordan.Accuracy[seq(length(Jordan.Accuracy) - 14, length(Jordan.Accuracy))])



ReCA.Accuracy[seq(length(ReCA.Accuracy) - 62, length(ReCA.Accuracy) - 15)]


Elman_postCovid = vector(length = 60, mode = 'double')
for (i in 1:15){
    for (j in 0:3){
        Elman_postCovid[15*j + i] = tail(Elman.Forecast1, n = 15)[i,j+1]
    }
}
Elman_postCovid


dim(acc_benchmark)
train_benchmark = head.matrix(acc_benchmark, n = 247)
test_benchmark = tail.matrix(acc_benchmark, n = 62)
pre_covid_benchmark = acc_benchmark[248:294,]

sum(train_benchmark[,1])
sum(train_benchmark[,2])
sum(train_benchmark[,3])
sum(train_benchmark[,4])

sum(test_benchmark[,2])/62
sum(test_benchmark[,3])/62
sum(test_benchmark[,4])/62


sum(pre_covid_benchmark[,2])/47
sum(acc_benchmark[295:309,2])/15


trainx = seq(1,250,1)
testx = seq(251,312,1)
data.range = seq(1,312,1)


par(mfrow = c(1,1))
date_vals = seq(1,312,12)
Dates = data$Month[date_vals+6]
length(c(0:312))
plot(y = ReCA.Accuracy, x = ReCA_forecast.range, xlim = c(0,312), ylim = c(0,1), type = 'p', pch = 19, main = "Model 1-Step Prediction Accuracy", xlab = "Prediction Date", ylab = "Accuracy Rate", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
lines(y = Elman.Accuracy, x = Elman_forecast.range, col = "#c42020", type = "p", pch = 19)
lines(y = Jordan.Accuracy, x = Jordan_forecast.range, col = "green", type = "p", pch = 19)
legend("topleft", c("ReCA Model", "Elman Model", "Jordan Model"), col = c("black", "#c42020", "#5dff3c"), lty=1:1, cex=1)
text(x = 261, y = 0.93, labels = "Test Data")
abline(v = 287.5, lty = 2)
text(x = 297, y = 0.93, labels = "Covid-19")

date_vals
tail(data$Month, n = 34)
Dates
length(ReCA_forecast.range)
length(Elman_forecast.range)


par(mfrow = c(1,2))
#ReCA1
plot(data$VALUE, type = "l", ylim = c(90, 180), main = "CPI 1-Step ReCA Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 225, y = 92, labels = "Train Data")
text(x = 275, y = 92, labels = "Test Data")
min_a <- pmin(ReCA1.Low, ReCA1.High)
max_a <- pmax(ReCA1.Low, ReCA1.High)
polygon(c(ReCA_forecast.range, rev(ReCA_forecast.range)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = ReCA_forecast.range, y = ReCA1.High, type = "l", col = "#190879")
lines(x = ReCA_forecast.range, y = ReCA1.Low, type = "l", col = "#190879")
lines(data$VALUE)
legend("topleft", c("CPI Inflation Data", "1-Step Forecast"), col = c("black", "blue"), lty=1:1, cex=0.8)



date_vals = seq(1,312,3)
Dates = data$Month[date_vals]

plot(data$VALUE, type = "l",ylim = c(140,180), xlim = c(250,312), main = "CPI Test Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 255, y = 123, labels = "Test Data")
min_a <- pmin(tail(ReCA1.Low, n = 62), tail(ReCA1.High, n = 62))
max_a <- pmax(tail(ReCA1.Low, n = 62), tail(ReCA1.High, n = 62))
polygon(c(testx, rev(testx)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = testx, y = tail(ReCA1.High, n = 62), type = "l", col = "#190879")
lines(x = testx, y = tail(ReCA1.Low, n = 62), type = "l", col = "#190879")
lines(data$VALUE)
legend("topleft", c("Test data", "1-Step Forecast"), col = c("black", "blue"), lty=1:1, cex=0.8)
abline(v = 292, lty = 2)
text(x = 296, y = 142, labels = "Post-Covid Period")


plot(stl(ts(data$VALUE, deltat = 1/12), s.window = "periodic"), main = 'CPI Inflation Time Series Decomposition')

min(diff(data$VALUE))

par(mfrow = c(1,2))
date_vals = seq(1,300,12)
Dates = data$Month[date_vals]
#Elman1
plot(data$VALUE, type = "l", ylim = c(95, 180), main = "CPI 1-Step Elman Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 225, y = 98, labels = "Train Data")
text(x = 275, y = 98, labels = "Test Data")
min_a <- pmin(Elman1.Low, Elman1.High)
max_a <- pmax(Elman1.Low, Elman1.High)
polygon(c(Elman_forecast.range, rev(Elman_forecast.range)), c(max_a ,rev(min_a)), col = "#c4202065")
lines(x = Elman_forecast.range, y = Elman1.High, type = "l", col = "#790808")
lines(x = Elman_forecast.range, y = Elman1.Low, type = "l", col = "#790808")
lines(data$VALUE)
legend("topleft", c("CPI Inflation Values", "1-Step Forecast"), col = c("black", "red"), lty=1:1, cex=0.8)




date_vals = seq(1,312,3)
Dates = data$Month[date_vals]

plot(data$VALUE, type = "l",ylim = c(140,180), xlim = c(250,312), main = "CPI Elman Test Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5,  lty = 2)
text(x = 255, y = 141, labels = "Test Data")
min_a <- pmin(tail(Elman1.Low, n = 62), tail(Elman1.High, n = 62))
max_a <- pmax(tail(Elman1.Low, n = 62), tail(Elman1.High, n = 62))
polygon(c(testx, rev(testx)), c(max_a ,rev(min_a)), col = "#c4202065")
lines(x = testx, y = tail(Elman1.High, n = 62), type = "l", col = "#790808")
lines(x = testx, y = tail(Elman1.Low, n = 62), type = "l", col = "#790808")
lines(data$VALUE)
legend("topleft", c("Test data", "1-Step Forecast"), col = c("black", "red"), lty=1:1, cex=0.8)
abline(v = 292, lty = 2)
text(x = 300, y = 141, labels = "Post-Covid Period")


#Jordan1
par(mfrow = c(1,2))
date_vals = seq(1,300,12)
Dates = data$Month[date_vals]
plot(data$VALUE, type = "l", ylim = c(95, 180), main = "CPI 1-Step Jordan Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 225, y = 98, labels = "Train Data")
text(x = 275, y = 98, labels = "Test Data")
min_a <- pmin(Jordan1.Low, Jordan1.High)
max_a <- pmax(Jordan1.Low, Jordan1.High)
polygon(c(Jordan_forecast.range, rev(Jordan_forecast.range)), c(max_a ,rev(min_a)), col = "#20c42e65")
lines(x = Jordan_forecast.range, y = Jordan1.High, type = "l", col = "#1b7908")
lines(x = Jordan_forecast.range, y = Jordan1.Low, type = "l", col = "#1b7908")
lines(data$VALUE)
legend("topleft", c("CPI Inflation Data", "1-Step Forecast"), col = c("black", "#1b7908"), lty=1:1, cex=0.8)



date_vals = seq(1,312,3)
Dates = data$Month[date_vals]
plot(data$VALUE, type = "l",ylim = c(140,180), xlim = c(250,312), main = "CPI 1-Step Jordan Test Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 253, y = 123, labels = "Test Data")
min_a <- pmin(tail(Jordan1.Low, n = 62), tail(Jordan1.High, n = 62))
max_a <- pmax(tail(Jordan1.Low, n = 62), tail(Jordan1.High, n = 62))
polygon(c(testx, rev(testx)), c(max_a ,rev(min_a)), col = "#20c42e65")
lines(x = testx, y = tail(Jordan1.High, n = 62), type = "l", col = "#1b7908")
lines(x = testx, y = tail(Jordan1.Low, n = 62), type = "l", col = "#1b7908")
lines(data$VALUE)
legend("topleft", c("Test data", "1-Step Forecast"), col = c("black", "#1b7908"), lty=1:1, cex=0.8)
abline(v = 292, lty = 2)
text(x = 296, y = 142, labels = "Post-Covid Period")


tail(ReCA.Forecast1, n = 15)
tail(Elman.Forecast1, n = 15)
tail(Jordan.Forecast1, n = 15)

tail(ReCA.Accuracy, n = 62)
tail(Jordan.Forecast1, n = 62)
tail(Jordan.Accuracy, n = 62)


ReCA_postCovid = vector(length = 60, mode = 'double')
Elman_postCovid = vector(length = 60, mode = 'double')
Jordan_postCovid = vector(length = 60, mode = 'double')



for (i in 1:15){
    for (j in 0:3){
        ReCA_postCovid[15*j + i] = tail(ReCA.Forecast1, n = 15)[i,j+1]
    }
}

for (i in 1:15){
    for (j in 0:3){
        Elman_postCovid[15*j + i] = tail(Elman.Forecast1, n = 15)[i,j+1]
    }
}

for (i in 1:15){
    for (j in 0:3){
        Jordan_postCovid[15*j + i] = tail(Jordan.Forecast1, n = 15)[i,j+1]
    }
}
break_vals = seq(0, 1, 0.05)

par(mfrow = c(1,3))
hist(ReCA_postCovid, breaks = break_vals, main = "ReCA Post-Covid Forecast Distribution", xlab = "Probability Distribution")
hist(Elman_postCovid[Elman_postCovid >= 0], breaks = break_vals, main = "Elman Post-Covid Forecast Distribution")
hist(Jordan_postCovid, breaks = break_vals, main = "Jordan Post-Covid Forecast Distribution")

Elman_postCovid

tail(ReCA.Forecast1, n = 15)[1,5]




#Model Speed

# Set the working directory to the folder containing the CSV files
setwd("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data")

# Get a list of all the CSV files in the folder
csv_files <- list.files(pattern = "\\.csv$")

# Loop through each CSV file and read it into a data frame
csv_data <- list()
for (file in csv_files) {
  # Read the CSV file into a data frame
  data <- read.csv(file, header = FALSE)
  # Store the data frame in the csv_data list
  csv_data[[file]] <- data
}
names(csv_data)


ReCA.Train <- unlist(lapply(csv_data[ "ReCA Train Errors Results.csv"], as.vector))
for (i in 1:length(ReCA.Train))
    if (ReCA.Train[i] == '#NAME?')
        ReCA.Train[i] = NA

Elman.Train <- unlist(lapply(csv_data["Elman Train Errors Results.csv"], as.vector))
for (i in 1:length(Elman.Train))
    if (Elman.Train[i] == '#NAME?')
        Elman.Train[i] = NA

Jordan.Train <- unlist(lapply(csv_data["Jordan Train Errors Results.csv"], as.vector))
for (i in 1:length(Jordan.Train))
    if (Jordan.Train[i] == '#NAME?')
        Jordan.Train[i] = NA


ReCA.Test <- unlist(lapply(csv_data["ReCA Test Errors Results.csv"], as.vector))
for (i in 1:length(ReCA.Test))
    if (ReCA.Test[i] == '#NAME?')
        ReCA.Test[i] = NA

Elman.Test <- unlist(lapply(csv_data["Elman Test Errors Results.csv"], as.vector))
for (i in 1:length(Elman.Test))
    if (Elman.Test[i] == '#NAME?')
        Elman.Test[i] = NA

Jordan.Test <- unlist(lapply(csv_data["Jordan Test Errors Results.csv"], as.vector))
for (i in 1:length(Jordan.Test))
    if (Jordan.Test[i] == '#NAME?')
        Jordan.Test[i] = NA


length(ReCA.Train[ReCA.Train != 0])
length(Elman.Train[Elman.Train != 0])
length(Jordan.Train[Jordan.Train != 0])







ReCA.Time <- unlist(lapply(csv_data["ReCA Time Test.csv"], as.vector))
for (i in 1:length(ReCA.Time))
    if (ReCA.Time[i] == '#NAME?')
        ReCA.Time[i] = NA

Elman.Time <- unlist(lapply(csv_data["Elman Time Test.csv"], as.vector))
for (i in 1:length(Elman.Time))
    if (Elman.Time[i] == '#NAME?')
        Elman.Time[i] = NA

Jordan.Time <- unlist(lapply(csv_data["Jordan Time Test.csv"], as.vector))
for (i in 1:length(Jordan.Time))
    if (Jordan.Time[i] == '#NAME?')
        Jordan.Time[i] = NA

summary(ReCA.Time)
summary(Elman.Time)
summary(Jordan.Time)

par(mfrow = c(1,3))
break_vals = seq(0, 250, 10)
hist(ReCA.Time, col = "grey", xlim = c(0, 250), breaks = break_vals, main = "ReCA Training Time Distribution", xlab = "Time in milliseconds")
hist(Elman.Time, col = "grey", xlim = c(0, 250), breaks = break_vals, main = "Elman Training Time Distribution", xlab = "Time in milliseconds")
hist(Jordan.Time, col = "grey", xlim = c(0, 250), breaks = break_vals, main = "Jordan Training Time Distribution", xlab = "Time in milliseconds")

length(ReCA.Time)
length(Elman.Time)
length(Jordan.Time)

length(ReCA.Train[ReCA.Train > 0])
length(Elman.Train[Elman.Train > 0])
length(Jordan.Train[Jordan.Train > 0])













