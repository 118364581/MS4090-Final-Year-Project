# Set the working directory to the folder containing the CSV files
setwd("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Stopping Mechanism Analysis")

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





#ReCA Testing

ReCA.Test11 <- unlist(lapply(csv_data["ReCA Validation Errors, Stopping Mechanism 0.001.csv"], as.vector))
for (i in 1:length(ReCA.Test11))
    if (ReCA.Test11[i] == '#NAME?')
        ReCA.Test11[i] = NA

ReCA.Test12 <- unlist(lapply(csv_data["ReCA Validation Errors, Stopping Mechanism 0.0001.csv"], as.vector))
for (i in 1:length(ReCA.Test12))
    if (ReCA.Test12[i] == '#NAME?')
        ReCA.Test12[i] = NA

ReCA.Test13 <- unlist(lapply(csv_data["ReCA Validation Errors, Stopping Mechanism 0.00001.csv"], as.vector))
for (i in 1:length(ReCA.Test13))
    if (ReCA.Test13[i] == '#NAME?')
        ReCA.Test13[i] = NA

ReCA.Test14 <- unlist(lapply(csv_data["ReCA Validation Errors, Stopping Mechanism 0.000001.csv"], as.vector))
for (i in 1:length(ReCA.Test14))
    if (ReCA.Test14[i] == '#NAME?')
        ReCA.Test14[i] = NA

ReCA.Test15 <- unlist(lapply(csv_data["ReCA Validation Errors, Stopping Mechanism 0.0000001.csv"], as.vector))
for (i in 1:length(ReCA.Test15))
    if (ReCA.Test15[i] == '#NAME?')
        ReCA.Test15[i] = NA



ReCA.Test21 <- unlist(lapply(csv_data["ReCA Validation Errors, Stopping Mechanism 0.001, window 2.csv"], as.vector))
for (i in 1:length(ReCA.Test21))
    if (ReCA.Test21[i] == '#NAME?')
        ReCA.Test21[i] = NA

ReCA.Test22 <- unlist(lapply(csv_data["ReCA Validation Errors, Stopping Mechanism 0.0001, window 2.csv"], as.vector))
for (i in 1:length(ReCA.Test22))
    if (ReCA.Test22[i] == '#NAME?')
        ReCA.Test22[i] = NA

ReCA.Test23 <- unlist(lapply(csv_data["ReCA Validation Errors, Stopping Mechanism 0.00001, window 2.csv"], as.vector))
for (i in 1:length(ReCA.Test23))
    if (ReCA.Test23[i] == '#NAME?')
        ReCA.Test23[i] = NA

ReCA.Test24 <- unlist(lapply(csv_data["ReCA Validation Errors, Stopping Mechanism 0.000001, window 2.csv"], as.vector))
for (i in 1:length(ReCA.Test24))
    if (ReCA.Test24[i] == '#NAME?')
        ReCA.Test24[i] = NA

ReCA.Test25 <- unlist(lapply(csv_data["ReCA Validation Errors, Stopping Mechanism 0.0000001, window 2.csv"], as.vector))
for (i in 1:length(ReCA.Test25))
    if (ReCA.Test25[i] == '#NAME?')
        ReCA.Test25[i] = NA



ReCA.Test31 <- unlist(lapply(csv_data["ReCA Validation Errors, Stopping Mechanism 0.001, window 3.csv"], as.vector))
for (i in 1:length(ReCA.Test31))
    if (ReCA.Test31[i] == '#NAME?')
        ReCA.Test31[i] = NA

ReCA.Test32 <- unlist(lapply(csv_data["ReCA Validation Errors, Stopping Mechanism 0.0001, window 3.csv"], as.vector))
for (i in 1:length(ReCA.Test32))
    if (ReCA.Test32[i] == '#NAME?')
        ReCA.Test32[i] = NA

ReCA.Test33 <- unlist(lapply(csv_data["ReCA Validation Errors, Stopping Mechanism 0.00001, window 3.csv"], as.vector))
for (i in 1:length(ReCA.Test33))
    if (ReCA.Test33[i] == '#NAME?')
        ReCA.Test33[i] = NA

ReCA.Test34 <- unlist(lapply(csv_data["ReCA Validation Errors, Stopping Mechanism 0.000001, window 3.csv"], as.vector))
for (i in 1:length(ReCA.Test34))
    if (ReCA.Test34[i] == '#NAME?')
        ReCA.Test34[i] = NA

ReCA.Test35 <- unlist(lapply(csv_data["ReCA Validation Errors, Stopping Mechanism 0.0000001, window 3.csv"], as.vector))
for (i in 1:length(ReCA.Test35))
    if (ReCA.Test35[i] == '#NAME?')
        ReCA.Test35[i] = NA


ReCA.Test41 <- unlist(lapply(csv_data["ReCA Validation Errors, Stopping Mechanism 0.001, window 4.csv"], as.vector))
for (i in 1:length(ReCA.Test41))
    if (ReCA.Test41[i] == '#NAME?')
        ReCA.Test41[i] = NA

ReCA.Test42 <- unlist(lapply(csv_data["ReCA Validation Errors, Stopping Mechanism 0.0001, window 4.csv"], as.vector))
for (i in 1:length(ReCA.Test42))
    if (ReCA.Test42[i] == '#NAME?')
        ReCA.Test42[i] = NA

ReCA.Test43 <- unlist(lapply(csv_data["ReCA Validation Errors, Stopping Mechanism 0.00001, window 4.csv"], as.vector))
for (i in 1:length(ReCA.Test43))
    if (ReCA.Test43[i] == '#NAME?')
        ReCA.Test43[i] = NA

ReCA.Test44 <- unlist(lapply(csv_data["ReCA Validation Errors, Stopping Mechanism 0.000001, window 4.csv"], as.vector))
for (i in 1:length(ReCA.Test44))
    if (ReCA.Test44[i] == '#NAME?')
        ReCA.Test44[i] = NA

ReCA.Test45 <- unlist(lapply(csv_data["ReCA Validation Errors, Stopping Mechanism 0.0000001, window 4.csv"], as.vector))
for (i in 1:length(ReCA.Test45))
    if (ReCA.Test45[i] == '#NAME?')
        ReCA.Test45[i] = NA



ReCA.Test51 <- unlist(lapply(csv_data["ReCA Validation Errors, Stopping Mechanism 0.001, window 5.csv"], as.vector))
for (i in 1:length(ReCA.Test51))
    if (ReCA.Test51[i] == '#NAME?')
        ReCA.Test51[i] = NA

ReCA.Test52 <- unlist(lapply(csv_data["ReCA Validation Errors, Stopping Mechanism 0.0001, window 5.csv"], as.vector))
for (i in 1:length(ReCA.Test52))
    if (ReCA.Test52[i] == '#NAME?')
        ReCA.Test52[i] = NA

ReCA.Test53 <- unlist(lapply(csv_data["ReCA Validation Errors, Stopping Mechanism 0.00001, window 5.csv"], as.vector))
for (i in 1:length(ReCA.Test53))
    if (ReCA.Test53[i] == '#NAME?')
        ReCA.Test53[i] = NA

ReCA.Test54 <- unlist(lapply(csv_data["ReCA Validation Errors, Stopping Mechanism 0.000001, window 5.csv"], as.vector))
for (i in 1:length(ReCA.Test54))
    if (ReCA.Test54[i] == '#NAME?')
        ReCA.Test54[i] = NA

ReCA.Test55 <- unlist(lapply(csv_data["ReCA Validation Errors, Stopping Mechanism 0.0000001, window 5.csv"], as.vector))
for (i in 1:length(ReCA.Test55))
    if (ReCA.Test55[i] == '#NAME?')
        ReCA.Test55[i] = NA






ReCA.Train11 <- unlist(lapply(csv_data["ReCA Train Errors, Stopping Mechanism 0.001.csv"], as.vector))
for (i in 1:length(ReCA.Train11))
    if (ReCA.Train11[i] == '#NAME?')
        ReCA.Train11[i] = NA

ReCA.Train12 <- unlist(lapply(csv_data["ReCA Train Errors, Stopping Mechanism 0.0001.csv"], as.vector))
for (i in 1:length(ReCA.Train12))
    if (ReCA.Train12[i] == '#NAME?')
        ReCA.Train12[i] = NA

ReCA.Train13 <- unlist(lapply(csv_data["ReCA Train Errors, Stopping Mechanism 0.00001.csv"], as.vector))
for (i in 1:length(ReCA.Train13))
    if (ReCA.Train13[i] == '#NAME?')
        ReCA.Train13[i] = NA

ReCA.Train14 <- unlist(lapply(csv_data["ReCA Train Errors, Stopping Mechanism 0.000001.csv"], as.vector))
for (i in 1:length(ReCA.Train14))
    if (ReCA.Train14[i] == '#NAME?')
        ReCA.Train14[i] = NA

ReCA.Train15 <- unlist(lapply(csv_data["ReCA Train Errors, Stopping Mechanism 0.0000001.csv"], as.vector))
for (i in 1:length(ReCA.Train15))
    if (ReCA.Train15[i] == '#NAME?')
        ReCA.Train15[i] = NA




ReCA.Train21 <- unlist(lapply(csv_data["ReCA Train Errors, Stopping Mechanism 0.001, window 2.csv"], as.vector))
for (i in 1:length(ReCA.Train21))
    if (ReCA.Train21[i] == '#NAME?')
        ReCA.Train21[i] = NA

ReCA.Train22 <- unlist(lapply(csv_data["ReCA Train Errors, Stopping Mechanism 0.0001, window 2.csv"], as.vector))
for (i in 1:length(ReCA.Train22))
    if (ReCA.Train22[i] == '#NAME?')
        ReCA.Train22[i] = NA

ReCA.Train23 <- unlist(lapply(csv_data["ReCA Train Errors, Stopping Mechanism 0.00001, window 2.csv"], as.vector))
for (i in 1:length(ReCA.Train23))
    if (ReCA.Train23[i] == '#NAME?')
        ReCA.Train23[i] = NA

ReCA.Train24 <- unlist(lapply(csv_data["ReCA Train Errors, Stopping Mechanism 0.000001, window 2.csv"], as.vector))
for (i in 1:length(ReCA.Train24))
    if (ReCA.Train24[i] == '#NAME?')
        ReCA.Train24[i] = NA

ReCA.Train25 <- unlist(lapply(csv_data["ReCA Train Errors, Stopping Mechanism 0.0000001, window 2.csv"], as.vector))
for (i in 1:length(ReCA.Train25))
    if (ReCA.Train25[i] == '#NAME?')
        ReCA.Train25[i] = NA


ReCA.Train31 <- unlist(lapply(csv_data["ReCA Train Errors, Stopping Mechanism 0.001, window 3.csv"], as.vector))
for (i in 1:length(ReCA.Train31))
    if (ReCA.Train31[i] == '#NAME?')
        ReCA.Train31[i] = NA

ReCA.Train32 <- unlist(lapply(csv_data["ReCA Train Errors, Stopping Mechanism 0.0001, window 3.csv"], as.vector))
for (i in 1:length(ReCA.Train32))
    if (ReCA.Train32[i] == '#NAME?')
        ReCA.Train32[i] = NA

ReCA.Train33 <- unlist(lapply(csv_data["ReCA Train Errors, Stopping Mechanism 0.00001, window 3.csv"], as.vector))
for (i in 1:length(ReCA.Train33))
    if (ReCA.Train33[i] == '#NAME?')
        ReCA.Train33[i] = NA

ReCA.Train34 <- unlist(lapply(csv_data["ReCA Train Errors, Stopping Mechanism 0.000001, window 3.csv"], as.vector))
for (i in 1:length(ReCA.Train34))
    if (ReCA.Train34[i] == '#NAME?')
        ReCA.Train34[i] = NA

ReCA.Train35 <- unlist(lapply(csv_data["ReCA Train Errors, Stopping Mechanism 0.0000001, window 3.csv"], as.vector))
for (i in 1:length(ReCA.Train35))
    if (ReCA.Train35[i] == '#NAME?')
        ReCA.Train35[i] = NA


ReCA.Train41 <- unlist(lapply(csv_data["ReCA Train Errors, Stopping Mechanism 0.001, window 4.csv"], as.vector))
for (i in 1:length(ReCA.Train41))
    if (ReCA.Train41[i] == '#NAME?')
        ReCA.Train41[i] = NA

ReCA.Train42 <- unlist(lapply(csv_data["ReCA Train Errors, Stopping Mechanism 0.0001, window 4.csv"], as.vector))
for (i in 1:length(ReCA.Train42))
    if (ReCA.Train42[i] == '#NAME?')
        ReCA.Train42[i] = NA

ReCA.Train43 <- unlist(lapply(csv_data["ReCA Train Errors, Stopping Mechanism 0.00001, window 4.csv"], as.vector))
for (i in 1:length(ReCA.Train43))
    if (ReCA.Train43[i] == '#NAME?')
        ReCA.Train43[i] = NA

ReCA.Train44 <- unlist(lapply(csv_data["ReCA Train Errors, Stopping Mechanism 0.000001, window 4.csv"], as.vector))
for (i in 1:length(ReCA.Train44))
    if (ReCA.Train44[i] == '#NAME?')
        ReCA.Train44[i] = NA

ReCA.Train45 <- unlist(lapply(csv_data["ReCA Train Errors, Stopping Mechanism 0.0000001, window 4.csv"], as.vector))
for (i in 1:length(ReCA.Train45))
    if (ReCA.Train45[i] == '#NAME?')
        ReCA.Train45[i] = NA



ReCA.Train51 <- unlist(lapply(csv_data["ReCA Train Errors, Stopping Mechanism 0.001, window 5.csv"], as.vector))
for (i in 1:length(ReCA.Train51))
    if (ReCA.Train51[i] == '#NAME?')
        ReCA.Train51[i] = NA

ReCA.Train52 <- unlist(lapply(csv_data["ReCA Train Errors, Stopping Mechanism 0.0001, window 5.csv"], as.vector))
for (i in 1:length(ReCA.Train52))
    if (ReCA.Train52[i] == '#NAME?')
        ReCA.Train52[i] = NA

ReCA.Train53 <- unlist(lapply(csv_data["ReCA Train Errors, Stopping Mechanism 0.00001, window 5.csv"], as.vector))
for (i in 1:length(ReCA.Train53))
    if (ReCA.Train53[i] == '#NAME?')
        ReCA.Train53[i] = NA

ReCA.Train54 <- unlist(lapply(csv_data["ReCA Train Errors, Stopping Mechanism 0.000001, window 5.csv"], as.vector))
for (i in 1:length(ReCA.Train54))
    if (ReCA.Train54[i] == '#NAME?')
        ReCA.Train54[i] = NA

ReCA.Train55 <- unlist(lapply(csv_data["ReCA Train Errors, Stopping Mechanism 0.0000001, window 5.csv"], as.vector))
for (i in 1:length(ReCA.Train55))
    if (ReCA.Train55[i] == '#NAME?')
        ReCA.Train55[i] = NA










par(mfrow = c(1,5))

boxplot(ReCA.Test11, ReCA.Test12, ReCA.Test13, ReCA.Test14, ReCA.Test15, ylim = c(0, 1))
boxplot(ReCA.Test21, ReCA.Test22, ReCA.Test23, ReCA.Test24, ReCA.Test25, ylim = c(0, 1))
boxplot(ReCA.Test31, ReCA.Test32, ReCA.Test33, ReCA.Test34, ReCA.Test35, ylim = c(0, 1))
boxplot(ReCA.Test41, ReCA.Test42, ReCA.Test43, ReCA.Test44, ReCA.Test45, ylim = c(0, 1))
boxplot(ReCA.Test51, ReCA.Test52, ReCA.Test53, ReCA.Test54, ReCA.Test55, ylim = c(0, 1))


quantile(ReCA.Test11,0.95) - quantile(ReCA.Test11,0.05)
quantile(ReCA.Test12,0.95) - quantile(ReCA.Test12,0.05)
quantile(ReCA.Test13,0.95) - quantile(ReCA.Test13,0.05)
quantile(ReCA.Test14,0.95) - quantile(ReCA.Test14,0.05)

quantile(ReCA.Test21,0.95) - quantile(ReCA.Test21,0.05)
quantile(ReCA.Test22,0.95) - quantile(ReCA.Test22,0.05)
quantile(ReCA.Test23,0.95) - quantile(ReCA.Test23,0.05)
quantile(ReCA.Test24,0.95) - quantile(ReCA.Test24,0.05)

quantile(ReCA.Test31,0.95) - quantile(ReCA.Test31,0.05)
quantile(ReCA.Test32,0.95) - quantile(ReCA.Test32,0.05)
quantile(ReCA.Test33,0.95) - quantile(ReCA.Test33,0.05)
quantile(ReCA.Test34,0.95) - quantile(ReCA.Test34,0.05)

quantile(ReCA.Test41,0.95) - quantile(ReCA.Test41,0.05)
quantile(ReCA.Test42,0.95) - quantile(ReCA.Test42,0.05)
quantile(ReCA.Test43,0.95) - quantile(ReCA.Test43,0.05)
quantile(ReCA.Test44,0.95) - quantile(ReCA.Test44,0.05)

quantile(ReCA.Test51,0.95) - quantile(ReCA.Test51,0.05)
quantile(ReCA.Test52,0.95) - quantile(ReCA.Test52,0.05)
quantile(ReCA.Test53,0.95) - quantile(ReCA.Test53,0.05)
quantile(ReCA.Test54,0.95) - quantile(ReCA.Test54,0.05)


par(mfrow = c(1,4))
hist(ReCA.Test11)
hist(ReCA.Test12)
hist(ReCA.Test13)
hist(ReCA.Test14)

hist(ReCA.Test21)
hist(ReCA.Test22)
hist(ReCA.Test23)
hist(ReCA.Test24)

hist(ReCA.Test31)
hist(ReCA.Test32)
hist(ReCA.Test33)
hist(ReCA.Test34)

hist(ReCA.Test41)
hist(ReCA.Test42)
hist(ReCA.Test43)
hist(ReCA.Test44)

hist(ReCA.Test51)
hist(ReCA.Test52)
hist(ReCA.Test53)
hist(ReCA.Test54)





#Elman Testing

Elman.Test11 <- unlist(lapply(csv_data["Elman Validation Errors, Stopping Mechanism 0.001.csv"], as.vector))
for (i in 1:length(Elman.Test11))
    if (Elman.Test11[i] == '#NAME?')
        Elman.Test11[i] = NA

Elman.Test12 <- unlist(lapply(csv_data["Elman Validation Errors, Stopping Mechanism 0.0001.csv"], as.vector))
for (i in 1:length(Elman.Test12))
    if (Elman.Test12[i] == '#NAME?')
        Elman.Test12[i] = NA

Elman.Test13 <- unlist(lapply(csv_data["Elman Validation Errors, Stopping Mechanism 0.00001.csv"], as.vector))
for (i in 1:length(Elman.Test13))
    if (Elman.Test13[i] == '#NAME?')
        Elman.Test13[i] = NA

Elman.Test14 <- unlist(lapply(csv_data["Elman Validation Errors, Stopping Mechanism 0.000001.csv"], as.vector))
for (i in 1:length(Elman.Test14))
    if (Elman.Test14[i] == '#NAME?')
        Elman.Test14[i] = NA

Elman.Test15 <- unlist(lapply(csv_data["Elman Validation Errors, Stopping Mechanism 0.0000001.csv"], as.vector))
for (i in 1:length(Elman.Test15))
    if (Elman.Test15[i] == '#NAME?')
        Elman.Test15[i] = NA


Elman.Test21 <- unlist(lapply(csv_data["Elman Validation Errors, Stopping Mechanism 0.001, window 2.csv"], as.vector))
for (i in 1:length(Elman.Test21))
    if (Elman.Test21[i] == '#NAME?')
        Elman.Test21[i] = NA

Elman.Test22 <- unlist(lapply(csv_data["Elman Validation Errors, Stopping Mechanism 0.0001, window 2.csv"], as.vector))
for (i in 1:length(Elman.Test22))
    if (Elman.Test22[i] == '#NAME?')
        Elman.Test22[i] = NA

Elman.Test23 <- unlist(lapply(csv_data["Elman Validation Errors, Stopping Mechanism 0.00001, window 2.csv"], as.vector))
for (i in 1:length(Elman.Test23))
    if (Elman.Test23[i] == '#NAME?')
        Elman.Test23[i] = NA

Elman.Test24 <- unlist(lapply(csv_data["Elman Validation Errors, Stopping Mechanism 0.000001, window 2.csv"], as.vector))
for (i in 1:length(Elman.Test24))
    if (Elman.Test24[i] == '#NAME?')
        Elman.Test24[i] = NA



Elman.Test31 <- unlist(lapply(csv_data["Elman Validation Errors, Stopping Mechanism 0.001, window 3.csv"], as.vector))
for (i in 1:length(Elman.Test31))
    if (Elman.Test31[i] == '#NAME?')
        Elman.Test31[i] = NA

Elman.Test32 <- unlist(lapply(csv_data["Elman Validation Errors, Stopping Mechanism 0.0001, window 3.csv"], as.vector))
for (i in 1:length(Elman.Test32))
    if (Elman.Test32[i] == '#NAME?')
        Elman.Test32[i] = NA

Elman.Test33 <- unlist(lapply(csv_data["Elman Validation Errors, Stopping Mechanism 0.00001, window 3.csv"], as.vector))
for (i in 1:length(Elman.Test33))
    if (Elman.Test33[i] == '#NAME?')
        Elman.Test33[i] = NA

Elman.Test34 <- unlist(lapply(csv_data["Elman Validation Errors, Stopping Mechanism 0.000001, window 3.csv"], as.vector))
for (i in 1:length(Elman.Test34))
    if (Elman.Test34[i] == '#NAME?')
        Elman.Test34[i] = NA



Elman.Test41 <- unlist(lapply(csv_data["Elman Validation Errors, Stopping Mechanism 0.001, window 4.csv"], as.vector))
for (i in 1:length(Elman.Test41))
    if (Elman.Test41[i] == '#NAME?')
        Elman.Test41[i] = NA

Elman.Test42 <- unlist(lapply(csv_data["Elman Validation Errors, Stopping Mechanism 0.0001, window 4.csv"], as.vector))
for (i in 1:length(Elman.Test42))
    if (Elman.Test42[i] == '#NAME?')
        Elman.Test42[i] = NA

Elman.Test43 <- unlist(lapply(csv_data["Elman Validation Errors, Stopping Mechanism 0.00001, window 4.csv"], as.vector))
for (i in 1:length(Elman.Test43))
    if (Elman.Test43[i] == '#NAME?')
        Elman.Test43[i] = NA

Elman.Test44 <- unlist(lapply(csv_data["Elman Validation Errors, Stopping Mechanism 0.000001, window 4.csv"], as.vector))
for (i in 1:length(Elman.Test44))
    if (Elman.Test44[i] == '#NAME?')
        Elman.Test44[i] = NA



Elman.Test51 <- unlist(lapply(csv_data["Elman Validation Errors, Stopping Mechanism 0.001, window 5.csv"], as.vector))
for (i in 1:length(Elman.Test51))
    if (Elman.Test51[i] == '#NAME?')
        Elman.Test51[i] = NA

Elman.Test52 <- unlist(lapply(csv_data["Elman Validation Errors, Stopping Mechanism 0.0001, window 5.csv"], as.vector))
for (i in 1:length(Elman.Test52))
    if (Elman.Test52[i] == '#NAME?')
        Elman.Test52[i] = NA

Elman.Test53 <- unlist(lapply(csv_data["Elman Validation Errors, Stopping Mechanism 0.00001, window 5.csv"], as.vector))
for (i in 1:length(Elman.Test53))
    if (Elman.Test53[i] == '#NAME?')
        Elman.Test53[i] = NA

Elman.Test54 <- unlist(lapply(csv_data["Elman Validation Errors, Stopping Mechanism 0.000001, window 5.csv"], as.vector))
for (i in 1:length(Elman.Test54))
    if (Elman.Test54[i] == '#NAME?')
        Elman.Test54[i] = NA






Elman.Train11 <- unlist(lapply(csv_data["Elman Train Errors, Stopping Mechanism 0.001.csv"], as.vector))
for (i in 1:length(Elman.Train11))
    if (Elman.Train11[i] == '#NAME?')
        Elman.Train11[i] = NA

Elman.Train12 <- unlist(lapply(csv_data["Elman Train Errors, Stopping Mechanism 0.0001.csv"], as.vector))
for (i in 1:length(Elman.Train12))
    if (Elman.Train12[i] == '#NAME?')
        Elman.Train12[i] = NA

Elman.Train13 <- unlist(lapply(csv_data["Elman Train Errors, Stopping Mechanism 0.00001.csv"], as.vector))
for (i in 1:length(Elman.Train13))
    if (Elman.Train13[i] == '#NAME?')
        Elman.Train13[i] = NA

Elman.Train14 <- unlist(lapply(csv_data["Elman Train Errors, Stopping Mechanism 0.000001.csv"], as.vector))
for (i in 1:length(Elman.Train14))
    if (Elman.Train14[i] == '#NAME?')
        Elman.Train14[i] = NA

Elman.Train15 <- unlist(lapply(csv_data["Elman Train Errors, Stopping Mechanism 0.0000001.csv"], as.vector))
for (i in 1:length(Elman.Train15))
    if (Elman.Train15[i] == '#NAME?')
        Elman.Train15[i] = NA


Elman.Train21 <- unlist(lapply(csv_data["Elman Train Errors, Stopping Mechanism 0.001, window 2.csv"], as.vector))
for (i in 1:length(Elman.Train21))
    if (Elman.Train21[i] == '#NAME?')
        Elman.Train21[i] = NA

Elman.Train22 <- unlist(lapply(csv_data["Elman Train Errors, Stopping Mechanism 0.0001, window 2.csv"], as.vector))
for (i in 1:length(Elman.Train22))
    if (Elman.Train22[i] == '#NAME?')
        Elman.Train22[i] = NA

Elman.Train23 <- unlist(lapply(csv_data["Elman Train Errors, Stopping Mechanism 0.00001, window 2.csv"], as.vector))
for (i in 1:length(Elman.Train23))
    if (Elman.Train23[i] == '#NAME?')
        Elman.Train23[i] = NA

Elman.Train24 <- unlist(lapply(csv_data["Elman Train Errors, Stopping Mechanism 0.000001, window 2.csv"], as.vector))
for (i in 1:length(Elman.Train24))
    if (Elman.Train24[i] == '#NAME?')
        Elman.Train24[i] = NA



Elman.Train31 <- unlist(lapply(csv_data["Elman Train Errors, Stopping Mechanism 0.001, window 3.csv"], as.vector))
for (i in 1:length(Elman.Train31))
    if (Elman.Train31[i] == '#NAME?')
        Elman.Train31[i] = NA

Elman.Train32 <- unlist(lapply(csv_data["Elman Train Errors, Stopping Mechanism 0.0001, window 3.csv"], as.vector))
for (i in 1:length(Elman.Train32))
    if (Elman.Train32[i] == '#NAME?')
        Elman.Train32[i] = NA

Elman.Train33 <- unlist(lapply(csv_data["Elman Train Errors, Stopping Mechanism 0.00001, window 3.csv"], as.vector))
for (i in 1:length(Elman.Train33))
    if (Elman.Train33[i] == '#NAME?')
        Elman.Train33[i] = NA

Elman.Train34 <- unlist(lapply(csv_data["Elman Train Errors, Stopping Mechanism 0.000001, window 3.csv"], as.vector))
for (i in 1:length(Elman.Train34))
    if (Elman.Train34[i] == '#NAME?')
        Elman.Train34[i] = NA



Elman.Train41 <- unlist(lapply(csv_data["Elman Train Errors, Stopping Mechanism 0.001, window 4.csv"], as.vector))
for (i in 1:length(Elman.Train41))
    if (Elman.Train41[i] == '#NAME?')
        Elman.Train41[i] = NA

Elman.Train42 <- unlist(lapply(csv_data["Elman Train Errors, Stopping Mechanism 0.0001, window 4.csv"], as.vector))
for (i in 1:length(Elman.Train42))
    if (Elman.Train42[i] == '#NAME?')
        Elman.Train42[i] = NA

Elman.Train43 <- unlist(lapply(csv_data["Elman Train Errors, Stopping Mechanism 0.00001, window 4.csv"], as.vector))
for (i in 1:length(Elman.Train43))
    if (Elman.Train43[i] == '#NAME?')
        Elman.Train43[i] = NA

Elman.Train44 <- unlist(lapply(csv_data["Elman Train Errors, Stopping Mechanism 0.000001, window 4.csv"], as.vector))
for (i in 1:length(Elman.Train44))
    if (Elman.Train44[i] == '#NAME?')
        Elman.Train44[i] = NA



Elman.Train51 <- unlist(lapply(csv_data["Elman Train Errors, Stopping Mechanism 0.001, window 5.csv"], as.vector))
for (i in 1:length(Elman.Train51))
    if (Elman.Train51[i] == '#NAME?')
        Elman.Train51[i] = NA

Elman.Train52 <- unlist(lapply(csv_data["Elman Train Errors, Stopping Mechanism 0.0001, window 5.csv"], as.vector))
for (i in 1:length(Elman.Train52))
    if (Elman.Train52[i] == '#NAME?')
        Elman.Train52[i] = NA

Elman.Train53 <- unlist(lapply(csv_data["Elman Train Errors, Stopping Mechanism 0.00001, window 5.csv"], as.vector))
for (i in 1:length(Elman.Train53))
    if (Elman.Train53[i] == '#NAME?')
        Elman.Train53[i] = NA

Elman.Train54 <- unlist(lapply(csv_data["Elman Train Errors, Stopping Mechanism 0.000001, window 5.csv"], as.vector))
for (i in 1:length(Elman.Train54))
    if (Elman.Train54[i] == '#NAME?')
        Elman.Train54[i] = NA




summary(Elman.Test11)




par(mfrow = c(1,5))

boxplot(Elman.Test11, Elman.Test12, Elman.Test13, Elman.Test14, Elman.Test15, ylim = c(0, 1))
boxplot(Elman.Test21, Elman.Test22, Elman.Test23, Elman.Test24, ylim = c(0, 1))
boxplot(Elman.Test31, Elman.Test32, Elman.Test33, Elman.Test34, ylim = c(0, 1))
boxplot(Elman.Test41, Elman.Test42, Elman.Test43, Elman.Test44, ylim = c(0, 1))
boxplot(Elman.Test51, Elman.Test52, Elman.Test53, Elman.Test54, ylim = c(0, 1))


quantile(Elman.Test11,0.95) - quantile(Elman.Test11,0.05)
quantile(Elman.Test12,0.95) - quantile(Elman.Test12,0.05)
quantile(Elman.Test13,0.95) - quantile(Elman.Test13,0.05)
quantile(Elman.Test14,0.95) - quantile(Elman.Test14,0.05)

quantile(Elman.Test21,0.95) - quantile(Elman.Test21,0.05)
quantile(Elman.Test22,0.95) - quantile(Elman.Test22,0.05)
quantile(Elman.Test23,0.95) - quantile(Elman.Test23,0.05)
quantile(Elman.Test24,0.95) - quantile(Elman.Test24,0.05)

quantile(Elman.Test31,0.95) - quantile(Elman.Test31,0.05)
quantile(Elman.Test32,0.95) - quantile(Elman.Test32,0.05)
quantile(Elman.Test33,0.95) - quantile(Elman.Test33,0.05)
quantile(Elman.Test34,0.95) - quantile(Elman.Test34,0.05)

quantile(Elman.Test41,0.95) - quantile(Elman.Test41,0.05)
quantile(Elman.Test42,0.95) - quantile(Elman.Test42,0.05)
quantile(Elman.Test43,0.95) - quantile(Elman.Test43,0.05)
quantile(Elman.Test44,0.95) - quantile(Elman.Test44,0.05)

quantile(Elman.Test51,0.95) - quantile(Elman.Test51,0.05)
quantile(Elman.Test52,0.95) - quantile(Elman.Test52,0.05)
quantile(Elman.Test53,0.95) - quantile(Elman.Test53,0.05)
quantile(Elman.Test54,0.95) - quantile(Elman.Test54,0.05)


par(mfrow = c(1,4))
hist(Elman.Test11)
hist(Elman.Test12)
hist(Elman.Test13)
hist(Elman.Test14)

hist(Elman.Test21)
hist(Elman.Test22)
hist(Elman.Test23)
hist(Elman.Test24)

hist(Elman.Test31)
hist(Elman.Test32)
hist(Elman.Test33)
hist(Elman.Test34)

hist(Elman.Test41)
hist(Elman.Test42)
hist(Elman.Test43)
hist(Elman.Test44)

hist(Elman.Test51)
hist(Elman.Test52)
hist(Elman.Test53)
hist(Elman.Test54)




#Jordan Testing

Jordan.Test11 <- unlist(lapply(csv_data["Jordan Validation Errors, Stopping Mechanism 0.001.csv"], as.vector))
for (i in 1:length(Jordan.Test11))
    if (Jordan.Test11[i] == '#NAME?')
        Jordan.Test11[i] = NA

Jordan.Test12 <- unlist(lapply(csv_data["Jordan Validation Errors, Stopping Mechanism 0.0001.csv"], as.vector))
for (i in 1:length(Jordan.Test12))
    if (Jordan.Test12[i] == '#NAME?')
        Jordan.Test12[i] = NA

Jordan.Test13 <- unlist(lapply(csv_data["Jordan Validation Errors, Stopping Mechanism 0.00001.csv"], as.vector))
for (i in 1:length(Jordan.Test13))
    if (Jordan.Test13[i] == '#NAME?')
        Jordan.Test13[i] = NA

Jordan.Test14 <- unlist(lapply(csv_data["Jordan Validation Errors, Stopping Mechanism 0.000001.csv"], as.vector))
for (i in 1:length(Jordan.Test14))
    if (Jordan.Test14[i] == '#NAME?')
        Jordan.Test14[i] = NA

Jordan.Test15 <- unlist(lapply(csv_data["Jordan Validation Errors, Stopping Mechanism 0.0000001.csv"], as.vector))
for (i in 1:length(Jordan.Test15))
    if (Jordan.Test15[i] == '#NAME?')
        Jordan.Test15[i] = NA


Jordan.Test21 <- unlist(lapply(csv_data["Jordan Validation Errors, Stopping Mechanism 0.001, window 2.csv"], as.vector))
for (i in 1:length(Jordan.Test21))
    if (Jordan.Test21[i] == '#NAME?')
        Jordan.Test21[i] = NA

Jordan.Test22 <- unlist(lapply(csv_data["Jordan Validation Errors, Stopping Mechanism 0.0001, window 2.csv"], as.vector))
for (i in 1:length(Jordan.Test22))
    if (Jordan.Test22[i] == '#NAME?')
        Jordan.Test22[i] = NA

Jordan.Test23 <- unlist(lapply(csv_data["Jordan Validation Errors, Stopping Mechanism 0.00001, window 2.csv"], as.vector))
for (i in 1:length(Jordan.Test23))
    if (Jordan.Test23[i] == '#NAME?')
        Jordan.Test23[i] = NA

Jordan.Test24 <- unlist(lapply(csv_data["Jordan Validation Errors, Stopping Mechanism 0.000001, window 2.csv"], as.vector))
for (i in 1:length(Jordan.Test24))
    if (Jordan.Test24[i] == '#NAME?')
        Jordan.Test24[i] = NA



Jordan.Test31 <- unlist(lapply(csv_data["Jordan Validation Errors, Stopping Mechanism 0.001, window 3.csv"], as.vector))
for (i in 1:length(Jordan.Test31))
    if (Jordan.Test31[i] == '#NAME?')
        Jordan.Test31[i] = NA

Jordan.Test32 <- unlist(lapply(csv_data["Jordan Validation Errors, Stopping Mechanism 0.0001, window 3.csv"], as.vector))
for (i in 1:length(Jordan.Test32))
    if (Jordan.Test32[i] == '#NAME?')
        Jordan.Test32[i] = NA

Jordan.Test33 <- unlist(lapply(csv_data["Jordan Validation Errors, Stopping Mechanism 0.00001, window 3.csv"], as.vector))
for (i in 1:length(Jordan.Test33))
    if (Jordan.Test33[i] == '#NAME?')
        Jordan.Test33[i] = NA

Jordan.Test34 <- unlist(lapply(csv_data["Jordan Validation Errors, Stopping Mechanism 0.000001, window 3.csv"], as.vector))
for (i in 1:length(Jordan.Test34))
    if (Jordan.Test34[i] == '#NAME?')
        Jordan.Test34[i] = NA



Jordan.Test41 <- unlist(lapply(csv_data["Jordan Validation Errors, Stopping Mechanism 0.001, window 4.csv"], as.vector))
for (i in 1:length(Jordan.Test41))
    if (Jordan.Test41[i] == '#NAME?')
        Jordan.Test41[i] = NA

Jordan.Test42 <- unlist(lapply(csv_data["Jordan Validation Errors, Stopping Mechanism 0.0001, window 4.csv"], as.vector))
for (i in 1:length(Jordan.Test42))
    if (Jordan.Test42[i] == '#NAME?')
        Jordan.Test42[i] = NA

Jordan.Test43 <- unlist(lapply(csv_data["Jordan Validation Errors, Stopping Mechanism 0.00001, window 4.csv"], as.vector))
for (i in 1:length(Jordan.Test43))
    if (Jordan.Test43[i] == '#NAME?')
        Jordan.Test43[i] = NA

Jordan.Test44 <- unlist(lapply(csv_data["Jordan Validation Errors, Stopping Mechanism 0.000001, window 4.csv"], as.vector))
for (i in 1:length(Jordan.Test44))
    if (Jordan.Test44[i] == '#NAME?')
        Jordan.Test44[i] = NA



Jordan.Test51 <- unlist(lapply(csv_data["Jordan Validation Errors, Stopping Mechanism 0.001, window 5.csv"], as.vector))
for (i in 1:length(Jordan.Test51))
    if (Jordan.Test51[i] == '#NAME?')
        Jordan.Test51[i] = NA

Jordan.Test52 <- unlist(lapply(csv_data["Jordan Validation Errors, Stopping Mechanism 0.0001, window 5.csv"], as.vector))
for (i in 1:length(Jordan.Test52))
    if (Jordan.Test52[i] == '#NAME?')
        Jordan.Test52[i] = NA

Jordan.Test53 <- unlist(lapply(csv_data["Jordan Validation Errors, Stopping Mechanism 0.00001, window 5.csv"], as.vector))
for (i in 1:length(Jordan.Test53))
    if (Jordan.Test53[i] == '#NAME?')
        Jordan.Test53[i] = NA

Jordan.Test54 <- unlist(lapply(csv_data["Jordan Validation Errors, Stopping Mechanism 0.000001, window 5.csv"], as.vector))
for (i in 1:length(Jordan.Test54))
    if (Jordan.Test54[i] == '#NAME?')
        Jordan.Test54[i] = NA






Jordan.Train11 <- unlist(lapply(csv_data["Jordan Train Errors, Stopping Mechanism 0.001.csv"], as.vector))
for (i in 1:length(Jordan.Train11))
    if (Jordan.Train11[i] == '#NAME?')
        Jordan.Train11[i] = NA

Jordan.Train12 <- unlist(lapply(csv_data["Jordan Train Errors, Stopping Mechanism 0.0001.csv"], as.vector))
for (i in 1:length(Jordan.Train12))
    if (Jordan.Train12[i] == '#NAME?')
        Jordan.Train12[i] = NA

Jordan.Train13 <- unlist(lapply(csv_data["Jordan Train Errors, Stopping Mechanism 0.00001.csv"], as.vector))
for (i in 1:length(Jordan.Train13))
    if (Jordan.Train13[i] == '#NAME?')
        Jordan.Train13[i] = NA

Jordan.Train14 <- unlist(lapply(csv_data["Jordan Train Errors, Stopping Mechanism 0.000001.csv"], as.vector))
for (i in 1:length(Jordan.Train14))
    if (Jordan.Train14[i] == '#NAME?')
        Jordan.Train14[i] = NA

Jordan.Train15 <- unlist(lapply(csv_data["Jordan Train Errors, Stopping Mechanism 0.0000001.csv"], as.vector))
for (i in 1:length(Jordan.Train15))
    if (Jordan.Train15[i] == '#NAME?')
        Jordan.Train15[i] = NA




Jordan.Train21 <- unlist(lapply(csv_data["Jordan Train Errors, Stopping Mechanism 0.001, window 2.csv"], as.vector))
for (i in 1:length(Jordan.Train21))
    if (Jordan.Train21[i] == '#NAME?')
        Jordan.Train21[i] = NA

Jordan.Train22 <- unlist(lapply(csv_data["Jordan Train Errors, Stopping Mechanism 0.0001, window 2.csv"], as.vector))
for (i in 1:length(Jordan.Train22))
    if (Jordan.Train22[i] == '#NAME?')
        Jordan.Train22[i] = NA

Jordan.Train23 <- unlist(lapply(csv_data["Jordan Train Errors, Stopping Mechanism 0.00001, window 2.csv"], as.vector))
for (i in 1:length(Jordan.Train23))
    if (Jordan.Train23[i] == '#NAME?')
        Jordan.Train23[i] = NA

Jordan.Train24 <- unlist(lapply(csv_data["Jordan Train Errors, Stopping Mechanism 0.000001, window 2.csv"], as.vector))
for (i in 1:length(Jordan.Train24))
    if (Jordan.Train24[i] == '#NAME?')
        Jordan.Train24[i] = NA



Jordan.Train31 <- unlist(lapply(csv_data["Jordan Train Errors, Stopping Mechanism 0.001, window 3.csv"], as.vector))
for (i in 1:length(Jordan.Train31))
    if (Jordan.Train31[i] == '#NAME?')
        Jordan.Train31[i] = NA

Jordan.Train32 <- unlist(lapply(csv_data["Jordan Train Errors, Stopping Mechanism 0.0001, window 3.csv"], as.vector))
for (i in 1:length(Jordan.Train32))
    if (Jordan.Train32[i] == '#NAME?')
        Jordan.Train32[i] = NA

Jordan.Train33 <- unlist(lapply(csv_data["Jordan Train Errors, Stopping Mechanism 0.00001, window 3.csv"], as.vector))
for (i in 1:length(Jordan.Train33))
    if (Jordan.Train33[i] == '#NAME?')
        Jordan.Train33[i] = NA

Jordan.Train34 <- unlist(lapply(csv_data["Jordan Train Errors, Stopping Mechanism 0.000001, window 3.csv"], as.vector))
for (i in 1:length(Jordan.Train34))
    if (Jordan.Train34[i] == '#NAME?')
        Jordan.Train34[i] = NA



Jordan.Train41 <- unlist(lapply(csv_data["Jordan Train Errors, Stopping Mechanism 0.001, window 4.csv"], as.vector))
for (i in 1:length(Jordan.Train41))
    if (Jordan.Train41[i] == '#NAME?')
        Jordan.Train41[i] = NA

Jordan.Train42 <- unlist(lapply(csv_data["Jordan Train Errors, Stopping Mechanism 0.0001, window 4.csv"], as.vector))
for (i in 1:length(Jordan.Train42))
    if (Jordan.Train42[i] == '#NAME?')
        Jordan.Train42[i] = NA

Jordan.Train43 <- unlist(lapply(csv_data["Jordan Train Errors, Stopping Mechanism 0.00001, window 4.csv"], as.vector))
for (i in 1:length(Jordan.Train43))
    if (Jordan.Train43[i] == '#NAME?')
        Jordan.Train43[i] = NA

Jordan.Train44 <- unlist(lapply(csv_data["Jordan Train Errors, Stopping Mechanism 0.000001, window 4.csv"], as.vector))
for (i in 1:length(Jordan.Train44))
    if (Jordan.Train44[i] == '#NAME?')
        Jordan.Train44[i] = NA



Jordan.Train51 <- unlist(lapply(csv_data["Jordan Train Errors, Stopping Mechanism 0.001, window 5.csv"], as.vector))
for (i in 1:length(Jordan.Train51))
    if (Jordan.Train51[i] == '#NAME?')
        Jordan.Train51[i] = NA

Jordan.Train52 <- unlist(lapply(csv_data["Jordan Train Errors, Stopping Mechanism 0.0001, window 5.csv"], as.vector))
for (i in 1:length(Jordan.Train52))
    if (Jordan.Train52[i] == '#NAME?')
        Jordan.Train52[i] = NA

Jordan.Train53 <- unlist(lapply(csv_data["Jordan Train Errors, Stopping Mechanism 0.00001, window 5.csv"], as.vector))
for (i in 1:length(Jordan.Train53))
    if (Jordan.Train53[i] == '#NAME?')
        Jordan.Train53[i] = NA

Jordan.Train54 <- unlist(lapply(csv_data["Jordan Train Errors, Stopping Mechanism 0.000001, window 5.csv"], as.vector))
for (i in 1:length(Jordan.Train54))
    if (Jordan.Train54[i] == '#NAME?')
        Jordan.Train54[i] = NA




par(mfrow = c(1,3))

boxplot(Jordan.Test11, Jordan.Test12, Jordan.Test13, Jordan.Test14, ylim = c(0, 2))
boxplot(Jordan.Test21, Jordan.Test22, Jordan.Test23, Jordan.Test24, ylim = c(0, 2))
boxplot(Jordan.Test31, Jordan.Test32, Jordan.Test33, Jordan.Test34, ylim = c(0, 2))
boxplot(Jordan.Test41, Jordan.Test42, Jordan.Test43, Jordan.Test44, ylim = c(0, 2))
boxplot(Jordan.Test51, Jordan.Test52, Jordan.Test53, Jordan.Test54, ylim = c(0, 2))


quantile(Jordan.Test11,0.95) - quantile(Jordan.Test11,0.05)
quantile(Jordan.Test12,0.95) - quantile(Jordan.Test12,0.05)
quantile(Jordan.Test13,0.95) - quantile(Jordan.Test13,0.05)
quantile(Jordan.Test14,0.95) - quantile(Jordan.Test14,0.05)

quantile(Jordan.Test21,0.95) - quantile(Jordan.Test21,0.05)
quantile(Jordan.Test22,0.95) - quantile(Jordan.Test22,0.05)
quantile(Jordan.Test23,0.95) - quantile(Jordan.Test23,0.05)
quantile(Jordan.Test24,0.95) - quantile(Jordan.Test24,0.05)

quantile(Jordan.Test31,0.95) - quantile(Jordan.Test31,0.05)
quantile(Jordan.Test32,0.95) - quantile(Jordan.Test32,0.05)
quantile(Jordan.Test33,0.95) - quantile(Jordan.Test33,0.05)
quantile(Jordan.Test34,0.95) - quantile(Jordan.Test34,0.05)

quantile(Jordan.Test41,0.95) - quantile(Jordan.Test41,0.05)
quantile(Jordan.Test42,0.95) - quantile(Jordan.Test42,0.05)
quantile(Jordan.Test43,0.95) - quantile(Jordan.Test43,0.05)
quantile(Jordan.Test44,0.95) - quantile(Jordan.Test44,0.05)

quantile(Jordan.Test51,0.95) - quantile(Jordan.Test51,0.05)
quantile(Jordan.Test52,0.95) - quantile(Jordan.Test52,0.05)
quantile(Jordan.Test53,0.95) - quantile(Jordan.Test53,0.05)
quantile(Jordan.Test54,0.95) - quantile(Jordan.Test54,0.05)


par(mfrow = c(1,4))
hist(Jordan.Test11)
hist(Jordan.Test12)
hist(Jordan.Test13)
hist(Jordan.Test14)

hist(Jordan.Test21)
hist(Jordan.Test22)
hist(Jordan.Test23)
hist(Jordan.Test24)

hist(Jordan.Test31)
hist(Jordan.Test32)
hist(Jordan.Test33)
hist(Jordan.Test34)

hist(Jordan.Test41)
hist(Jordan.Test42)
hist(Jordan.Test43)
hist(Jordan.Test44)

hist(Jordan.Test51)
hist(Jordan.Test52)
hist(Jordan.Test53)
hist(Jordan.Test54)



length(ReCA.Train11[ReCA.Train11 != 0])/10
length(ReCA.Train12[ReCA.Train12 != 0])/10
length(ReCA.Train13[ReCA.Train13 != 0])/10
length(ReCA.Train14[ReCA.Train14 != 0])/10
length(ReCA.Train15[ReCA.Train15 != 0])/10

length(Elman.Train11[Elman.Train11 != 0])/10
length(Elman.Train12[Elman.Train12 != 0])/10
length(Elman.Train13[Elman.Train13 != 0])/10
length(Elman.Train14[Elman.Train14 != 0])/10
length(Elman.Train15[Elman.Train15 != 0])/10

length(Jordan.Train11[Jordan.Train11 != 0])/10
length(Jordan.Train12[Jordan.Train12 != 0])/10
length(Jordan.Train13[Jordan.Train13 != 0])/10
length(Jordan.Train14[Jordan.Train14 != 0])/10
length(Jordan.Train15[Jordan.Train15 != 0])/10



par(mfrow = c(1,3))

boxplot(ReCA.Test11, ReCA.Test12, ReCA.Test13, ReCA.Test14, ReCA.Test15, ylim = c(0, 0.8), main = "ReCA Stopping Mechanism", names = c('10^-3', '10^-4', '10^-5', '10^-6', '10^-7'), ylab = 'Weighted Error Rates', xlab = 'Minimum difference in Error Values')
boxplot(Elman.Test11, Elman.Test12, Elman.Test13, Elman.Test14, Elman.Test15, ylim = c(0, 0.8), main = "Elman Stopping Mechanism", names = c('10^-3', '10^-4', '10^-5', '10^-6', '10^-7'), ylab = 'Weighted Error Rates', xlab = 'Minimum difference in Error Values')
boxplot(Jordan.Test11, Jordan.Test12, Jordan.Test13, Jordan.Test14, Jordan.Test15, ylim = c(0, 0.8), main = "Jordan Stopping Mechanism", names = c('10^-3', '10^-4', '10^-5', '10^-6', '10^-7'), ylab = 'Weighted Error Rates', xlab = 'Minimum difference in Error Values')

