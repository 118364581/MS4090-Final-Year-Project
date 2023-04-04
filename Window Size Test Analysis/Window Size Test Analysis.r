# Set the working directory to the folder containing the CSV files
setwd("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Window Size Test Analysis")

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

Test1 <- unlist(lapply(csv_data["ReCA Validation Errors, Window size 1.csv"], as.vector))
for (i in 1:length(Test1))
    if (Test1[i] == '#NAME?')
        Test1[i] = NA

Test2 <- unlist(lapply(csv_data["ReCA Validation Errors, Window size 2.csv"], as.vector))
for (i in 1:length(Test2))
    if (Test2[i] == '#NAME?')
        Test2[i] = NA

Test3 <- unlist(lapply(csv_data["ReCA Validation Errors, Window size 3.csv"], as.vector))
for (i in 1:length(Test3))
    if (Test3[i] == '#NAME?')
        Test3[i] = NA

Test4 <- unlist(lapply(csv_data["ReCA Validation Errors, Window size 4.csv"], as.vector))
for (i in 1:length(Test4))
    if (Test4[i] == '#NAME?')
        Test4[i] = NA

Test5 <- unlist(lapply(csv_data["ReCA Validation Errors, Window size 5.csv"], as.vector))
for (i in 1:length(Test5))
    if (Test5[i] == '#NAME?')
        Test5[i] = NA

Test6 <- unlist(lapply(csv_data["ReCA Validation Errors, Window size 6.csv"], as.vector))
for (i in 1:length(Test6))
    if (Test6[i] == '#NAME?')
        Test6[i] = NA

Test7 <- unlist(lapply(csv_data["ReCA Validation Errors, Window size 7.csv"], as.vector))
for (i in 1:length(Test7))
    if (Test7[i] == '#NAME?')
        Test7[i] = NA

Test8 <- unlist(lapply(csv_data["ReCA Validation Errors, Window size 8.csv"], as.vector))
for (i in 1:length(Test8))
    if (Test8[i] == '#NAME?')
        Test8[i] = NA

Test9 <- unlist(lapply(csv_data["ReCA Validation Errors, Window size 9.csv"], as.vector))
for (i in 1:length(Test9))
    if (Test9[i] == '#NAME?')
        Test9[i] = NA

Test10 <- unlist(lapply(csv_data["ReCA Validation Errors, Window size 10.csv"], as.vector))
for (i in 1:length(Test10))
    if (Test10[i] == '#NAME?')
        Test10[i] = NA

Test11 <- unlist(lapply(csv_data["ReCA Validation Errors, Window size 11.csv"], as.vector))
for (i in 1:length(Test11))
    if (Test11[i] == '#NAME?')
        Test11[i] = NA

Test12 <- unlist(lapply(csv_data["ReCA Validation Errors, Window size 12.csv"], as.vector))
for (i in 1:length(Test12))
    if (Test12[i] == '#NAME?')
        Test12[i] = NA

Test13 <- unlist(lapply(csv_data["ReCA Validation Errors, Window size 13.csv"], as.vector))
for (i in 1:length(Test13))
    if (Test13[i] == '#NAME?')
        Test13[i] = NA

Test14 <- unlist(lapply(csv_data["ReCA Validation Errors, Window size 14.csv"], as.vector))
for (i in 1:length(Test14))
    if (Test14[i] == '#NAME?')
        Test14[i] = NA

Test15 <- unlist(lapply(csv_data["ReCA Validation Errors, Window size 15.csv"], as.vector))
for (i in 1:length(Test15))
    if (Test15[i] == '#NAME?')
        Test15[i] = NA


boxplot(Test1,Test2, Test3, Test4, Test5, Test6, Test7, Test8, Test9, Test10, Test11, Test12, Test13, Test14, Test15,
names = c( '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15'),
main = "Window Size Validation Errors", ylab = "Error rates", xlab = 'Window Size',
ylim = c(0,1.5))


summary(Test1)
summary(Test2)
summary(Test3)
summary(Test4)
summary(Test5)
summary(Test6)
summary(Test7)
summary(Test8)
summary(Test9)
summary(Test10)
summary(Test11)
summary(Test12)
summary(Test13)
summary(Test14)
summary(Test15)



quantile(Test1, 0.75) - quantile(Test1, 0.25)
quantile(Test2, 0.75) - quantile(Test2, 0.25)
quantile(Test3, 0.75) - quantile(Test3, 0.25)
quantile(Test4, 0.75) - quantile(Test4, 0.25)
quantile(Test5, 0.75) - quantile(Test5, 0.25)
quantile(Test6, 0.75) - quantile(Test6, 0.25)
quantile(Test7, 0.75) - quantile(Test7, 0.25)
quantile(Test8, 0.75) - quantile(Test8, 0.25)
quantile(Test9, 0.75) - quantile(Test9, 0.25)
quantile(Test10, 0.75) - quantile(Test10, 0.25)
quantile(Test11, 0.75) - quantile(Test11, 0.25)
quantile(Test12, 0.75) - quantile(Test12, 0.25)
quantile(Test13, 0.75) - quantile(Test13, 0.25)
quantile(Test14, 0.75) - quantile(Test14, 0.25)
quantile(Test15, 0.75) - quantile(Test15, 0.25)


quantile(Test1, 0.75)
quantile(Test2, 0.75)
quantile(Test3, 0.75)
quantile(Test4, 0.75)
quantile(Test5, 0.75)
quantile(Test6, 0.75)
quantile(Test7, 0.75)
quantile(Test8, 0.75)
quantile(Test9, 0.75)
quantile(Test10, 0.75)
quantile(Test11, 0.75)
quantile(Test12, 0.75)
quantile(Test13, 0.75)
quantile(Test14, 0.75)
quantile(Test15, 0.75)


quantile(Test1, 0.25)
quantile(Test2, 0.25)
quantile(Test3, 0.25)
quantile(Test4, 0.25)
quantile(Test5, 0.25)
quantile(Test6, 0.25)
quantile(Test7, 0.25)
quantile(Test8, 0.25)
quantile(Test9, 0.25)
quantile(Test10, 0.25)
quantile(Test11, 0.25)
quantile(Test12, 0.25)
quantile(Test13, 0.25)
quantile(Test14, 0.25)
quantile(Test15, 0.25)



