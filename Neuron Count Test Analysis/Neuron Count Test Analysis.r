# Set the working directory to the folder containing the CSV files
setwd("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Neuron Count Test Analysis")

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

Test10 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 10.csv"], as.vector))
for (i in 1:length(Test10))
    if (Test10[i] == '#NAME?')
        Test10[i] = NA

Test11 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 11.csv"], as.vector))
for (i in 1:length(Test11))
    if (Test11[i] == '#NAME?')
        Test11[i] = NA

Test12 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 12.csv"], as.vector))
for (i in 1:length(Test12))
    if (Test12[i] == '#NAME?')
        Test12[i] = NA

Test13 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 13.csv"], as.vector))
for (i in 1:length(Test13))
    if (Test13[i] == '#NAME?')
        Test13[i] = NA

Test14 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 14.csv"], as.vector))
for (i in 1:length(Test14))
    if (Test14[i] == '#NAME?')
        Test14[i] = NA

Test15 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 15.csv"], as.vector))
for (i in 1:length(Test15))
    if (Test15[i] == '#NAME?')
        Test15[i] = NA

Test16 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 16.csv"], as.vector))
for (i in 1:length(Test16))
    if (Test16[i] == '#NAME?')
        Test16[i] = NA

Test17 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 17.csv"], as.vector))
for (i in 1:length(Test17))
    if (Test17[i] == '#NAME?')
        Test17[i] = NA

Test18 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 18.csv"], as.vector))
for (i in 1:length(Test18))
    if (Test18[i] == '#NAME?')
        Test18[i] = NA

Test19 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 19.csv"], as.vector))
for (i in 1:length(Test19))
    if (Test19[i] == '#NAME?')
        Test19[i] = NA

Test20 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 20.csv"], as.vector))
for (i in 1:length(Test20))
    if (Test20[i] == '#NAME?')
        Test20[i] = NA

Test21 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 21.csv"], as.vector))
for (i in 1:length(Test21))
    if (Test21[i] == '#NAME?')
        Test21[i] = NA

Test22 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 22.csv"], as.vector))
for (i in 1:length(Test22))
    if (Test22[i] == '#NAME?')
        Test22[i] = NA

Test23 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 23.csv"], as.vector))
for (i in 1:length(Test23))
    if (Test23[i] == '#NAME?')
        Test23[i] = NA

Test24 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 24.csv"], as.vector))
for (i in 1:length(Test24))
    if (Test24[i] == '#NAME?')
        Test24[i] = NA

Test25 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 25.csv"], as.vector))
for (i in 1:length(Test25))
    if (Test25[i] == '#NAME?')
        Test25[i] = NA

Test26 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 26.csv"], as.vector))
for (i in 1:length(Test26))
    if (Test26[i] == '#NAME?')
        Test26[i] = NA

Test27 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 27.csv"], as.vector))
for (i in 1:length(Test27))
    if (Test27[i] == '#NAME?')
        Test27[i] = NA

Test28 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 28.csv"], as.vector))
for (i in 1:length(Test28))
    if (Test28[i] == '#NAME?')
        Test28[i] = NA

Test29 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 29.csv"], as.vector))
for (i in 1:length(Test29))
    if (Test29[i] == '#NAME?')
        Test29[i] = NA

Test30 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 30.csv"], as.vector))
for (i in 1:length(Test30))
    if (Test30[i] == '#NAME?')
        Test30[i] = NA

Test31 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 31.csv"], as.vector))
for (i in 1:length(Test31))
    if (Test31[i] == '#NAME?')
        Test31[i] = NA

Test32 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 32.csv"], as.vector))
for (i in 1:length(Test32))
    if (Test32[i] == '#NAME?')
        Test32[i] = NA

Test33 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 33.csv"], as.vector))
for (i in 1:length(Test33))
    if (Test33[i] == '#NAME?')
        Test33[i] = NA

Test34 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 34.csv"], as.vector))
for (i in 1:length(Test34))
    if (Test34[i] == '#NAME?')
        Test34[i] = NA

Test35 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 35.csv"], as.vector))
for (i in 1:length(Test35))
    if (Test35[i] == '#NAME?')
        Test35[i] = NA

Test36 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 36.csv"], as.vector))
for (i in 1:length(Test36))
    if (Test36[i] == '#NAME?')
        Test36[i] = NA

Test37 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 37.csv"], as.vector))
for (i in 1:length(Test37))
    if (Test37[i] == '#NAME?')
        Test37[i] = NA

Test38 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 38.csv"], as.vector))
for (i in 1:length(Test38))
    if (Test38[i] == '#NAME?')
        Test38[i] = NA

Test39 <- unlist(lapply(csv_data["ReCA Validation Errors, Neuron Count 39.csv"], as.vector))
for (i in 1:length(Test39))
    if (Test39[i] == '#NAME?')
        Test39[i] = NA



par(mfrow = c(1,1))
boxplot( Test10, Test11, Test12, Test13, Test14, Test15, Test16, Test17, Test18, Test19, Test20, Test21, Test22, Test23, Test24, Test25, Test26, Test27, Test28, Test29, Test30, Test31, Test32, Test33, Test34, Test35, Test36, Test37, Test38, Test39, 
names = c( '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39'),
main = "ReCA Neuron Count Validation Errors", ylab = "Error rates", xlab = 'Neurons',
ylim = c(0, 1.2))


summary(Test10)
summary(Test11)
summary(Test12)
summary(Test13)
summary(Test14)
summary(Test15)
summary(Test16)
summary(Test17)
summary(Test18)
summary(Test19)
summary(Test20)
summary(Test21)
summary(Test22)
summary(Test23)
summary(Test24)
summary(Test25)
summary(Test26)
summary(Test27)
summary(Test28)
summary(Test29)
summary(Test30)
summary(Test31)
summary(Test32)
summary(Test33)
summary(Test34)
summary(Test35)
summary(Test36)
summary(Test37)
summary(Test38)
summary(Test39)


quantile(Test10, 0.75) - quantile(Test10, 0.25)
quantile(Test11, 0.75) - quantile(Test11, 0.25)
quantile(Test12, 0.75) - quantile(Test12, 0.25)
quantile(Test13, 0.75) - quantile(Test13, 0.25)
quantile(Test14, 0.75) - quantile(Test14, 0.25)
quantile(Test15, 0.75) - quantile(Test15, 0.25)
quantile(Test16, 0.75) - quantile(Test16, 0.25)
quantile(Test17, 0.75) - quantile(Test17, 0.25)
quantile(Test18, 0.75) - quantile(Test18, 0.25)
quantile(Test19, 0.75) - quantile(Test19, 0.25)
quantile(Test20, 0.75) - quantile(Test20, 0.25)
quantile(Test21, 0.75) - quantile(Test21, 0.25)
quantile(Test22, 0.75) - quantile(Test22, 0.25)
quantile(Test23, 0.75) - quantile(Test23, 0.25)
quantile(Test24, 0.75) - quantile(Test24, 0.25)
quantile(Test25, 0.75) - quantile(Test25, 0.25)
quantile(Test26, 0.75) - quantile(Test26, 0.25)
quantile(Test27, 0.75) - quantile(Test27, 0.25)
quantile(Test28, 0.75) - quantile(Test28, 0.25)
quantile(Test29, 0.75) - quantile(Test29, 0.25)
quantile(Test30, 0.75) - quantile(Test30, 0.25)
quantile(Test31, 0.75) - quantile(Test31, 0.25)
quantile(Test32, 0.75) - quantile(Test32, 0.25)
quantile(Test33, 0.75) - quantile(Test33, 0.25)
quantile(Test34, 0.75) - quantile(Test34, 0.25)
quantile(Test35, 0.75) - quantile(Test35, 0.25)
quantile(Test36, 0.75) - quantile(Test36, 0.25)
quantile(Test37, 0.75) - quantile(Test37, 0.25)
quantile(Test38, 0.75) - quantile(Test38, 0.25)
quantile(Test39, 0.75) - quantile(Test39, 0.25)



