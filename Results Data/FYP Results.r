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
break_vals = seq(0, 5750, 250)
hist(ReCA.Time, col = "grey", xlim = c(0, 5000), breaks = break_vals, main = "ReCA Training Time Distribution", xlab = "Time in milliseconds")
hist(Elman.Time, col = "grey", xlim = c(0, 5000), breaks = break_vals, main = "Elman Training Time Distribution", xlab = "Time in milliseconds")
hist(Jordan.Time, col = "grey", xlim = c(0, 5000), breaks = break_vals, main = "Jordan Training Time Distribution", xlab = "Time in milliseconds")


length(ReCA.Train[ReCA.Train > 0])
length(Elman.Train[Elman.Train > 0])
length(Jordan.Train[Jordan.Train > 0])



boxplot(ReCA.Time, Elman.Time, Jordan.Time)





#Model Forecasting
data = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\MS4090 FYP 118364581 Conor McMahon\\CPM01.20230202T190255.csv", header = TRUE)

train = head(data$VALUE, 250)
test = tail(data$VALUE, 62)


ReCA.Forecast1 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\ReCA Forecast Results 1.csv", header = FALSE)
ReCA.Forecast2 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\ReCA Forecast Results 2.csv", header = FALSE)
ReCA.Forecast3 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\ReCA Forecast Results 3.csv", header = FALSE)
ReCA.Forecast4 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\ReCA Forecast Results 4.csv", header = FALSE)
ReCA.Forecast5 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\ReCA Forecast Results 5.csv", header = FALSE)
ReCA.Forecast6 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\ReCA Forecast Results 6.csv", header = FALSE)
ReCA.Forecast7 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\ReCA Forecast Results 7.csv", header = FALSE)
ReCA.Forecast8 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\ReCA Forecast Results 8.csv", header = FALSE)

Elman.Forecast1 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\Elman Forecast Results 1.csv", header = FALSE)
Elman.Forecast2 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\Elman Forecast Results 2.csv", header = FALSE)
Elman.Forecast3 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\Elman Forecast Results 3.csv", header = FALSE)
Elman.Forecast4 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\Elman Forecast Results 4.csv", header = FALSE)
Elman.Forecast5 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\Elman Forecast Results 5.csv", header = FALSE)
Elman.Forecast6 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\Elman Forecast Results 6.csv", header = FALSE)
Elman.Forecast7 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\Elman Forecast Results 7.csv", header = FALSE)
Elman.Forecast8 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\Elman Forecast Results 8.csv", header = FALSE)

Jordan.Forecast1 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\Jordan Forecast Results 1.csv", header = FALSE)
Jordan.Forecast2 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\Jordan Forecast Results 2.csv", header = FALSE)
Jordan.Forecast3 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\Jordan Forecast Results 3.csv", header = FALSE)
Jordan.Forecast4 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\Jordan Forecast Results 4.csv", header = FALSE)
Jordan.Forecast5 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\Jordan Forecast Results 5.csv", header = FALSE)
Jordan.Forecast6 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\Jordan Forecast Results 6.csv", header = FALSE)
Jordan.Forecast7 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\Jordan Forecast Results 7.csv", header = FALSE)
Jordan.Forecast8 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\Jordan Forecast Results 8.csv", header = FALSE)

dim(ReCA.Forecast1)
dim(Elman.Forecast1)
dim(Jordan.Forecast1)

date_vals = seq(1,300,12)
Dates = data$Month[date_vals]


ReCA1.High = numeric(307)
ReCA1.Low = numeric(307)

ReCA2.High = numeric(307)
ReCA2.Low = numeric(307)

ReCA3.High = numeric(307)
ReCA3.Low = numeric(307)

ReCA4.High = numeric(307)
ReCA4.Low = numeric(307)

ReCA5.High = numeric(307)
ReCA5.Low = numeric(307)

ReCA6.High = numeric(307)
ReCA6.Low = numeric(307)

ReCA7.High = numeric(307)
ReCA7.Low = numeric(307)

ReCA8.High = numeric(307)
ReCA8.Low = numeric(307)



Elman1.High = numeric(308)
Elman1.Low = numeric(308)

Elman2.High = numeric(308)
Elman2.Low = numeric(308)

Elman3.High = numeric(308)
Elman3.Low = numeric(308)

Elman4.High = numeric(308)
Elman4.Low = numeric(308)

Elman5.High = numeric(308)
Elman5.Low = numeric(308)

Elman6.High = numeric(308)
Elman6.Low = numeric(308)

Elman7.High = numeric(308)
Elman7.Low = numeric(308)

Elman8.High = numeric(308)
Elman8.Low = numeric(308)



Jordan1.High = numeric(308)
Jordan1.Low = numeric(308)

Jordan2.High = numeric(308)
Jordan2.Low = numeric(308)

Jordan3.High = numeric(308)
Jordan3.Low = numeric(308)

Jordan4.High = numeric(308)
Jordan4.Low = numeric(308)

Jordan5.High = numeric(308)
Jordan5.Low = numeric(308)

Jordan6.High = numeric(308)
Jordan6.Low = numeric(308)

Jordan7.High = numeric(308)
Jordan7.Low = numeric(308)

Jordan8.High = numeric(308)
Jordan8.Low = numeric(308)


trainx = seq(1,250,1)
testx = seq(251,312,1)
data.range = seq(1,312,1)

ReCA_forecast.range = seq(4,312)
Elman_forecast.range = seq(6,312)
Jordan_forecast.range = seq(6,312)



for(i in 1:307){
  ReCA1.High[i] = data$VALUE[i+3] + (1.9*ReCA.Forecast1[i,1] + 0.6*ReCA.Forecast1[i,2] + 0.2*ReCA.Forecast1[i,3] - 0.2*ReCA.Forecast1[i,4])
  ReCA1.Low[i] = data$VALUE[i+3] + (0.6*ReCA.Forecast1[i,1] + 0.2*ReCA.Forecast1[i,2] - 0.2*ReCA.Forecast1[i,3] - 2.4*ReCA.Forecast1[i,4])

  ReCA2.High[i] = data$VALUE[i+3] + (1.9*ReCA.Forecast2[i,1] + 0.6*ReCA.Forecast2[i,2] + 0.2*ReCA.Forecast2[i,3] - 0.2*ReCA.Forecast2[i,4])
  ReCA2.Low[i] = data$VALUE[i+3] + (0.6*ReCA.Forecast2[i,1] + 0.2*ReCA.Forecast2[i,2] - 0.2*ReCA.Forecast2[i,3] - 2.4*ReCA.Forecast2[i,4])

  ReCA3.High[i] = data$VALUE[i+3] + (1.9*ReCA.Forecast3[i,1] + 0.6*ReCA.Forecast3[i,2] + 0.2*ReCA.Forecast3[i,3] - 0.2*ReCA.Forecast3[i,4])
  ReCA3.Low[i] = data$VALUE[i+3] + (0.6*ReCA.Forecast3[i,1] + 0.2*ReCA.Forecast3[i,2] - 0.2*ReCA.Forecast3[i,3] - 2.4*ReCA.Forecast3[i,4])

  ReCA4.High[i] = data$VALUE[i+3] + (1.9*ReCA.Forecast4[i,1] + 0.6*ReCA.Forecast4[i,2] + 0.2*ReCA.Forecast4[i,3] - 0.2*ReCA.Forecast4[i,4])
  ReCA4.Low[i] = data$VALUE[i+3] + (0.6*ReCA.Forecast4[i,1] + 0.2*ReCA.Forecast4[i,2] - 0.2*ReCA.Forecast4[i,3] - 2.4*ReCA.Forecast4[i,4])

  ReCA5.High[i] = data$VALUE[i+3] + (1.9*ReCA.Forecast4[i,1] + 0.6*ReCA.Forecast5[i,2] + 0.2*ReCA.Forecast5[i,3] - 0.2*ReCA.Forecast5[i,4])
  ReCA5.Low[i] = data$VALUE[i+3] + (0.6*ReCA.Forecast5[i,1] + 0.2*ReCA.Forecast5[i,2] - 0.2*ReCA.Forecast5[i,3] - 2.4*ReCA.Forecast5[i,4])

  ReCA6.High[i] = data$VALUE[i+3] + (1.9*ReCA.Forecast6[i,1] + 0.6*ReCA.Forecast6[i,2] + 0.2*ReCA.Forecast6[i,3] - 0.2*ReCA.Forecast6[i,4])
  ReCA6.Low[i] = data$VALUE[i+3] + (0.6*ReCA.Forecast6[i,1] + 0.2*ReCA.Forecast6[i,2] - 0.2*ReCA.Forecast6[i,3] - 2.4*ReCA.Forecast6[i,4])

  ReCA7.High[i] = data$VALUE[i+3] + (1.9*ReCA.Forecast7[i,1] + 0.6*ReCA.Forecast7[i,2] + 0.2*ReCA.Forecast7[i,3] - 0.2*ReCA.Forecast7[i,4])
  ReCA7.Low[i] = data$VALUE[i+3] + (0.6*ReCA.Forecast7[i,1] + 0.2*ReCA.Forecast7[i,2] - 0.2*ReCA.Forecast7[i,3] - 2.4*ReCA.Forecast7[i,4])

  ReCA8.High[i] = data$VALUE[i+3] + (1.9*ReCA.Forecast8[i,1] + 0.6*ReCA.Forecast8[i,2] + 0.2*ReCA.Forecast8[i,3] - 0.2*ReCA.Forecast8[i,4])
  ReCA8.Low[i] = data$VALUE[i+3] + (0.6*ReCA.Forecast8[i,1] + 0.2*ReCA.Forecast8[i,2] - 0.2*ReCA.Forecast8[i,3] - 2.4*ReCA.Forecast8[i,4])

}

for(i in 1:308){
  Elman1.High[i] = data$VALUE[i+2] + (1.9*Elman.Forecast1[i,1] + 0.6*Elman.Forecast1[i,2] + 0.2*Elman.Forecast1[i,3] - 0.2*Elman.Forecast1[i,4])
  Elman1.Low[i] = data$VALUE[i+2] + (0.6*Elman.Forecast1[i,1] + 0.2*Elman.Forecast1[i,2] - 0.2*Elman.Forecast1[i,3] - 2.4*Elman.Forecast1[i,4])

  Elman2.High[i] = data$VALUE[i+2] + (1.9*Elman.Forecast2[i,1] + 0.6*Elman.Forecast2[i,2] + 0.2*Elman.Forecast2[i,3] - 0.2*Elman.Forecast2[i,4])
  Elman2.Low[i] = data$VALUE[i+2] + (0.6*Elman.Forecast2[i,1] + 0.2*Elman.Forecast2[i,2] - 0.2*Elman.Forecast2[i,3] - 2.4*Elman.Forecast2[i,4])

  Elman3.High[i] = data$VALUE[i+2] + (1.9*Elman.Forecast3[i,1] + 0.6*Elman.Forecast3[i,2] + 0.2*Elman.Forecast3[i,3] - 0.2*Elman.Forecast3[i,4])
  Elman3.Low[i] = data$VALUE[i+2] + (0.6*Elman.Forecast3[i,1] + 0.2*Elman.Forecast3[i,2] - 0.2*Elman.Forecast3[i,3] - 2.4*Elman.Forecast3[i,4])

  Elman4.High[i] = data$VALUE[i+2] + (1.9*Elman.Forecast4[i,1] + 0.6*Elman.Forecast4[i,2] + 0.2*Elman.Forecast4[i,3] - 0.2*Elman.Forecast4[i,4])
  Elman4.Low[i] = data$VALUE[i+2] + (0.6*Elman.Forecast4[i,1] + 0.2*Elman.Forecast4[i,2] - 0.2*Elman.Forecast4[i,3] - 2.4*Elman.Forecast4[i,4])

  Elman5.High[i] = data$VALUE[i+2] + (1.9*Elman.Forecast5[i,1] + 0.6*Elman.Forecast5[i,2] + 0.2*Elman.Forecast5[i,3] - 0.2*Elman.Forecast5[i,4])
  Elman5.Low[i] = data$VALUE[i+2] + (0.6*Elman.Forecast5[i,1] + 0.2*Elman.Forecast5[i,2] - 0.2*Elman.Forecast5[i,3] - 2.4*Elman.Forecast5[i,4])

  Elman6.High[i] = data$VALUE[i+2] + (1.9*Elman.Forecast6[i,1] + 0.6*Elman.Forecast6[i,2] + 0.2*Elman.Forecast6[i,3] - 0.2*Elman.Forecast6[i,4])
  Elman6.Low[i] = data$VALUE[i+2] + (0.6*Elman.Forecast6[i,1] + 0.2*Elman.Forecast6[i,2] - 0.2*Elman.Forecast6[i,3] - 2.4*Elman.Forecast6[i,4])

  Elman7.High[i] = data$VALUE[i+2] + (1.9*Elman.Forecast7[i,1] + 0.6*Elman.Forecast7[i,2] + 0.2*Elman.Forecast7[i,3] - 0.2*Elman.Forecast7[i,4])
  Elman7.Low[i] = data$VALUE[i+2] + (0.6*Elman.Forecast7[i,1] + 0.2*Elman.Forecast7[i,2] - 0.2*Elman.Forecast7[i,3] - 2.4*Elman.Forecast7[i,4])

  Elman8.High[i] = data$VALUE[i+2] + (1.9*Elman.Forecast8[i,1] + 0.6*Elman.Forecast8[i,2] + 0.2*Elman.Forecast8[i,3] - 0.2*Elman.Forecast8[i,4])
  Elman8.Low[i] = data$VALUE[i+2] + (0.6*Elman.Forecast8[i,1] + 0.2*Elman.Forecast8[i,2] - 0.2*Elman.Forecast8[i,3] - 2.4*Elman.Forecast8[i,4])
}

for(i in 1:308){
  Jordan1.High[i] = data$VALUE[i+2] + (1.9*Jordan.Forecast1[i,1] + 0.6*Jordan.Forecast1[i,2] + 0.2*Jordan.Forecast1[i,3] - 0.2*Jordan.Forecast1[i,4])
  Jordan1.Low[i] = data$VALUE[i+2] + (0.6*Jordan.Forecast1[i,1] + 0.2*Jordan.Forecast1[i,2] - 0.2*Jordan.Forecast1[i,3] - 2.4*Jordan.Forecast1[i,4])

  Jordan2.High[i] = data$VALUE[i+2] + (1.9*Jordan.Forecast2[i,1] + 0.6*Jordan.Forecast2[i,2] + 0.2*Jordan.Forecast2[i,3] - 0.2*Jordan.Forecast2[i,4])
  Jordan2.Low[i] = data$VALUE[i+2] + (0.6*Jordan.Forecast2[i,1] + 0.2*Jordan.Forecast2[i,2] - 0.2*Jordan.Forecast2[i,3] - 2.4*Jordan.Forecast2[i,4])

  Jordan3.High[i] = data$VALUE[i+2] + (1.9*Jordan.Forecast3[i,1] + 0.6*Jordan.Forecast3[i,2] + 0.2*Jordan.Forecast3[i,3] - 0.2*Jordan.Forecast3[i,4])
  Jordan3.Low[i] = data$VALUE[i+2] + (0.6*Jordan.Forecast3[i,1] + 0.2*Jordan.Forecast3[i,2] - 0.2*Jordan.Forecast3[i,3] - 2.4*Jordan.Forecast3[i,4])

  Jordan4.High[i] = data$VALUE[i+2] + (1.9*Jordan.Forecast4[i,1] + 0.6*Jordan.Forecast4[i,2] + 0.2*Jordan.Forecast4[i,3] - 0.2*Jordan.Forecast4[i,4])
  Jordan4.Low[i] = data$VALUE[i+2] + (0.6*Jordan.Forecast4[i,1] + 0.2*Jordan.Forecast4[i,2] - 0.2*Jordan.Forecast4[i,3] - 2.4*Jordan.Forecast4[i,4])

  Jordan5.High[i] = data$VALUE[i+2] + (1.9*Jordan.Forecast5[i,1] + 0.6*Jordan.Forecast5[i,2] + 0.2*Jordan.Forecast5[i,3] - 0.2*Jordan.Forecast5[i,4])
  Jordan5.Low[i] = data$VALUE[i+2] + (0.6*Jordan.Forecast5[i,1] + 0.2*Jordan.Forecast5[i,2] - 0.2*Jordan.Forecast5[i,3] - 2.4*Jordan.Forecast5[i,4])

  Jordan6.High[i] = data$VALUE[i+2] + (1.9*Jordan.Forecast6[i,1] + 0.6*Jordan.Forecast6[i,2] + 0.2*Jordan.Forecast6[i,3] - 0.2*Jordan.Forecast6[i,4])
  Jordan6.Low[i] = data$VALUE[i+2] + (0.6*Jordan.Forecast6[i,1] + 0.2*Jordan.Forecast6[i,2] - 0.2*Jordan.Forecast6[i,3] - 2.4*Jordan.Forecast6[i,4])

  Jordan7.High[i] = data$VALUE[i+2] + (1.9*Jordan.Forecast7[i,1] + 0.6*Jordan.Forecast7[i,2] + 0.2*Jordan.Forecast7[i,3] - 0.2*Jordan.Forecast7[i,4])
  Jordan7.Low[i] = data$VALUE[i+2] + (0.6*Jordan.Forecast7[i,1] + 0.2*Jordan.Forecast7[i,2] - 0.2*Jordan.Forecast7[i,3] - 2.4*Jordan.Forecast7[i,4])

  Jordan8.High[i] = data$VALUE[i+2] + (1.9*Jordan.Forecast8[i,1] + 0.6*Jordan.Forecast8[i,2] + 0.2*Jordan.Forecast8[i,3] - 0.2*Jordan.Forecast8[i,4])
  Jordan8.Low[i] = data$VALUE[i+2] + (0.6*Jordan.Forecast8[i,1] + 0.2*Jordan.Forecast8[i,2] - 0.2*Jordan.Forecast8[i,3] - 2.4*Jordan.Forecast8[i,4])
}



par(mfrow = c(1,1))

#ReCA1
plot(data$VALUE, type = "l", ylim = c(90, 180), main = "CPI 1-Step ReCA Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 230, y = 91, labels = "Train Data")
text(x = 270, y = 91, labels = "Test Data")
min_a <- pmin(ReCA1.Low, ReCA1.High)
max_a <- pmax(ReCA1.Low, ReCA1.High)
polygon(c(ReCA_forecast.range, rev(ReCA_forecast.range)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = ReCA_forecast.range, y = ReCA1.High, type = "l", col = "#190879")
lines(x = ReCA_forecast.range, y = ReCA1.Low, type = "l", col = "#190879")
lines(data$VALUE)



date_vals = seq(1,312,3)
Dates = data$Month[date_vals]

plot(data$VALUE, type = "l",ylim = c(140,180), xlim = c(250,312), main = "CPI Test Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 253, y = 123, labels = "Test Data")
min_a <- pmin(tail(ReCA1.Low, n = 62), tail(ReCA1.High, n = 62))
max_a <- pmax(tail(ReCA1.Low, n = 62), tail(ReCA1.High, n = 62))
polygon(c(testx, rev(testx)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = testx, y = tail(ReCA1.High, n = 62), type = "l", col = "#190879")
lines(x = testx, y = tail(ReCA1.Low, n = 62), type = "l", col = "#190879")
lines(data$VALUE)




par(mfrow = c(1,2))
date_vals = seq(1,300,12)
Dates = data$Month[date_vals]
#ReCA2
plot(data$VALUE, type = "l", ylim = c(95, 180), main = "CPI ReCA 1-Step Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 230, y = 91, labels = "Train Data")
text(x = 270, y = 91, labels = "Test Data")
min_a <- pmin(ReCA2.Low, ReCA2.High)
max_a <- pmax(ReCA2.Low, ReCA2.High)
polygon(c(ReCA_forecast.range, rev(ReCA_forecast.range)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = ReCA_forecast.range, y = ReCA2.High, type = "l", col = "#190879")
lines(x = ReCA_forecast.range, y = ReCA2.Low, type = "l", col = "#190879")
lines(data$VALUE)
legend("topleft", c("CPI Inflation Data", "1-Step Forecast"), col = c("black", "blue"), lty=1:1, cex=0.8)



date_vals = seq(1,312,3)
Dates = data$Month[date_vals]

plot(data$VALUE, type = "l",ylim = c(145,180), xlim = c(250,312), main = "CPI ReCA 1-Step Test Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 253, y = 123, labels = "Test Data")
min_a <- pmin(tail(ReCA2.Low, n = 62), tail(ReCA2.High, n = 62))
max_a <- pmax(tail(ReCA2.Low, n = 62), tail(ReCA2.High, n = 62))
polygon(c(testx, rev(testx)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = testx, y = tail(ReCA2.High, n = 62), type = "l", col = "#190879")
lines(x = testx, y = tail(ReCA2.Low, n = 62), type = "l", col = "#190879")
lines(data$VALUE)
legend("topleft", c("Test data", "1-Step Forecast"), col = c("black", "blue"), lty=1:1, cex=0.8)





#ReCA3
plot(data$VALUE, type = "l", ylim = c(90, 180), main = "CPI 1-Step ReCA Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 230, y = 91, labels = "Train Data")
text(x = 270, y = 91, labels = "Test Data")
min_a <- pmin(ReCA3.Low, ReCA3.High)
max_a <- pmax(ReCA3.Low, ReCA3.High)
polygon(c(ReCA_forecast.range, rev(ReCA_forecast.range)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = ReCA_forecast.range, y = ReCA3.High, type = "l", col = "#190879")
lines(x = ReCA_forecast.range, y = ReCA3.Low, type = "l", col = "#190879")
lines(data$VALUE)



date_vals = seq(1,312,3)
Dates = data$Month[date_vals]

plot(data$VALUE, type = "l",ylim = c(120,180), xlim = c(250,312), main = "CPI Test Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 253, y = 123, labels = "Test Data")
min_a <- pmin(tail(ReCA3.Low, n = 62), tail(ReCA3.High, n = 62))
max_a <- pmax(tail(ReCA3.Low, n = 62), tail(ReCA3.High, n = 62))
polygon(c(testx, rev(testx)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = testx, y = tail(ReCA3.High, n = 62), type = "l", col = "#190879")
lines(x = testx, y = tail(ReCA3.Low, n = 62), type = "l", col = "#190879")
lines(data$VALUE)





#ReCA4
plot(data$VALUE, type = "l", ylim = c(90, 180), main = "CPI 1-Step ReCA Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 230, y = 91, labels = "Train Data")
text(x = 270, y = 91, labels = "Test Data")
min_a <- pmin(ReCA4.Low, ReCA4.High)
max_a <- pmax(ReCA4.Low, ReCA4.High)
polygon(c(ReCA_forecast.range, rev(ReCA_forecast.range)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = ReCA_forecast.range, y = ReCA4.High, type = "l", col = "#190879")
lines(x = ReCA_forecast.range, y = ReCA4.Low, type = "l", col = "#190879")
lines(data$VALUE)



date_vals = seq(1,312,3)
Dates = data$Month[date_vals]

plot(data$VALUE, type = "l",ylim = c(120,180), xlim = c(250,312), main = "CPI Test Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 253, y = 123, labels = "Test Data")
min_a <- pmin(tail(ReCA4.Low, n = 62), tail(ReCA4.High, n = 62))
max_a <- pmax(tail(ReCA4.Low, n = 62), tail(ReCA4.High, n = 62))
polygon(c(testx, rev(testx)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = testx, y = tail(ReCA4.High, n = 62), type = "l", col = "#190879")
lines(x = testx, y = tail(ReCA4.Low, n = 62), type = "l", col = "#190879")
lines(data$VALUE)





#ReCA5
plot(data$VALUE, type = "l", ylim = c(90, 180), main = "CPI 1-Step ReCA Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 230, y = 91, labels = "Train Data")
text(x = 270, y = 91, labels = "Test Data")
min_a <- pmin(ReCA5.Low, ReCA5.High)
max_a <- pmax(ReCA5.Low, ReCA5.High)
polygon(c(ReCA_forecast.range, rev(ReCA_forecast.range)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = ReCA_forecast.range, y = ReCA5.High, type = "l", col = "#190879")
lines(x = ReCA_forecast.range, y = ReCA5.Low, type = "l", col = "#190879")
lines(data$VALUE)



date_vals = seq(1,312,3)
Dates = data$Month[date_vals]

plot(data$VALUE, type = "l",ylim = c(120,180), xlim = c(250,312), main = "CPI Test Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 253, y = 123, labels = "Test Data")
min_a <- pmin(tail(ReCA5.Low, n = 62), tail(ReCA5.High, n = 62))
max_a <- pmax(tail(ReCA5.Low, n = 62), tail(ReCA5.High, n = 62))
polygon(c(testx, rev(testx)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = testx, y = tail(ReCA5.High, n = 62), type = "l", col = "#190879")
lines(x = testx, y = tail(ReCA5.Low, n = 62), type = "l", col = "#190879")
lines(data$VALUE)





#ReCA6
plot(data$VALUE, type = "l", ylim = c(90, 180), main = "CPI 1-Step ReCA Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 230, y = 91, labels = "Train Data")
text(x = 270, y = 91, labels = "Test Data")
min_a <- pmin(ReCA6.Low, ReCA6.High)
max_a <- pmax(ReCA6.Low, ReCA6.High)
polygon(c(ReCA_forecast.range, rev(ReCA_forecast.range)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = ReCA_forecast.range, y = ReCA6.High, type = "l", col = "#190879")
lines(x = ReCA_forecast.range, y = ReCA6.Low, type = "l", col = "#190879")
lines(data$VALUE)



date_vals = seq(1,312,3)
Dates = data$Month[date_vals]

plot(data$VALUE, type = "l",ylim = c(120,180), xlim = c(250,312), main = "CPI Test Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 253, y = 123, labels = "Test Data")
min_a <- pmin(tail(ReCA6.Low, n = 62), tail(ReCA6.High, n = 62))
max_a <- pmax(tail(ReCA6.Low, n = 62), tail(ReCA6.High, n = 62))
polygon(c(testx, rev(testx)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = testx, y = tail(ReCA6.High, n = 62), type = "l", col = "#190879")
lines(x = testx, y = tail(ReCA6.Low, n = 62), type = "l", col = "#190879")
lines(data$VALUE)





#ReCA7
plot(data$VALUE, type = "l", ylim = c(90, 180), main = "CPI 1-Step ReCA Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 230, y = 91, labels = "Train Data")
text(x = 270, y = 91, labels = "Test Data")
min_a <- pmin(ReCA7.Low, ReCA7.High)
max_a <- pmax(ReCA7.Low, ReCA7.High)
polygon(c(ReCA_forecast.range, rev(ReCA_forecast.range)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = ReCA_forecast.range, y = ReCA7.High, type = "l", col = "#190879")
lines(x = ReCA_forecast.range, y = ReCA7.Low, type = "l", col = "#190879")
lines(data$VALUE)



date_vals = seq(1,312,3)
Dates = data$Month[date_vals]

plot(data$VALUE, type = "l",ylim = c(120,180), xlim = c(250,312), main = "CPI Test Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 253, y = 123, labels = "Test Data")
min_a <- pmin(tail(ReCA7.Low, n = 62), tail(ReCA7.High, n = 62))
max_a <- pmax(tail(ReCA7.Low, n = 62), tail(ReCA7.High, n = 62))
polygon(c(testx, rev(testx)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = testx, y = tail(ReCA7.High, n = 62), type = "l", col = "#190879")
lines(x = testx, y = tail(ReCA7.Low, n = 62), type = "l", col = "#190879")
lines(data$VALUE)





#ReCA8
plot(data$VALUE, type = "l", ylim = c(90, 180), main = "CPI 1-Step ReCA Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 230, y = 91, labels = "Train Data")
text(x = 270, y = 91, labels = "Test Data")
min_a <- pmin(ReCA8.Low, ReCA8.High)
max_a <- pmax(ReCA8.Low, ReCA8.High)
polygon(c(ReCA_forecast.range, rev(ReCA_forecast.range)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = ReCA_forecast.range, y = ReCA8.High, type = "l", col = "#190879")
lines(x = ReCA_forecast.range, y = ReCA8.Low, type = "l", col = "#190879")
lines(data$VALUE)



date_vals = seq(1,312,3)
Dates = data$Month[date_vals]

plot(data$VALUE, type = "l",ylim = c(120,180), xlim = c(250,312), main = "CPI Test Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 253, y = 123, labels = "Test Data")
min_a <- pmin(tail(ReCA8.Low, n = 62), tail(ReCA8.High, n = 62))
max_a <- pmax(tail(ReCA8.Low, n = 62), tail(ReCA8.High, n = 62))
polygon(c(testx, rev(testx)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = testx, y = tail(ReCA8.High, n = 62), type = "l", col = "#190879")
lines(x = testx, y = tail(ReCA8.Low, n = 62), type = "l", col = "#190879")
lines(data$VALUE)





par(mfrow = c(1,1))
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




par(mfrow = c(1,1))
#Elman2
plot(data$VALUE, type = "l", ylim = c(90, 180), main = "CPI 1-Step Elman Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 230, y = 91, labels = "Train Data")
text(x = 270, y = 91, labels = "Test Data")
min_a <- pmin(Elman2.Low, Elman2.High)
max_a <- pmax(Elman2.Low, Elman2.High)
polygon(c(Elman_forecast.range, rev(Elman_forecast.range)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = Elman_forecast.range, y = Elman2.High, type = "l", col = "#190879")
lines(x = Elman_forecast.range, y = Elman2.Low, type = "l", col = "#190879")
lines(data$VALUE)



date_vals = seq(1,312,3)
Dates = data$Month[date_vals]

plot(data$VALUE, type = "l",ylim = c(120,180), xlim = c(250,312), main = "CPI Test Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 253, y = 123, labels = "Test Data")
min_a <- pmin(tail(Elman2.Low, n = 62), tail(Elman2.High, n = 62))
max_a <- pmax(tail(Elman2.Low, n = 62), tail(Elman2.High, n = 62))
polygon(c(testx, rev(testx)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = testx, y = tail(Elman2.High, n = 62), type = "l", col = "#190879")
lines(x = testx, y = tail(Elman2.Low, n = 62), type = "l", col = "#190879")
lines(data$VALUE)





#Elman3
plot(data$VALUE, type = "l", ylim = c(90, 180), main = "CPI 1-Step Elman Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 230, y = 91, labels = "Train Data")
text(x = 270, y = 91, labels = "Test Data")
min_a <- pmin(Elman3.Low, Elman3.High)
max_a <- pmax(Elman3.Low, Elman3.High)
polygon(c(Elman_forecast.range, rev(Elman_forecast.range)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = Elman_forecast.range, y = Elman3.High, type = "l", col = "#190879")
lines(x = Elman_forecast.range, y = Elman3.Low, type = "l", col = "#190879")
lines(data$VALUE)



date_vals = seq(1,312,3)
Dates = data$Month[date_vals]

plot(data$VALUE, type = "l",ylim = c(120,180), xlim = c(250,312), main = "CPI Test Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 253, y = 123, labels = "Test Data")
min_a <- pmin(tail(Elman3.Low, n = 62), tail(Elman3.High, n = 62))
max_a <- pmax(tail(Elman3.Low, n = 62), tail(Elman3.High, n = 62))
polygon(c(testx, rev(testx)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = testx, y = tail(Elman3.High, n = 62), type = "l", col = "#190879")
lines(x = testx, y = tail(Elman3.Low, n = 62), type = "l", col = "#190879")
lines(data$VALUE)





#Elman4
plot(data$VALUE, type = "l", ylim = c(90, 180), main = "CPI 1-Step Elman Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 230, y = 91, labels = "Train Data")
text(x = 270, y = 91, labels = "Test Data")
min_a <- pmin(Elman4.Low, Elman4.High)
max_a <- pmax(Elman4.Low, Elman4.High)
polygon(c(Elman_forecast.range, rev(Elman_forecast.range)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = Elman_forecast.range, y = Elman4.High, type = "l", col = "#190879")
lines(x = Elman_forecast.range, y = Elman4.Low, type = "l", col = "#190879")
lines(data$VALUE)



date_vals = seq(1,312,3)
Dates = data$Month[date_vals]

plot(data$VALUE, type = "l",ylim = c(120,180), xlim = c(250,312), main = "CPI Test Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 253, y = 123, labels = "Test Data")
min_a <- pmin(tail(Elman4.Low, n = 62), tail(Elman4.High, n = 62))
max_a <- pmax(tail(Elman4.Low, n = 62), tail(Elman4.High, n = 62))
polygon(c(testx, rev(testx)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = testx, y = tail(Elman4.High, n = 62), type = "l", col = "#190879")
lines(x = testx, y = tail(Elman4.Low, n = 62), type = "l", col = "#190879")
lines(data$VALUE)





#Elman5
plot(data$VALUE, type = "l", ylim = c(90, 180), main = "CPI 1-Step Elman Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 230, y = 91, labels = "Train Data")
text(x = 270, y = 91, labels = "Test Data")
min_a <- pmin(Elman5.Low, Elman5.High)
max_a <- pmax(Elman5.Low, Elman5.High)
polygon(c(Elman_forecast.range, rev(Elman_forecast.range)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = Elman_forecast.range, y = Elman5.High, type = "l", col = "#190879")
lines(x = Elman_forecast.range, y = Elman5.Low, type = "l", col = "#190879")
lines(data$VALUE)



date_vals = seq(1,312,3)
Dates = data$Month[date_vals]

plot(data$VALUE, type = "l",ylim = c(120,180), xlim = c(250,312), main = "CPI Test Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 253, y = 123, labels = "Test Data")
min_a <- pmin(tail(Elman5.Low, n = 62), tail(Elman5.High, n = 62))
max_a <- pmax(tail(Elman5.Low, n = 62), tail(Elman5.High, n = 62))
polygon(c(testx, rev(testx)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = testx, y = tail(Elman5.High, n = 62), type = "l", col = "#190879")
lines(x = testx, y = tail(Elman5.Low, n = 62), type = "l", col = "#190879")
lines(data$VALUE)





#Elman6
plot(data$VALUE, type = "l", ylim = c(90, 180), main = "CPI 1-Step Elman Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 230, y = 91, labels = "Train Data")
text(x = 270, y = 91, labels = "Test Data")
min_a <- pmin(Elman6.Low, Elman6.High)
max_a <- pmax(Elman6.Low, Elman6.High)
polygon(c(Elman_forecast.range, rev(Elman_forecast.range)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = Elman_forecast.range, y = Elman6.High, type = "l", col = "#190879")
lines(x = Elman_forecast.range, y = Elman6.Low, type = "l", col = "#190879")
lines(data$VALUE)



date_vals = seq(1,312,3)
Dates = data$Month[date_vals]

plot(data$VALUE, type = "l",ylim = c(120,180), xlim = c(250,312), main = "CPI Test Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 253, y = 123, labels = "Test Data")
min_a <- pmin(tail(Elman6.Low, n = 62), tail(Elman6.High, n = 62))
max_a <- pmax(tail(Elman6.Low, n = 62), tail(Elman6.High, n = 62))
polygon(c(testx, rev(testx)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = testx, y = tail(Elman6.High, n = 62), type = "l", col = "#190879")
lines(x = testx, y = tail(Elman6.Low, n = 62), type = "l", col = "#190879")
lines(data$VALUE)





#Elman7
plot(data$VALUE, type = "l", ylim = c(90, 180), main = "CPI 1-Step Elman Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 230, y = 91, labels = "Train Data")
text(x = 270, y = 91, labels = "Test Data")
min_a <- pmin(Elman7.Low, Elman7.High)
max_a <- pmax(Elman7.Low, Elman7.High)
polygon(c(Elman_forecast.range, rev(Elman_forecast.range)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = Elman_forecast.range, y = Elman7.High, type = "l", col = "#190879")
lines(x = Elman_forecast.range, y = Elman7.Low, type = "l", col = "#190879")
lines(data$VALUE)



date_vals = seq(1,312,3)
Dates = data$Month[date_vals]

plot(data$VALUE, type = "l",ylim = c(120,180), xlim = c(250,312), main = "CPI Test Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 253, y = 123, labels = "Test Data")
min_a <- pmin(tail(Elman7.Low, n = 62), tail(Elman7.High, n = 62))
max_a <- pmax(tail(Elman7.Low, n = 62), tail(Elman7.High, n = 62))
polygon(c(testx, rev(testx)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = testx, y = tail(Elman7.High, n = 62), type = "l", col = "#190879")
lines(x = testx, y = tail(Elman7.Low, n = 62), type = "l", col = "#190879")
lines(data$VALUE)





#Elman8
plot(data$VALUE, type = "l", ylim = c(90, 180), main = "CPI 1-Step Elman Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 230, y = 91, labels = "Train Data")
text(x = 270, y = 91, labels = "Test Data")
min_a <- pmin(Elman8.Low, Elman8.High)
max_a <- pmax(Elman8.Low, Elman8.High)
polygon(c(Elman_forecast.range, rev(Elman_forecast.range)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = Elman_forecast.range, y = Elman8.High, type = "l", col = "#190879")
lines(x = Elman_forecast.range, y = Elman8.Low, type = "l", col = "#190879")
lines(data$VALUE)



date_vals = seq(1,312,3)
Dates = data$Month[date_vals]

plot(data$VALUE, type = "l",ylim = c(120,180), xlim = c(250,312), main = "CPI Test Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 253, y = 123, labels = "Test Data")
min_a <- pmin(tail(Elman8.Low, n = 62), tail(Elman8.High, n = 62))
max_a <- pmax(tail(Elman8.Low, n = 62), tail(Elman8.High, n = 62))
polygon(c(testx, rev(testx)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = testx, y = tail(Elman8.High, n = 62), type = "l", col = "#190879")
lines(x = testx, y = tail(Elman8.Low, n = 62), type = "l", col = "#190879")
lines(data$VALUE)
legend("topleft", c("Test data", "1-Step Forecast"), col = c("black", "#1b7908"), lty=1:1, cex=0.8)





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
par(mfrow = c(1,1))
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





#Jordan2
plot(data$VALUE, type = "l", ylim = c(90, 180), main = "CPI 1-Step Jordan Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 230, y = 91, labels = "Train Data")
text(x = 270, y = 91, labels = "Test Data")
min_a <- pmin(Jordan2.Low, Jordan2.High)
max_a <- pmax(Jordan2.Low, Jordan2.High)
polygon(c(Jordan_forecast.range, rev(Jordan_forecast.range)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = Jordan_forecast.range, y = Jordan2.High, type = "l", col = "#190879")
lines(x = Jordan_forecast.range, y = Jordan2.Low, type = "l", col = "#190879")
lines(data$VALUE)



date_vals = seq(1,312,3)
Dates = data$Month[date_vals]

plot(data$VALUE, type = "l",ylim = c(120,180), xlim = c(250,312), main = "CPI Test Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 253, y = 123, labels = "Test Data")
min_a <- pmin(tail(Jordan2.Low, n = 62), tail(Jordan2.High, n = 62))
max_a <- pmax(tail(Jordan2.Low, n = 62), tail(Jordan2.High, n = 62))
polygon(c(testx, rev(testx)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = testx, y = tail(Jordan2.High, n = 62), type = "l", col = "#190879")
lines(x = testx, y = tail(Jordan2.Low, n = 62), type = "l", col = "#190879")
lines(data$VALUE)





#Jordan3
plot(data$VALUE, type = "l", ylim = c(90, 180), main = "CPI 1-Step Jordan Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 230, y = 91, labels = "Train Data")
text(x = 270, y = 91, labels = "Test Data")
min_a <- pmin(Jordan3.Low, Jordan3.High)
max_a <- pmax(Jordan3.Low, Jordan3.High)
polygon(c(Jordan_forecast.range, rev(Jordan_forecast.range)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = Jordan_forecast.range, y = Jordan3.High, type = "l", col = "#190879")
lines(x = Jordan_forecast.range, y = Jordan3.Low, type = "l", col = "#190879")
lines(data$VALUE)



date_vals = seq(1,312,3)
Dates = data$Month[date_vals]

plot(data$VALUE, type = "l",ylim = c(120,180), xlim = c(250,312), main = "CPI Test Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 253, y = 123, labels = "Test Data")
min_a <- pmin(tail(Jordan3.Low, n = 62), tail(Jordan3.High, n = 62))
max_a <- pmax(tail(Jordan3.Low, n = 62), tail(Jordan3.High, n = 62))
polygon(c(testx, rev(testx)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = testx, y = tail(Jordan3.High, n = 62), type = "l", col = "#190879")
lines(x = testx, y = tail(Jordan3.Low, n = 62), type = "l", col = "#190879")
lines(data$VALUE)





#Jordan4
plot(data$VALUE, type = "l", ylim = c(90, 180), main = "CPI 1-Step Jordan Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 230, y = 91, labels = "Train Data")
text(x = 270, y = 91, labels = "Test Data")
min_a <- pmin(Jordan4.Low, Jordan4.High)
max_a <- pmax(Jordan4.Low, Jordan4.High)
polygon(c(Jordan_forecast.range, rev(Jordan_forecast.range)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = Jordan_forecast.range, y = Jordan4.High, type = "l", col = "#190879")
lines(x = Jordan_forecast.range, y = Jordan4.Low, type = "l", col = "#190879")
lines(data$VALUE)



date_vals = seq(1,312,3)
Dates = data$Month[date_vals]

plot(data$VALUE, type = "l",ylim = c(120,180), xlim = c(250,312), main = "CPI Test Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 253, y = 123, labels = "Test Data")
min_a <- pmin(tail(Jordan4.Low, n = 62), tail(Jordan4.High, n = 62))
max_a <- pmax(tail(Jordan4.Low, n = 62), tail(Jordan4.High, n = 62))
polygon(c(testx, rev(testx)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = testx, y = tail(Jordan4.High, n = 62), type = "l", col = "#190879")
lines(x = testx, y = tail(Jordan4.Low, n = 62), type = "l", col = "#190879")
lines(data$VALUE)





#Jordan5
plot(data$VALUE, type = "l", ylim = c(90, 180), main = "CPI 1-Step Jordan Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 230, y = 91, labels = "Train Data")
text(x = 270, y = 91, labels = "Test Data")
min_a <- pmin(Jordan5.Low, Jordan5.High)
max_a <- pmax(Jordan5.Low, Jordan5.High)
polygon(c(Jordan_forecast.range, rev(Jordan_forecast.range)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = Jordan_forecast.range, y = Jordan5.High, type = "l", col = "#190879")
lines(x = Jordan_forecast.range, y = Jordan5.Low, type = "l", col = "#190879")
lines(data$VALUE)



date_vals = seq(1,312,3)
Dates = data$Month[date_vals]

plot(data$VALUE, type = "l",ylim = c(120,180), xlim = c(250,312), main = "CPI Test Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 253, y = 123, labels = "Test Data")
min_a <- pmin(tail(Jordan5.Low, n = 62), tail(Jordan5.High, n = 62))
max_a <- pmax(tail(Jordan5.Low, n = 62), tail(Jordan5.High, n = 62))
polygon(c(testx, rev(testx)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = testx, y = tail(Jordan5.High, n = 62), type = "l", col = "#190879")
lines(x = testx, y = tail(Jordan5.Low, n = 62), type = "l", col = "#190879")
lines(data$VALUE)





#Jordan6
plot(data$VALUE, type = "l", ylim = c(90, 180), main = "CPI 1-Step Jordan Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 230, y = 91, labels = "Train Data")
text(x = 270, y = 91, labels = "Test Data")
min_a <- pmin(Jordan6.Low, Jordan6.High)
max_a <- pmax(Jordan6.Low, Jordan6.High)
polygon(c(Jordan_forecast.range, rev(Jordan_forecast.range)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = Jordan_forecast.range, y = Jordan6.High, type = "l", col = "#190879")
lines(x = Jordan_forecast.range, y = Jordan6.Low, type = "l", col = "#190879")
lines(data$VALUE)



date_vals = seq(1,312,3)
Dates = data$Month[date_vals]

plot(data$VALUE, type = "l",ylim = c(120,180), xlim = c(250,312), main = "CPI Test Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 253, y = 123, labels = "Test Data")
min_a <- pmin(tail(Jordan6.Low, n = 62), tail(Jordan6.High, n = 62))
max_a <- pmax(tail(Jordan6.Low, n = 62), tail(Jordan6.High, n = 62))
polygon(c(testx, rev(testx)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = testx, y = tail(Jordan6.High, n = 62), type = "l", col = "#190879")
lines(x = testx, y = tail(Jordan6.Low, n = 62), type = "l", col = "#190879")
lines(data$VALUE)





#Jordan7
plot(data$VALUE, type = "l", ylim = c(90, 180), main = "CPI 1-Step Jordan Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 230, y = 91, labels = "Train Data")
text(x = 270, y = 91, labels = "Test Data")
min_a <- pmin(Jordan7.Low, Jordan7.High)
max_a <- pmax(Jordan7.Low, Jordan7.High)
polygon(c(Jordan_forecast.range, rev(Jordan_forecast.range)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = Jordan_forecast.range, y = Jordan7.High, type = "l", col = "#190879")
lines(x = Jordan_forecast.range, y = Jordan7.Low, type = "l", col = "#190879")
lines(data$VALUE)



date_vals = seq(1,312,3)
Dates = data$Month[date_vals]

plot(data$VALUE, type = "l",ylim = c(120,180), xlim = c(250,312), main = "CPI Test Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 253, y = 123, labels = "Test Data")
min_a <- pmin(tail(Jordan7.Low, n = 62), tail(Jordan7.High, n = 62))
max_a <- pmax(tail(Jordan7.Low, n = 62), tail(Jordan7.High, n = 62))
polygon(c(testx, rev(testx)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = testx, y = tail(Jordan7.High, n = 62), type = "l", col = "#190879")
lines(x = testx, y = tail(Jordan7.Low, n = 62), type = "l", col = "#190879")
lines(data$VALUE)





#Jordan8
plot(data$VALUE, type = "l", ylim = c(90, 180), main = "CPI 1-Step Jordan Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 230, y = 91, labels = "Train Data")
text(x = 270, y = 91, labels = "Test Data")
min_a <- pmin(Jordan8.Low, Jordan8.High)
max_a <- pmax(Jordan8.Low, Jordan8.High)
polygon(c(Jordan_forecast.range, rev(Jordan_forecast.range)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = Jordan_forecast.range, y = Jordan8.High, type = "l", col = "#190879")
lines(x = Jordan_forecast.range, y = Jordan8.Low, type = "l", col = "#190879")
lines(data$VALUE)



date_vals = seq(1,312,3)
Dates = data$Month[date_vals]

plot(data$VALUE, type = "l",ylim = c(120,180), xlim = c(250,312), main = "CPI Test Forecast", xlab = "Monthly values", ylab = "CPI Values", xaxt = "n", cex = 0.7, xaxs = "i", yaxs = "i")
axis(side = 1, at = date_vals, labels = Dates)
abline(v = 250.5, lty = 2)
text(x = 253, y = 123, labels = "Test Data")
min_a <- pmin(tail(Jordan8.Low, n = 62), tail(Jordan8.High, n = 62))
max_a <- pmax(tail(Jordan8.Low, n = 62), tail(Jordan8.High, n = 62))
polygon(c(testx, rev(testx)), c(max_a ,rev(min_a)), col = "#2072c465")
lines(x = testx, y = tail(Jordan8.High, n = 62), type = "l", col = "#190879")
lines(x = testx, y = tail(Jordan8.Low, n = 62), type = "l", col = "#190879")
lines(data$VALUE)



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


mean(tail(ReCA.Accuracy), n =62)
mean(tail(Elman.Accuracy), n =62)
mean(tail(Jordan.Accuracy), n =62)


trainx = seq(1,250,1)
testx = seq(251,312,1)
data.range = seq(1,312,1)

ReCA_forecast.range = seq(6,312)
Elman_forecast.range = seq(6,312)
Jordan_forecast.range = seq(6,312)

length(ReCA_forecast.range)
length(Elman_forecast.range)
length(Jordan_forecast.range)



par(mfrow = c(1,1))
date_vals = seq(1,312,12)
Dates = data$Month[date_vals]
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



