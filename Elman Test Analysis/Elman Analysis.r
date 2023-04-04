library(tidyverse)
library(data.table)
library(microbenchmark)
library(purrr)


# Set the working directory to the folder containing the CSV files
setwd("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis")

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

# Print out the csv_data list to verify that the CSV files were read in correctly
names(csv_data)



length(csv_data)

bpvals = list(length = 20)
names = list(length = 20)


par(mfrow = c(1,2))


j = 0
for (i in 1:20){
  bpvals[i] = csv_data[i + 20*j]
  names[i] = names(csv_data[i + 20*j])
}

data1 <- unlist(lapply(bpvals[1], as.vector))
data10 <- unlist(lapply(bpvals[2], as.vector))
data2 <- unlist(lapply(bpvals[3], as.vector))
data20 <- unlist(lapply(bpvals[4], as.vector))
data3 <- unlist(lapply(bpvals[5], as.vector))
data4 <- unlist(lapply(bpvals[6], as.vector))
data5 <- unlist(lapply(bpvals[7], as.vector))
data6 <- unlist(lapply(bpvals[8], as.vector))
data7 <- unlist(lapply(bpvals[9], as.vector))
data8 <- unlist(lapply(bpvals[10], as.vector))
data9 <- unlist(lapply(bpvals[11], as.vector))
data11 <- unlist(lapply(bpvals[12], as.vector))
data12 <- unlist(lapply(bpvals[13], as.vector))
data13 <- unlist(lapply(bpvals[14], as.vector))
data14 <- unlist(lapply(bpvals[15], as.vector))
data15 <- unlist(lapply(bpvals[16], as.vector))
data16 <- unlist(lapply(bpvals[17], as.vector))
data17 <- unlist(lapply(bpvals[18], as.vector))
data18 <- unlist(lapply(bpvals[19], as.vector))
data19 <- unlist(lapply(bpvals[20], as.vector))

summary(data1)
summary(data2)
summary(data3)
summary(data4)
summary(data5)
summary(data6)
summary(data7)
summary(data8)
summary(data9)
summary(data10)
summary(data11)
summary(data12)
summary(data13)
summary(data14)
summary(data15)
summary(data16)
summary(data17)
summary(data18)
summary(data19)
summary(data20)

boxplot(  data2, data3, data4, data5, data6, data7, data8, data9, data10,
 data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, 
names = c(  "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"),
main = "Elman Validation Error Values, Window Size 1", xlab = "Neurons", ylab = "Error Values",
ylim = c(0,0.5)
)


j = 1
for (i in 1:20){
  bpvals[i] = csv_data[i + 20*j]
  names[i] = names(csv_data[i + 20*j])
}

data1 <- unlist(lapply(bpvals[1], as.vector))
data10 <- unlist(lapply(bpvals[2], as.vector))
data2 <- unlist(lapply(bpvals[3], as.vector))
data20 <- unlist(lapply(bpvals[4], as.vector))
data3 <- unlist(lapply(bpvals[5], as.vector))
data4 <- unlist(lapply(bpvals[6], as.vector))
data5 <- unlist(lapply(bpvals[7], as.vector))
data6 <- unlist(lapply(bpvals[8], as.vector))
data7 <- unlist(lapply(bpvals[9], as.vector))
data8 <- unlist(lapply(bpvals[10], as.vector))
data9 <- unlist(lapply(bpvals[11], as.vector))
data11 <- unlist(lapply(bpvals[12], as.vector))
data12 <- unlist(lapply(bpvals[13], as.vector))
data13 <- unlist(lapply(bpvals[14], as.vector))
data14 <- unlist(lapply(bpvals[15], as.vector))
data15 <- unlist(lapply(bpvals[16], as.vector))
data16 <- unlist(lapply(bpvals[17], as.vector))
data17 <- unlist(lapply(bpvals[18], as.vector))
data18 <- unlist(lapply(bpvals[19], as.vector))
data19 <- unlist(lapply(bpvals[20], as.vector))

summary(data1)
summary(data2)
summary(data3)
summary(data4)
summary(data5)
summary(data6)
summary(data7)
summary(data8)
summary(data9)
summary(data10)
summary(data11)
summary(data12)
summary(data13)
summary(data14)
summary(data15)
summary(data16)
summary(data17)
summary(data18)
summary(data19)
summary(data20)

boxplot(  data2, data3, data4, data5, data6, data7, data8, data9, data10,
 data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, 
names = c(  "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"),
main = "Elman Window Size 10", xlab = "Neurons", ylab = "Error Values",
ylim = c(0,0.5)
)

j = 2
for (i in 1:20){
  bpvals[i] = csv_data[i + 20*j]
  names[i] = names(csv_data[i + 20*j])
}

data1 <- unlist(lapply(bpvals[1], as.vector))
data10 <- unlist(lapply(bpvals[2], as.vector))
data2 <- unlist(lapply(bpvals[3], as.vector))
data20 <- unlist(lapply(bpvals[4], as.vector))
data3 <- unlist(lapply(bpvals[5], as.vector))
data4 <- unlist(lapply(bpvals[6], as.vector))
data5 <- unlist(lapply(bpvals[7], as.vector))
data6 <- unlist(lapply(bpvals[8], as.vector))
data7 <- unlist(lapply(bpvals[9], as.vector))
data8 <- unlist(lapply(bpvals[10], as.vector))
data9 <- unlist(lapply(bpvals[11], as.vector))
data11 <- unlist(lapply(bpvals[12], as.vector))
data12 <- unlist(lapply(bpvals[13], as.vector))
data13 <- unlist(lapply(bpvals[14], as.vector))
data14 <- unlist(lapply(bpvals[15], as.vector))
data15 <- unlist(lapply(bpvals[16], as.vector))
data16 <- unlist(lapply(bpvals[17], as.vector))
data17 <- unlist(lapply(bpvals[18], as.vector))
data18 <- unlist(lapply(bpvals[19], as.vector))
data19 <- unlist(lapply(bpvals[20], as.vector))

summary(data1)
summary(data2)
summary(data3)
summary(data4)
summary(data5)
summary(data6)
summary(data7)
summary(data8)
summary(data9)
summary(data10)
summary(data11)
summary(data12)
summary(data13)
summary(data14)
summary(data15)
summary(data16)
summary(data17)
summary(data18)
summary(data19)
summary(data20)

boxplot(  data2, data3, data4, data5, data6, data7, data8, data9, data10,
 data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, 
names = c(  "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"),
main = "Elman Window Size 11", xlab = "Neurons", ylab = "Error Values",
ylim = c(0,0.5)
)

j = 3
for (i in 1:20){
  bpvals[i] = csv_data[i + 20*j]
  names[i] = names(csv_data[i + 20*j])
}

data1 <- unlist(lapply(bpvals[1], as.vector))
data10 <- unlist(lapply(bpvals[2], as.vector))
data2 <- unlist(lapply(bpvals[3], as.vector))
data20 <- unlist(lapply(bpvals[4], as.vector))
data3 <- unlist(lapply(bpvals[5], as.vector))
data4 <- unlist(lapply(bpvals[6], as.vector))
data5 <- unlist(lapply(bpvals[7], as.vector))
data6 <- unlist(lapply(bpvals[8], as.vector))
data7 <- unlist(lapply(bpvals[9], as.vector))
data8 <- unlist(lapply(bpvals[10], as.vector))
data9 <- unlist(lapply(bpvals[11], as.vector))
data11 <- unlist(lapply(bpvals[12], as.vector))
data12 <- unlist(lapply(bpvals[13], as.vector))
data13 <- unlist(lapply(bpvals[14], as.vector))
data14 <- unlist(lapply(bpvals[15], as.vector))
data15 <- unlist(lapply(bpvals[16], as.vector))
data16 <- unlist(lapply(bpvals[17], as.vector))
data17 <- unlist(lapply(bpvals[18], as.vector))
data18 <- unlist(lapply(bpvals[19], as.vector))
data19 <- unlist(lapply(bpvals[20], as.vector))

summary(data1)
summary(data2)
summary(data3)
summary(data4)
summary(data5)
summary(data6)
summary(data7)
summary(data8)
summary(data9)
summary(data10)
summary(data11)
summary(data12)
summary(data13)
summary(data14)
summary(data15)
summary(data16)
summary(data17)
summary(data18)
summary(data19)
summary(data20)

boxplot(  data2, data3, data4, data5, data6, data7, data8, data9, data10,
 data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, 
names = c(  "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"),
main = "Elman Window Size 12", xlab = "Neurons", ylab = "Error Values",
ylim = c(0,0.5)
)


j = 4
for (i in 1:20){
  bpvals[i] = csv_data[i + 20*j]
  names[i] = names(csv_data[i + 20*j])
}

data1 <- unlist(lapply(bpvals[1], as.vector))
data10 <- unlist(lapply(bpvals[2], as.vector))
data2 <- unlist(lapply(bpvals[3], as.vector))
data20 <- unlist(lapply(bpvals[4], as.vector))
data3 <- unlist(lapply(bpvals[5], as.vector))
data4 <- unlist(lapply(bpvals[6], as.vector))
data5 <- unlist(lapply(bpvals[7], as.vector))
data6 <- unlist(lapply(bpvals[8], as.vector))
data7 <- unlist(lapply(bpvals[9], as.vector))
data8 <- unlist(lapply(bpvals[10], as.vector))
data9 <- unlist(lapply(bpvals[11], as.vector))
data11 <- unlist(lapply(bpvals[12], as.vector))
data12 <- unlist(lapply(bpvals[13], as.vector))
data13 <- unlist(lapply(bpvals[14], as.vector))
data14 <- unlist(lapply(bpvals[15], as.vector))
data15 <- unlist(lapply(bpvals[16], as.vector))
data16 <- unlist(lapply(bpvals[17], as.vector))
data17 <- unlist(lapply(bpvals[18], as.vector))
data18 <- unlist(lapply(bpvals[19], as.vector))
data19 <- unlist(lapply(bpvals[20], as.vector))

summary(data1)
summary(data2)
summary(data3)
summary(data4)
summary(data5)
summary(data6)
summary(data7)
summary(data8)
summary(data9)
summary(data10)
summary(data11)
summary(data12)
summary(data13)
summary(data14)
summary(data15)
summary(data16)
summary(data17)
summary(data18)
summary(data19)
summary(data20)

boxplot(  data2, data3, data4, data5, data6, data7, data8, data9, data10,
 data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, 
names = c(  "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"),
main = "Elman Window Size 13", xlab = "Neurons", ylab = "Error Values",
ylim = c(0,0.5)
)


j = 5
for (i in 1:20){
  bpvals[i] = csv_data[i + 20*j]
  names[i] = names(csv_data[i + 20*j])
}

data1 <- unlist(lapply(bpvals[1], as.vector))
data10 <- unlist(lapply(bpvals[2], as.vector))
data2 <- unlist(lapply(bpvals[3], as.vector))
data20 <- unlist(lapply(bpvals[4], as.vector))
data3 <- unlist(lapply(bpvals[5], as.vector))
data4 <- unlist(lapply(bpvals[6], as.vector))
data5 <- unlist(lapply(bpvals[7], as.vector))
data6 <- unlist(lapply(bpvals[8], as.vector))
data7 <- unlist(lapply(bpvals[9], as.vector))
data8 <- unlist(lapply(bpvals[10], as.vector))
data9 <- unlist(lapply(bpvals[11], as.vector))
data11 <- unlist(lapply(bpvals[12], as.vector))
data12 <- unlist(lapply(bpvals[13], as.vector))
data13 <- unlist(lapply(bpvals[14], as.vector))
data14 <- unlist(lapply(bpvals[15], as.vector))
data15 <- unlist(lapply(bpvals[16], as.vector))
data16 <- unlist(lapply(bpvals[17], as.vector))
data17 <- unlist(lapply(bpvals[18], as.vector))
data18 <- unlist(lapply(bpvals[19], as.vector))
data19 <- unlist(lapply(bpvals[20], as.vector))

summary(data1)
summary(data2)
summary(data3)
summary(data4)
summary(data5)
summary(data6)
summary(data7)
summary(data8)
summary(data9)
summary(data10)
summary(data11)
summary(data12)
summary(data13)
summary(data14)
summary(data15)
summary(data16)
summary(data17)
summary(data18)
summary(data19)
summary(data20)

boxplot(  data2, data3, data4, data5, data6, data7, data8, data9, data10,
 data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, 
names = c(  "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"),
main = "Elman Window Size 14", xlab = "Neurons", ylab = "Error Values",
ylim = c(0,0.5)
)


j = 6
for (i in 1:20){
  bpvals[i] = csv_data[i + 20*j]
  names[i] = names(csv_data[i + 20*j])
}

data1 <- unlist(lapply(bpvals[1], as.vector))
data10 <- unlist(lapply(bpvals[2], as.vector))
data2 <- unlist(lapply(bpvals[3], as.vector))
data20 <- unlist(lapply(bpvals[4], as.vector))
data3 <- unlist(lapply(bpvals[5], as.vector))
data4 <- unlist(lapply(bpvals[6], as.vector))
data5 <- unlist(lapply(bpvals[7], as.vector))
data6 <- unlist(lapply(bpvals[8], as.vector))
data7 <- unlist(lapply(bpvals[9], as.vector))
data8 <- unlist(lapply(bpvals[10], as.vector))
data9 <- unlist(lapply(bpvals[11], as.vector))
data11 <- unlist(lapply(bpvals[12], as.vector))
data12 <- unlist(lapply(bpvals[13], as.vector))
data13 <- unlist(lapply(bpvals[14], as.vector))
data14 <- unlist(lapply(bpvals[15], as.vector))
data15 <- unlist(lapply(bpvals[16], as.vector))
data16 <- unlist(lapply(bpvals[17], as.vector))
data17 <- unlist(lapply(bpvals[18], as.vector))
data18 <- unlist(lapply(bpvals[19], as.vector))
data19 <- unlist(lapply(bpvals[20], as.vector))

summary(data1)
summary(data2)
summary(data3)
summary(data4)
summary(data5)
summary(data6)
summary(data7)
summary(data8)
summary(data9)
summary(data10)
summary(data11)
summary(data12)
summary(data13)
summary(data14)
summary(data15)
summary(data16)
summary(data17)
summary(data18)
summary(data19)
summary(data20)

boxplot(  data2, data3, data4, data5, data6, data7, data8, data9, data10,
 data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, 
names = c(  "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"),
main = "Elman Window Size 15", xlab = "Neurons", ylab = "Error Values",
ylim = c(0,0.5)
)


j = 7
for (i in 1:20){
  bpvals[i] = csv_data[i + 20*j]
  names[i] = names(csv_data[i + 20*j])
}

data1 <- unlist(lapply(bpvals[1], as.vector))
data10 <- unlist(lapply(bpvals[2], as.vector))
data2 <- unlist(lapply(bpvals[3], as.vector))
data20 <- unlist(lapply(bpvals[4], as.vector))
data3 <- unlist(lapply(bpvals[5], as.vector))
data4 <- unlist(lapply(bpvals[6], as.vector))
data5 <- unlist(lapply(bpvals[7], as.vector))
data6 <- unlist(lapply(bpvals[8], as.vector))
data7 <- unlist(lapply(bpvals[9], as.vector))
data8 <- unlist(lapply(bpvals[10], as.vector))
data9 <- unlist(lapply(bpvals[11], as.vector))
data11 <- unlist(lapply(bpvals[12], as.vector))
data12 <- unlist(lapply(bpvals[13], as.vector))
data13 <- unlist(lapply(bpvals[14], as.vector))
data14 <- unlist(lapply(bpvals[15], as.vector))
data15 <- unlist(lapply(bpvals[16], as.vector))
data16 <- unlist(lapply(bpvals[17], as.vector))
data17 <- unlist(lapply(bpvals[18], as.vector))
data18 <- unlist(lapply(bpvals[19], as.vector))
data19 <- unlist(lapply(bpvals[20], as.vector))

summary(data1)
summary(data2)
summary(data3)
summary(data4)
summary(data5)
summary(data6)
summary(data7)
summary(data8)
summary(data9)
summary(data10)
summary(data11)
summary(data12)
summary(data13)
summary(data14)
summary(data15)
summary(data16)
summary(data17)
summary(data18)
summary(data19)
summary(data20)

boxplot(  data2, data3, data4, data5, data6, data7, data8, data9, data10,
 data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, 
names = c(  "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"),
main = "Elman Window Size 2", xlab = "Neurons", ylab = "Error Values",
ylim = c(0,0.5)
)


j = 8
for (i in 1:20){
  bpvals[i] = csv_data[i + 20*j]
  names[i] = names(csv_data[i + 20*j])
}

data1 <- unlist(lapply(bpvals[1], as.vector))
data10 <- unlist(lapply(bpvals[2], as.vector))
data2 <- unlist(lapply(bpvals[3], as.vector))
data20 <- unlist(lapply(bpvals[4], as.vector))
data3 <- unlist(lapply(bpvals[5], as.vector))
data4 <- unlist(lapply(bpvals[6], as.vector))
data5 <- unlist(lapply(bpvals[7], as.vector))
data6 <- unlist(lapply(bpvals[8], as.vector))
data7 <- unlist(lapply(bpvals[9], as.vector))
data8 <- unlist(lapply(bpvals[10], as.vector))
data9 <- unlist(lapply(bpvals[11], as.vector))
data11 <- unlist(lapply(bpvals[12], as.vector))
data12 <- unlist(lapply(bpvals[13], as.vector))
data13 <- unlist(lapply(bpvals[14], as.vector))
data14 <- unlist(lapply(bpvals[15], as.vector))
data15 <- unlist(lapply(bpvals[16], as.vector))
data16 <- unlist(lapply(bpvals[17], as.vector))
data17 <- unlist(lapply(bpvals[18], as.vector))
data18 <- unlist(lapply(bpvals[19], as.vector))
data19 <- unlist(lapply(bpvals[20], as.vector))

summary(data1)
summary(data2)
summary(data3)
summary(data4)
summary(data5)
summary(data6)
summary(data7)
summary(data8)
summary(data9)
summary(data10)
summary(data11)
summary(data12)
summary(data13)
summary(data14)
summary(data15)
summary(data16)
summary(data17)
summary(data18)
summary(data19)
summary(data20)




boxplot(  data2, data3, data4, data5, data6, data7, data8, data9, data10,
 data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, 
names = c(  "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"),
main = "Elman Window Size 3", xlab = "Neurons", ylab = "Error Values",
ylim = c(0,0.5)
)


j = 9
for (i in 1:20){
  bpvals[i] = csv_data[i + 20*j]
  names[i] = names(csv_data[i + 20*j])
}

data1 <- unlist(lapply(bpvals[1], as.vector))
data10 <- unlist(lapply(bpvals[2], as.vector))
data2 <- unlist(lapply(bpvals[3], as.vector))
data20 <- unlist(lapply(bpvals[4], as.vector))
data3 <- unlist(lapply(bpvals[5], as.vector))
data4 <- unlist(lapply(bpvals[6], as.vector))
data5 <- unlist(lapply(bpvals[7], as.vector))
data6 <- unlist(lapply(bpvals[8], as.vector))
data7 <- unlist(lapply(bpvals[9], as.vector))
data8 <- unlist(lapply(bpvals[10], as.vector))
data9 <- unlist(lapply(bpvals[11], as.vector))
data11 <- unlist(lapply(bpvals[12], as.vector))
data12 <- unlist(lapply(bpvals[13], as.vector))
data13 <- unlist(lapply(bpvals[14], as.vector))
data14 <- unlist(lapply(bpvals[15], as.vector))
data15 <- unlist(lapply(bpvals[16], as.vector))
data16 <- unlist(lapply(bpvals[17], as.vector))
data17 <- unlist(lapply(bpvals[18], as.vector))
data18 <- unlist(lapply(bpvals[19], as.vector))
data19 <- unlist(lapply(bpvals[20], as.vector))

summary(data1)
summary(data2)
summary(data3)
summary(data4)
summary(data5)
summary(data6)
summary(data7)
summary(data8)
summary(data9)
summary(data10)
summary(data11)
summary(data12)
summary(data13)
summary(data14)
summary(data15)
summary(data16)
summary(data17)
summary(data18)
summary(data19)
summary(data20)

boxplot(  data2, data3, data4, data5, data6, data7, data8, data9, data10,
 data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, 
names = c(  "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"),
main = "Elman Window Size 4", xlab = "Neurons", ylab = "Error Values",
ylim = c(0,0.5)
)


j = 10
for (i in 1:20){
  bpvals[i] = csv_data[i + 20*j]
  names[i] = names(csv_data[i + 20*j])
}

data1 <- unlist(lapply(bpvals[1], as.vector))
data10 <- unlist(lapply(bpvals[2], as.vector))
data2 <- unlist(lapply(bpvals[3], as.vector))
data20 <- unlist(lapply(bpvals[4], as.vector))
data3 <- unlist(lapply(bpvals[5], as.vector))
data4 <- unlist(lapply(bpvals[6], as.vector))
data5 <- unlist(lapply(bpvals[7], as.vector))
data6 <- unlist(lapply(bpvals[8], as.vector))
data7 <- unlist(lapply(bpvals[9], as.vector))
data8 <- unlist(lapply(bpvals[10], as.vector))
data9 <- unlist(lapply(bpvals[11], as.vector))
data11 <- unlist(lapply(bpvals[12], as.vector))
data12 <- unlist(lapply(bpvals[13], as.vector))
data13 <- unlist(lapply(bpvals[14], as.vector))
data14 <- unlist(lapply(bpvals[15], as.vector))
data15 <- unlist(lapply(bpvals[16], as.vector))
data16 <- unlist(lapply(bpvals[17], as.vector))
data17 <- unlist(lapply(bpvals[18], as.vector))
data18 <- unlist(lapply(bpvals[19], as.vector))
data19 <- unlist(lapply(bpvals[20], as.vector))

summary(data1)
summary(data2)
summary(data3)
summary(data4)
summary(data5)
summary(data6)
summary(data7)
summary(data8)
summary(data9)
summary(data10)
summary(data11)
summary(data12)
summary(data13)
summary(data14)
summary(data15)
summary(data16)
summary(data17)
summary(data18)
summary(data19)
summary(data20)

boxplot(  data2, data3, data4, data5, data6, data7, data8, data9, data10,
 data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, 
names = c(  "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"),
main = "Elman Window Size 5", xlab = "Neurons", ylab = "Error Values",
ylim = c(0,0.5)
)


j = 11
for (i in 1:20){
  bpvals[i] = csv_data[i + 20*j]
  names[i] = names(csv_data[i + 20*j])
}

data1 <- unlist(lapply(bpvals[1], as.vector))
data10 <- unlist(lapply(bpvals[2], as.vector))
data2 <- unlist(lapply(bpvals[3], as.vector))
data20 <- unlist(lapply(bpvals[4], as.vector))
data3 <- unlist(lapply(bpvals[5], as.vector))
data4 <- unlist(lapply(bpvals[6], as.vector))
data5 <- unlist(lapply(bpvals[7], as.vector))
data6 <- unlist(lapply(bpvals[8], as.vector))
data7 <- unlist(lapply(bpvals[9], as.vector))
data8 <- unlist(lapply(bpvals[10], as.vector))
data9 <- unlist(lapply(bpvals[11], as.vector))
data11 <- unlist(lapply(bpvals[12], as.vector))
data12 <- unlist(lapply(bpvals[13], as.vector))
data13 <- unlist(lapply(bpvals[14], as.vector))
data14 <- unlist(lapply(bpvals[15], as.vector))
data15 <- unlist(lapply(bpvals[16], as.vector))
data16 <- unlist(lapply(bpvals[17], as.vector))
data17 <- unlist(lapply(bpvals[18], as.vector))
data18 <- unlist(lapply(bpvals[19], as.vector))
data19 <- unlist(lapply(bpvals[20], as.vector))

summary(data1)
summary(data2)
summary(data3)
summary(data4)
summary(data5)
summary(data6)
summary(data7)
summary(data8)
summary(data9)
summary(data10)
summary(data11)
summary(data12)
summary(data13)
summary(data14)
summary(data15)
summary(data16)
summary(data17)
summary(data18)
summary(data19)
summary(data20)

boxplot(  data2, data3, data4, data5, data6, data7, data8, data9, data10,
 data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, 
names = c(  "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"),
main = "Elman Window Size 6", xlab = "Neurons", ylab = "Error Values",
ylim = c(0,1)
)


j = 12
for (i in 1:20){
  bpvals[i] = csv_data[i + 20*j]
  names[i] = names(csv_data[i + 20*j])
}

data1 <- unlist(lapply(bpvals[1], as.vector))
data10 <- unlist(lapply(bpvals[2], as.vector))
data2 <- unlist(lapply(bpvals[3], as.vector))
data20 <- unlist(lapply(bpvals[4], as.vector))
data3 <- unlist(lapply(bpvals[5], as.vector))
data4 <- unlist(lapply(bpvals[6], as.vector))
data5 <- unlist(lapply(bpvals[7], as.vector))
data6 <- unlist(lapply(bpvals[8], as.vector))
data7 <- unlist(lapply(bpvals[9], as.vector))
data8 <- unlist(lapply(bpvals[10], as.vector))
data9 <- unlist(lapply(bpvals[11], as.vector))
data11 <- unlist(lapply(bpvals[12], as.vector))
data12 <- unlist(lapply(bpvals[13], as.vector))
data13 <- unlist(lapply(bpvals[14], as.vector))
data14 <- unlist(lapply(bpvals[15], as.vector))
data15 <- unlist(lapply(bpvals[16], as.vector))
data16 <- unlist(lapply(bpvals[17], as.vector))
data17 <- unlist(lapply(bpvals[18], as.vector))
data18 <- unlist(lapply(bpvals[19], as.vector))
data19 <- unlist(lapply(bpvals[20], as.vector))

summary(data1)
summary(data2)
summary(data3)
summary(data4)
summary(data5)
summary(data6)
summary(data7)
summary(data8)
summary(data9)
summary(data10)
summary(data11)
summary(data12)
summary(data13)
summary(data14)
summary(data15)
summary(data16)
summary(data17)
summary(data18)
summary(data19)
summary(data20)

boxplot(  data2, data3, data4, data5, data6, data7, data8, data9, data10,
 data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, 
names = c(  "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"),
main = "Elman Window Size 7", xlab = "Neurons", ylab = "Error Values",
ylim = c(0,1)
)


j = 13
for (i in 1:20){
  bpvals[i] = csv_data[i + 20*j]
  names[i] = names(csv_data[i + 20*j])
}

data1 <- unlist(lapply(bpvals[1], as.vector))
data10 <- unlist(lapply(bpvals[2], as.vector))
data2 <- unlist(lapply(bpvals[3], as.vector))
data20 <- unlist(lapply(bpvals[4], as.vector))
data3 <- unlist(lapply(bpvals[5], as.vector))
data4 <- unlist(lapply(bpvals[6], as.vector))
data5 <- unlist(lapply(bpvals[7], as.vector))
data6 <- unlist(lapply(bpvals[8], as.vector))
data7 <- unlist(lapply(bpvals[9], as.vector))
data8 <- unlist(lapply(bpvals[10], as.vector))
data9 <- unlist(lapply(bpvals[11], as.vector))
data11 <- unlist(lapply(bpvals[12], as.vector))
data12 <- unlist(lapply(bpvals[13], as.vector))
data13 <- unlist(lapply(bpvals[14], as.vector))
data14 <- unlist(lapply(bpvals[15], as.vector))
data15 <- unlist(lapply(bpvals[16], as.vector))
data16 <- unlist(lapply(bpvals[17], as.vector))
data17 <- unlist(lapply(bpvals[18], as.vector))
data18 <- unlist(lapply(bpvals[19], as.vector))
data19 <- unlist(lapply(bpvals[20], as.vector))

summary(data1)
summary(data2)
summary(data3)
summary(data4)
summary(data5)
summary(data6)
summary(data7)
summary(data8)
summary(data9)
summary(data10)
summary(data11)
summary(data12)
summary(data13)
summary(data14)
summary(data15)
summary(data16)
summary(data17)
summary(data18)
summary(data19)
summary(data20)

boxplot(  data2, data3, data4, data5, data6, data7, data8, data9, data10,
 data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, 
names = c(  "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"),
main = "Elman Window Size 8", xlab = "Neurons", ylab = "Error Values",
ylim = c(0,1)
)


j = 14
for (i in 1:20){
  bpvals[i] = csv_data[i + 20*j]
  names[i] = names(csv_data[i + 20*j])
}

data1 <- unlist(lapply(bpvals[1], as.vector))
data10 <- unlist(lapply(bpvals[2], as.vector))
data2 <- unlist(lapply(bpvals[3], as.vector))
data20 <- unlist(lapply(bpvals[4], as.vector))
data3 <- unlist(lapply(bpvals[5], as.vector))
data4 <- unlist(lapply(bpvals[6], as.vector))
data5 <- unlist(lapply(bpvals[7], as.vector))
data6 <- unlist(lapply(bpvals[8], as.vector))
data7 <- unlist(lapply(bpvals[9], as.vector))
data8 <- unlist(lapply(bpvals[10], as.vector))
data9 <- unlist(lapply(bpvals[11], as.vector))
data11 <- unlist(lapply(bpvals[12], as.vector))
data12 <- unlist(lapply(bpvals[13], as.vector))
data13 <- unlist(lapply(bpvals[14], as.vector))
data14 <- unlist(lapply(bpvals[15], as.vector))
data15 <- unlist(lapply(bpvals[16], as.vector))
data16 <- unlist(lapply(bpvals[17], as.vector))
data17 <- unlist(lapply(bpvals[18], as.vector))
data18 <- unlist(lapply(bpvals[19], as.vector))
data19 <- unlist(lapply(bpvals[20], as.vector))

summary(data1)
summary(data2)
summary(data3)
summary(data4)
summary(data5)
summary(data6)
summary(data7)
summary(data8)
summary(data9)
summary(data10)
summary(data11)
summary(data12)
summary(data13)
summary(data14)
summary(data15)
summary(data16)
summary(data17)
summary(data18)
summary(data19)
summary(data20)

boxplot(  data2, data3, data4, data5, data6, data7, data8, data9, data10,
 data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, 
names = c(  "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"),
main = "Elman Window Size 9", xlab = "Neurons", ylab = "Error Values",
ylim = c(0,1)
)






Test1 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 2, Neuron Count 11.csv"], as.vector))
for (i in 1:length(Test1))
    if (Test1[i] == '#NAME?')
        Test1[i] = NA

Test2 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 2, Neuron Count 13.csv"], as.vector))
for (i in 1:length(Test2))
    if (Test2[i] == '#NAME?')
        Test2[i] = NA

Test3 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 2, Neuron Count 14.csv"], as.vector))
for (i in 1:length(Test3))
    if (Test3[i] == '#NAME?')
        Test3[i] = NA

Test4 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 2, Neuron Count 16.csv"], as.vector))
for (i in 1:length(Test4))
    if (Test4[i] == '#NAME?')
        Test4[i] = NA

Test5 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 2, Neuron Count 18.csv"], as.vector))
for (i in 1:length(Test5))
    if (Test5[i] == '#NAME?')
        Test5[i] = NA

Test6 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 3, Neuron Count 7.csv"], as.vector))
for (i in 1:length(Test6))
    if (Test6[i] == '#NAME?')
        Test6[i] = NA

Test7 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 3, Neuron Count 11.csv"], as.vector))
for (i in 1:length(Test7))
    if (Test7[i] == '#NAME?')
        Test7[i] = NA

Test8 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 3, Neuron Count 13.csv"], as.vector))
for (i in 1:length(Test8))
    if (Test8[i] == '#NAME?')
        Test8[i] = NA

Test9 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 3, Neuron Count 17.csv"], as.vector))
for (i in 1:length(Test9))
    if (Test9[i] == '#NAME?')
        Test9[i] = NA

Test10 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 3, Neuron Count 19.csv"], as.vector))
for (i in 1:length(Test10))
    if (Test10[i] == '#NAME?')
        Test10[i] = NA

Test11 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 12, Neuron Count 3.csv"], as.vector))
for (i in 1:length(Test11))
    if (Test11[i] == '#NAME?')
        Test11[i] = NA

Test12 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 12, Neuron Count 4.csv"], as.vector))
for (i in 1:length(Test12))
    if (Test12[i] == '#NAME?')
        Test12[i] = NA

Test13 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 12, Neuron Count 7.csv"], as.vector))
for (i in 1:length(Test13))
    if (Test13[i] == '#NAME?')
        Test13[i] = NA

Test14 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 12, Neuron Count 11.csv"], as.vector))
for (i in 1:length(Test1))
    if (Test1[i] == '#NAME?')
        Test1[i] = NA

Test15 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 12, Neuron Count 13.csv"], as.vector))
for (i in 1:length(Test15))
    if (Test15[i] == '#NAME?')
        Test15[i] = NA

Test16 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 12, Neuron Count 15.csv"], as.vector))
for (i in 1:length(Test16))
    if (Test16[i] == '#NAME?')
        Test16[i] = NA

Test17 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 12, Neuron Count 16.csv"], as.vector))
for (i in 1:length(Test17))
    if (Test17[i] == '#NAME?')
        Test17[i] = NA

Test18 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 12, Neuron Count 17.csv"], as.vector))
for (i in 1:length(Test18))
    if (Test18[i] == '#NAME?')
        Test18[i] = NA

Test19 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 12, Neuron Count 19.csv"], as.vector))
for (i in 1:length(Test19))
    if (Test19[i] == '#NAME?')
        Test19[i] = NA

Test20 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 13, Neuron Count 4.csv"], as.vector))
for (i in 1:length(Test20))
    if (Test20[i] == '#NAME?')
        Test20[i] = NA

Test21 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 13, Neuron Count 10.csv"], as.vector))
for (i in 1:length(Test21))
    if (Test21[i] == '#NAME?')
        Test21[i] = NA

Test22 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 13, Neuron Count 15.csv"], as.vector))
for (i in 1:length(Test22))
    if (Test22[i] == '#NAME?')
        Test22[i] = NA

Test23 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 13, Neuron Count 17.csv"], as.vector))
for (i in 1:length(Test23))
    if (Test23[i] == '#NAME?')
        Test23[i] = NA

Test24 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 14, Neuron Count 14.csv"], as.vector))
for (i in 1:length(Test24))
    if (Test24[i] == '#NAME?')
        Test24[i] = NA

Test25 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 14, Neuron Count 15.csv"], as.vector))
for (i in 1:length(Test25))
    if (Test25[i] == '#NAME?')
        Test25[i] = NA

Test26 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 15, Neuron Count 13.csv"], as.vector))
for (i in 1:length(Test26))
    if (Test26[i] == '#NAME?')
        Test26[i] = NA

Test27 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 15, Neuron Count 17.csv"], as.vector))
for (i in 1:length(Test27))
    if (Test27[i] == '#NAME?')
        Test27[i] = NA



boxplot(Test1, Test2, Test3, Test4, Test5, Test6, Test7, Test8, Test9, Test10, Test11, Test12, Test13, Test14, Test15, Test16, Test17, Test18, Test19, Test20, Test21, Test22, Test23, Test24, Test25, Test26, Test27,
names = c( '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27'),
main = "Elman Window Size Validation Errors", ylab = "Error rates", xlab = 'Window Size',
ylim = c(0,1))



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





quantile(Test4, 0.25)
quantile(Test8, 0.25)
quantile(Test12, 0.25)
quantile(Test17, 0.25)
quantile(Test19, 0.25)
quantile(Test20, 0.25)
quantile(Test22, 0.25)
quantile(Test26, 0.25)




quantile(Test4, 0.75)
quantile(Test8, 0.75)
quantile(Test12, 0.75)
quantile(Test17, 0.75)
quantile(Test19, 0.75)
quantile(Test20, 0.75)
quantile(Test22, 0.75)
quantile(Test26, 0.75)


quantile(Test4, 0.75) - quantile(Test4, 0.25)
quantile(Test8, 0.75) - quantile(Test8, 0.25)
quantile(Test12, 0.75) - quantile(Test12, 0.25)
quantile(Test17, 0.75) - quantile(Test17, 0.25)
quantile(Test19, 0.75) - quantile(Test19, 0.25)
quantile(Test20, 0.75) - quantile(Test20, 0.25)
quantile(Test22, 0.75) - quantile(Test22, 0.25)
quantile(Test26, 0.75) - quantile(Test26, 0.25)

hist(Test12)









Test1 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 2, Neuron Count 3.csv"], as.vector))
for (i in 1:length(Test1))
    if (Test1[i] == '#NAME?')
        Test1[i] = NA

Test2 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 2, Neuron Count 4.csv"], as.vector))
for (i in 1:length(Test2))
    if (Test2[i] == '#NAME?')
        Test2[i] = NA

Test3 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 2, Neuron Count 5.csv"], as.vector))
for (i in 1:length(Test3))
    if (Test3[i] == '#NAME?')
        Test3[i] = NA

Test4 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 2, Neuron Count 6.csv"], as.vector))
for (i in 1:length(Test4))
    if (Test4[i] == '#NAME?')
        Test4[i] = NA

Test5 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 2, Neuron Count 7.csv"], as.vector))
for (i in 1:length(Test5))
    if (Test5[i] == '#NAME?')
        Test5[i] = NA

Test6 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 2, Neuron Count 8.csv"], as.vector))
for (i in 1:length(Test6))
    if (Test6[i] == '#NAME?')
        Test6[i] = NA



Test11 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 3, Neuron Count 4.csv"], as.vector))
for (i in 1:length(Test11))
    if (Test11[i] == '#NAME?')
        Test11[i] = NA

Test12 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 3, Neuron Count 5.csv"], as.vector))
for (i in 1:length(Test12))
    if (Test12[i] == '#NAME?')
        Test12[i] = NA

Test13 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 3, Neuron Count 6.csv"], as.vector))
for (i in 1:length(Test13))
    if (Test13[i] == '#NAME?')
        Test13[i] = NA

Test14 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 3, Neuron Count 7.csv"], as.vector))
for (i in 1:length(Test14))
    if (Test14[i] == '#NAME?')
        Test14[i] = NA

Test15 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 3, Neuron Count 8.csv"], as.vector))
for (i in 1:length(Test15))
    if (Test15[i] == '#NAME?')
        Test15[i] = NA



Test21 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 4, Neuron Count 4.csv"], as.vector))
for (i in 1:length(Test21))
    if (Test21[i] == '#NAME?')
        Test21[i] = NA

Test22 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 4, Neuron Count 5.csv"], as.vector))
for (i in 1:length(Test22))
    if (Test22[i] == '#NAME?')
        Test22[i] = NA

Test23 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 4, Neuron Count 6.csv"], as.vector))
for (i in 1:length(Test23))
    if (Test23[i] == '#NAME?')
        Test23[i] = NA

Test24 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 4, Neuron Count 7.csv"], as.vector))
for (i in 1:length(Test24))
    if (Test24[i] == '#NAME?')
        Test24[i] = NA

Test25 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 4, Neuron Count 8.csv"], as.vector))
for (i in 1:length(Test25))
    if (Test25[i] == '#NAME?')
        Test25[i] = NA

Test26 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 4, Neuron Count 9.csv"], as.vector))
for (i in 1:length(Test26))
    if (Test26[i] == '#NAME?')
        Test26[i] = NA



Test31 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 5, Neuron Count 5.csv"], as.vector))
for (i in 1:length(Test31))
    if (Test31[i] == '#NAME?')
        Test31[i] = NA

Test32 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 5, Neuron Count 6.csv"], as.vector))
for (i in 1:length(Test32))
    if (Test32[i] == '#NAME?')
        Test32[i] = NA

Test33 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 5, Neuron Count 7.csv"], as.vector))
for (i in 1:length(Test33))
    if (Test33[i] == '#NAME?')
        Test33[i] = NA

Test34 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 5, Neuron Count 8.csv"], as.vector))
for (i in 1:length(Test34))
    if (Test34[i] == '#NAME?')
        Test34[i] = NA

Test35 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 5, Neuron Count 9.csv"], as.vector))
for (i in 1:length(Test35))
    if (Test35[i] == '#NAME?')
        Test35[i] = NA

Test36 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 5, Neuron Count 10.csv"], as.vector))
for (i in 1:length(Test36))
    if (Test36[i] == '#NAME?')
        Test36[i] = NA



Test41 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 6, Neuron Count 6.csv"], as.vector))
for (i in 1:length(Test41))
    if (Test41[i] == '#NAME?')
        Test41[i] = NA

Test42 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 6, Neuron Count 7.csv"], as.vector))
for (i in 1:length(Test42))
    if (Test42[i] == '#NAME?')
        Test42[i] = NA

Test43 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 6, Neuron Count 8.csv"], as.vector))
for (i in 1:length(Test43))
    if (Test43[i] == '#NAME?')
        Test43[i] = NA

Test44 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 6, Neuron Count 9.csv"], as.vector))
for (i in 1:length(Test44))
    if (Test44[i] == '#NAME?')
        Test44[i] = NA

Test45 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 6, Neuron Count 10.csv"], as.vector))
for (i in 1:length(Test45))
    if (Test45[i] == '#NAME?')
        Test45[i] = NA



Test51 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 7, Neuron Count 6.csv"], as.vector))
for (i in 1:length(Test51))
    if (Test51[i] == '#NAME?')
        Test51[i] = NA

Test52 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 7, Neuron Count 7.csv"], as.vector))
for (i in 1:length(Test52))
    if (Test52[i] == '#NAME?')
        Test52[i] = NA

Test53 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 7, Neuron Count 8.csv"], as.vector))
for (i in 1:length(Test53))
    if (Test53[i] == '#NAME?')
        Test53[i] = NA

Test54 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 7, Neuron Count 9.csv"], as.vector))
for (i in 1:length(Test54))
    if (Test54[i] == '#NAME?')
        Test54[i] = NA

Test55 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 7, Neuron Count 10.csv"], as.vector))
for (i in 1:length(Test55))
    if (Test55[i] == '#NAME?')
        Test55[i] = NA

Test56 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 7, Neuron Count 11.csv"], as.vector))
for (i in 1:length(Test56))
    if (Test56[i] == '#NAME?')
        Test56[i] = NA



Test61 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 8, Neuron Count 7.csv"], as.vector))
for (i in 1:length(Test61))
    if (Test61[i] == '#NAME?')
        Test61[i] = NA

Test62 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 8, Neuron Count 8.csv"], as.vector))
for (i in 1:length(Test62))
    if (Test62[i] == '#NAME?')
        Test62[i] = NA

Test63 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 8, Neuron Count 9.csv"], as.vector))
for (i in 1:length(Test63))
    if (Test63[i] == '#NAME?')
        Test63[i] = NA

Test64 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 8, Neuron Count 10.csv"], as.vector))
for (i in 1:length(Test64))
    if (Test64[i] == '#NAME?')
        Test64[i] = NA

Test65 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 8, Neuron Count 11.csv"], as.vector))
for (i in 1:length(Test65))
    if (Test65[i] == '#NAME?')
        Test65[i] = NA

Test66 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 8, Neuron Count 12.csv"], as.vector))
for (i in 1:length(Test66))
    if (Test66[i] == '#NAME?')
        Test66[i] = NA




Test71 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 9, Neuron Count 8.csv"], as.vector))
for (i in 1:length(Test71))
    if (Test71[i] == '#NAME?')
        Test71[i] = NA

Test72 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 9, Neuron Count 9.csv"], as.vector))
for (i in 1:length(Test72))
    if (Test72[i] == '#NAME?')
        Test72[i] = NA

Test73 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 9, Neuron Count 10.csv"], as.vector))
for (i in 1:length(Test73))
    if (Test73[i] == '#NAME?')
        Test73[i] = NA

Test74 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 9, Neuron Count 11.csv"], as.vector))
for (i in 1:length(Test74))
    if (Test74[i] == '#NAME?')
        Test74[i] = NA

Test75 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 9, Neuron Count 12.csv"], as.vector))
for (i in 1:length(Test75))
    if (Test75[i] == '#NAME?')
        Test75[i] = NA



Test81 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 10, Neuron Count 8.csv"], as.vector))
for (i in 1:length(Test81))
    if (Test81[i] == '#NAME?')
        Test81[i] = NA

Test82 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 10, Neuron Count 9.csv"], as.vector))
for (i in 1:length(Test82))
    if (Test82[i] == '#NAME?')
        Test82[i] = NA

Test83 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 10, Neuron Count 10.csv"], as.vector))
for (i in 1:length(Test83))
    if (Test83[i] == '#NAME?')
        Test83[i] = NA

Test84 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 10, Neuron Count 11.csv"], as.vector))
for (i in 1:length(Test84))
    if (Test84[i] == '#NAME?')
        Test84[i] = NA

Test85 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 10, Neuron Count 12.csv"], as.vector))
for (i in 1:length(Test85))
    if (Test85[i] == '#NAME?')
        Test85[i] = NA

Test86 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 10, Neuron Count 13.csv"], as.vector))
for (i in 1:length(Test86))
    if (Test86[i] == '#NAME?')
        Test86[i] = NA



Test91 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 11, Neuron Count 9.csv"], as.vector))
for (i in 1:length(Test91))
    if (Test91[i] == '#NAME?')
        Test91[i] = NA

Test92 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 11, Neuron Count 10.csv"], as.vector))
for (i in 1:length(Test92))
    if (Test92[i] == '#NAME?')
        Test92[i] = NA

Test93 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 11, Neuron Count 11.csv"], as.vector))
for (i in 1:length(Test93))
    if (Test93[i] == '#NAME?')
        Test93[i] = NA

Test94 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 11, Neuron Count 12.csv"], as.vector))
for (i in 1:length(Test94))
    if (Test94[i] == '#NAME?')
        Test94[i] = NA

Test95 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 11, Neuron Count 13.csv"], as.vector))
for (i in 1:length(Test95))
    if (Test95[i] == '#NAME?')
        Test95[i] = NA



Test101 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 12, Neuron Count 9.csv"], as.vector))
for (i in 1:length(Test101))
    if (Test101[i] == '#NAME?')
        Test101[i] = NA

Test102 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 12, Neuron Count 10.csv"], as.vector))
for (i in 1:length(Test102))
    if (Test102[i] == '#NAME?')
        Test102[i] = NA

Test103 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 12, Neuron Count 11.csv"], as.vector))
for (i in 1:length(Test103))
    if (Test103[i] == '#NAME?')
        Test103[i] = NA

Test104 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 12, Neuron Count 12.csv"], as.vector))
for (i in 1:length(Test104))
    if (Test104[i] == '#NAME?')
        Test104[i] = NA

Test105 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 12, Neuron Count 13.csv"], as.vector))
for (i in 1:length(Test105))
    if (Test105[i] == '#NAME?')
        Test105[i] = NA

Test106 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 12, Neuron Count 14.csv"], as.vector))
for (i in 1:length(Test106))
    if (Test106[i] == '#NAME?')
        Test106[i] = NA



Test111 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 13, Neuron Count 10.csv"], as.vector))
for (i in 1:length(Test111))
    if (Test111[i] == '#NAME?')
        Test111[i] = NA

Test112 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 13, Neuron Count 11.csv"], as.vector))
for (i in 1:length(Test112))
    if (Test112[i] == '#NAME?')
        Test112[i] = NA

Test113 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 13, Neuron Count 12.csv"], as.vector))
for (i in 1:length(Test113))
    if (Test113[i] == '#NAME?')
        Test113[i] = NA

Test114 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 13, Neuron Count 13.csv"], as.vector))
for (i in 1:length(Test114))
    if (Test114[i] == '#NAME?')
        Test114[i] = NA

Test115 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 13, Neuron Count 14.csv"], as.vector))
for (i in 1:length(Test115))
    if (Test115[i] == '#NAME?')
        Test115[i] = NA

Test116 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 13, Neuron Count 15.csv"], as.vector))
for (i in 1:length(Test116))
    if (Test116[i] == '#NAME?')
        Test116[i] = NA



Test121 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 14, Neuron Count 11.csv"], as.vector))
for (i in 1:length(Test121))
    if (Test121[i] == '#NAME?')
        Test121[i] = NA

Test122 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 14, Neuron Count 12.csv"], as.vector))
for (i in 1:length(Test122))
    if (Test122[i] == '#NAME?')
        Test122[i] = NA

Test123 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 14, Neuron Count 13.csv"], as.vector))
for (i in 1:length(Test123))
    if (Test123[i] == '#NAME?')
        Test123[i] = NA

Test124 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 14, Neuron Count 14.csv"], as.vector))
for (i in 1:length(Test124))
    if (Test124[i] == '#NAME?')
        Test124[i] = NA

Test125 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 14, Neuron Count 15.csv"], as.vector))
for (i in 1:length(Test125))
    if (Test125[i] == '#NAME?')
        Test125[i] = NA



Test131 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 15, Neuron Count 11.csv"], as.vector))
for (i in 1:length(Test131))
    if (Test131[i] == '#NAME?')
        Test131[i] = NA

Test132 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 15, Neuron Count 12.csv"], as.vector))
for (i in 1:length(Test132))
    if (Test132[i] == '#NAME?')
        Test132[i] = NA

Test133 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 15, Neuron Count 13.csv"], as.vector))
for (i in 1:length(Test133))
    if (Test133[i] == '#NAME?')
        Test133[i] = NA

Test134 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 15, Neuron Count 14.csv"], as.vector))
for (i in 1:length(Test134))
    if (Test134[i] == '#NAME?')
        Test134[i] = NA

Test135 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 15, Neuron Count 15.csv"], as.vector))
for (i in 1:length(Test135))
    if (Test135[i] == '#NAME?')
        Test135[i] = NA

Test136 <- unlist(lapply(csv_data["Elman Validation Errors, Window size 15, Neuron Count 16.csv"], as.vector))
for (i in 1:length(Test136))
    if (Test136[i] == '#NAME?')
        Test136[i] = NA





par(mfrow = c(1,3))
boxplot( Test1, NaN, Test3, NaN, Test5, Test6, main = "Elman Window Size 2", 
names = c('3', '4', '5', '6', '7', '8'), xlab = "Neurons", ylab = "Validation Error Values", ylim = c(0, 1)
)

boxplot( Test11, Test12, NaN, NaN, Test15, main = "Elman Window Size 3", 
names = c('4', '5', '6', '7', '8'), xlab = "Neurons", ylab = "Validation Error Values", ylim = c(0, 1)
)

boxplot( Test21, Test22, Test23, Test24, Test25, Test26, main = "Elman Window Size 4", 
names = c('4', '5', '6', '7', '8', '9'), xlab = "Neurons", ylab = "Validation Error Values", ylim = c(0, 1)
)

boxplot( Test31, Test32, Test33, Test34, Test35, Test36, main = "Elman Window Size 5", 
names = c('5', '6', '7', '8', '9', '10'), xlab = "Neurons", ylab = "Validation Error Values", ylim = c(0, 1)
)

boxplot( Test41, Test42, Test43, Test44, Test45, main = "Elman Window Size 6", 
names = c('6', '7', '8', '9', '10'), xlab = "Neurons", ylab = "Validation Error Values", ylim = c(0, 1)
)

boxplot( Test51, Test52, Test53, Test54, Test55, Test56, main = "Elman Window Size 7", 
names = c('6', '7', '8', '9', '10', '11'), xlab = "Neurons", ylab = "Validation Error Values", ylim = c(0, 1)
)

par(mfrow = c(1,4))
boxplot( Test61, Test62, Test63, Test64, Test65, Test66, main = "Elman Window Size 8", 
names = c('7', '8', '9', '10', '11', '12'), xlab = "Neurons", ylab = "Validation Error Values", ylim = c(0, 1)
)

boxplot( Test71, Test72, Test73, Test74, Test75, main = "Elman Window Size 9", 
names = c('8', '9', '10', '11', '12'), xlab = "Neurons", ylab = "Validation Error Values", ylim = c(0, 1)
)

boxplot( Test81, Test82, Test83, Test84, Test85, Test86, main = "Elman Window Size 10", 
names = c('3', '4', '5', '6', '7', '13'), xlab = "Neurons", ylab = "Validation Error Values", ylim = c(0, 1)
)

boxplot( Test91, Test92, Test93, Test94, Test95, main = "Elman Window Size 11", 
names = c('3', '4', '5', '6', '7'), xlab = "Neurons", ylab = "Validation Error Values", ylim = c(0, 1)
)

boxplot( Test101, Test102, Test103, Test104, Test105, Test106, main = "Elman Window Size 12", 
names = c('3', '4', '5', '6', '7', '8'), xlab = "Neurons", ylab = "Validation Error Values", ylim = c(0, 1)
)

boxplot( Test111, Test112, Test113, Test114, Test115, Test116, main = "Elman Window Size 13", 
names = c('3', '4', '5', '6', '7', '8'), xlab = "Neurons", ylab = "Validation Error Values", ylim = c(0, 1)
)

par(mfrow = c(1,2))
boxplot( Test121, Test122, Test123, Test124, Test125, main = "Elman Window Size 14", 
names = c('3', '4', '5', '6', '7'), xlab = "Neurons", ylab = "Validation Error Values", ylim = c(0, 1)
)

boxplot( Test131, Test132, Test133, Test134, Test135, Test136, main = "Elman Window Size 15", 
names = c('3', '4', '5', '6', '7', '8'), xlab = "Neurons", ylab = "Validation Error Values", ylim = c(0, 1)
)


summary(Test1)
summary(Test2)
summary(Test3)
summary(Test4)
summary(Test5)
summary(Test6)

summary(Test11)
summary(Test12)
summary(Test13)
summary(Test14)
summary(Test15)

summary(Test21)
summary(Test22)
summary(Test23)
summary(Test24)
summary(Test25)
summary(Test26)

summary(Test31)
summary(Test32)
summary(Test33)
summary(Test34)
summary(Test35)
summary(Test36)

summary(Test41)
summary(Test42)
summary(Test43)
summary(Test44)
summary(Test45)

summary(Test51)
summary(Test52)
summary(Test53)
summary(Test54)
summary(Test55)
summary(Test56)

summary(Test61)
summary(Test62)
summary(Test63)
summary(Test64)
summary(Test65)
summary(Test66)

summary(Test71)
summary(Test72)
summary(Test73)
summary(Test74)
summary(Test75)

summary(Test81)
summary(Test82)
summary(Test83)
summary(Test84)
summary(Test85)
summary(Test86)

summary(Test91)
summary(Test92)
summary(Test93)
summary(Test94)
summary(Test95)

summary(Test101)
summary(Test102)
summary(Test103)
summary(Test104)
summary(Test105)
summary(Test106)

summary(Test111)
summary(Test112)
summary(Test113)
summary(Test114)
summary(Test115)
summary(Test116)

summary(Test121)
summary(Test122)
summary(Test123)
summary(Test124)
summary(Test125)

summary(Test131)
summary(Test132)
summary(Test133)
summary(Test134)
summary(Test135)
summary(Test136)








median(as.numeric(Test1))
median(as.numeric(Test2))
median(as.numeric(Test3))
median(as.numeric(Test4))
median(as.numeric(Test5))
median(as.numeric(Test6))

median(as.numeric(Test11))
median(as.numeric(Test12))
median(as.numeric(Test13))
median(as.numeric(Test14))
median(as.numeric(Test15))

median(as.numeric(Test21))
median(as.numeric(Test22))
median(as.numeric(Test23))
median(as.numeric(Test24))
median(as.numeric(Test25))
median(as.numeric(Test26))

median(as.numeric(Test31))
median(as.numeric(Test32))
median(as.numeric(Test33))
median(as.numeric(Test34))
median(as.numeric(Test35))
median(as.numeric(Test36))

median(as.numeric(Test41))
median(as.numeric(Test42))
median(as.numeric(Test43))
median(as.numeric(Test44))
median(as.numeric(Test45))

median(as.numeric(Test51))
median(as.numeric(Test52))
median(as.numeric(Test53))
median(as.numeric(Test54))
median(as.numeric(Test55))
median(as.numeric(Test56))

median(as.numeric(Test61))
median(as.numeric(Test62))
median(as.numeric(Test63))
median(as.numeric(Test64))
median(as.numeric(Test65))
median(as.numeric(Test66))

median(as.numeric(Test71))
median(as.numeric(Test72))
median(as.numeric(Test73))
median(as.numeric(Test74))
median(as.numeric(Test75))

median(as.numeric(Test81))
median(as.numeric(Test82))
median(as.numeric(Test83))
median(as.numeric(Test84))
median(as.numeric(Test85))
median(as.numeric(Test86))

median(as.numeric(Test91))
median(as.numeric(Test92))
median(as.numeric(Test93))
median(as.numeric(Test94))
median(as.numeric(Test95))

median(as.numeric(Test101))
median(as.numeric(Test102))
median(as.numeric(Test103))
median(as.numeric(Test104))
median(as.numeric(Test105))
median(as.numeric(Test106))

median(as.numeric(Test111))
median(as.numeric(Test112))
median(as.numeric(Test113))
median(as.numeric(Test114))
median(as.numeric(Test115))
median(as.numeric(Test116))

median(as.numeric(Test121))
median(as.numeric(Test122))
median(as.numeric(Test123))
median(as.numeric(Test124))
median(as.numeric(Test125))

median(as.numeric(Test131))
median(as.numeric(Test132))
median(as.numeric(Test133))
median(as.numeric(Test134))
median(as.numeric(Test135))
median(as.numeric(Test136))