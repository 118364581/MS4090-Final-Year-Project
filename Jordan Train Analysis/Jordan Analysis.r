
# Set the working directory to the folder containing the CSV files
setwd("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Jordan Test Analysis")

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








par(mfrow = c(1,2))

bpvals = list(length = 20)
names = list(length = 20)

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
main = "Jordan Validation Error Values, Window Size 1", xlab = "Neurons", ylab = "Error Values",
ylim = c(0,1)
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
main = "Jordan Window Size 10", xlab = "Neurons", ylab = "Error Values",
ylim = c(0,1)
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
main = "Jordan Window Size 11", xlab = "Neurons", ylab = "Error Values",
ylim = c(0,1)
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
main = "Jordan Window Size 12", xlab = "Neurons", ylab = "Error Values",
ylim = c(0,1)
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
main = "Jordan Window Size 13", xlab = "Neurons", ylab = "Error Values",
ylim = c(0,1)
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
main = "Jordan Window Size 14", xlab = "Neurons", ylab = "Error Values",
ylim = c(0,1)
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
main = "Jordan Window Size 15", xlab = "Neurons", ylab = "Error Values",
ylim = c(0,1)
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
main = "Jordan Window Size 2", xlab = "Neurons", ylab = "Error Values",
ylim = c(0,1)
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
main = "Jordan Window Size 3", xlab = "Neurons", ylab = "Error Values",
ylim = c(0,1)
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
main = "Jordan Window Size 4", xlab = "Neurons", ylab = "Error Values",
ylim = c(0,1)
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
main = "Jordan Window Size 5", xlab = "Neurons", ylab = "Error Values",
ylim = c(0,1)
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
main = "Jordan Window Size 6", xlab = "Neurons", ylab = "Error Values",
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
main = "Jordan Window Size 7", xlab = "Neurons", ylab = "Error Values",
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
main = "Jordan Window Size 8", xlab = "Neurons", ylab = "Error Values",
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
main = "Jordan Window Size 9", xlab = "Neurons", ylab = "Error Values",
ylim = c(0,1)
)





Test1 <- unlist(lapply(csv_data["Jordan Validation Errors, Window size 2, Neuron Count 2.csv"], as.vector))
for (i in 1:length(Test1))
    if (Test1[i] == '#NAME?')
        Test1[i] = NA

Test2 <- unlist(lapply(csv_data["Jordan Validation Errors, Window size 2, Neuron Count 6.csv"], as.vector))
for (i in 1:length(Test2))
    if (Test2[i] == '#NAME?')
        Test2[i] = NA

Test3 <- unlist(lapply(csv_data["Jordan Validation Errors, Window size 2, Neuron Count 10.csv"], as.vector))
for (i in 1:length(Test3))
    if (Test3[i] == '#NAME?')
        Test3[i] = NA

Test4 <- unlist(lapply(csv_data["Jordan Validation Errors, Window size 2, Neuron Count 11.csv"], as.vector))
for (i in 1:length(Test4))
    if (Test4[i] == '#NAME?')
        Test4[i] = NA

Test5 <- unlist(lapply(csv_data["Jordan Validation Errors, Window size 2, Neuron Count 13.csv"], as.vector))
for (i in 1:length(Test5))
    if (Test5[i] == '#NAME?')
        Test5[i] = NA

Test6 <- unlist(lapply(csv_data["Jordan Validation Errors, Window size 2, Neuron Count 14.csv"], as.vector))
for (i in 1:length(Test6))
    if (Test6[i] == '#NAME?')
        Test6[i] = NA

Test7 <- unlist(lapply(csv_data["Jordan Validation Errors, Window size 2, Neuron Count 16.csv"], as.vector))
for (i in 1:length(Test7))
    if (Test7[i] == '#NAME?')
        Test7[i] = NA

Test8 <- unlist(lapply(csv_data["Jordan Validation Errors, Window size 3, Neuron Count 11.csv"], as.vector))
for (i in 1:length(Test8))
    if (Test8[i] == '#NAME?')
        Test8[i] = NA

Test9 <- unlist(lapply(csv_data["Jordan Validation Errors, Window size 3, Neuron Count 13.csv"], as.vector))
for (i in 1:length(Test9))
    if (Test9[i] == '#NAME?')
        Test9[i] = NA

Test10 <- unlist(lapply(csv_data["Jordan Validation Errors, Window size 3, Neuron Count 14.csv"], as.vector))
for (i in 1:length(Test10))
    if (Test10[i] == '#NAME?')
        Test10[i] = NA

Test11 <- unlist(lapply(csv_data["Jordan Validation Errors, Window size 3, Neuron Count 15.csv"], as.vector))
for (i in 1:length(Test11))
    if (Test11[i] == '#NAME?')
        Test11[i] = NA

Test12 <- unlist(lapply(csv_data["Jordan Validation Errors, Window size 3, Neuron Count 16.csv"], as.vector))
for (i in 1:length(Test12))
    if (Test12[i] == '#NAME?')
        Test12[i] = NA

Test13 <- unlist(lapply(csv_data["Jordan Validation Errors, Window size 3, Neuron Count 17.csv"], as.vector))
for (i in 1:length(Test13))
    if (Test13[i] == '#NAME?')
        Test13[i] = NA

Test14 <- unlist(lapply(csv_data["Jordan Validation Errors, Window size 4, Neuron Count 13.csv"], as.vector))
for (i in 1:length(Test14))
    if (Test14[i] == '#NAME?')
        Test14[i] = NA

Test15 <- unlist(lapply(csv_data["Jordan Validation Errors, Window size 5, Neuron Count 17.csv"], as.vector))
for (i in 1:length(Test15))
    if (Test15[i] == '#NAME?')
        Test15[i] = NA

Test16 <- unlist(lapply(csv_data["Jordan Validation Errors, Window size 5, Neuron Count 14.csv"], as.vector))
for (i in 1:length(Test16))
    if (Test16[i] == '#NAME?')
        Test16[i] = NA

Test17 <- unlist(lapply(csv_data["Jordan Validation Errors, Window size 5, Neuron Count 17.csv"], as.vector))
for (i in 1:length(Test17))
    if (Test17[i] == '#NAME?')
        Test17[i] = NA


par(mfrow = c(1,1))
boxplot(Test1, Test2, Test3, Test4, Test5, Test6, Test7, Test8, Test9, Test10, Test11, Test12, Test13, Test14, Test15, Test16, Test17,
names = c( '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17'),
main = "Jordan Window Size Validation Errors", ylab = "Error rates", xlab = 'Window Size',
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
quantile(Test16, 0.25)
quantile(Test17, 0.25)

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
quantile(Test16, 0.75)
quantile(Test17, 0.75)

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
quantile(Test16, 0.75) - quantile(Test16, 0.25)
quantile(Test17, 0.75) - quantile(Test17, 0.25)


hist(Test2)
hist(Test3)
hist(Test4)
hist(Test5)
hist(Test6)
hist(Test7)
hist(Test8)
hist(Test9)
hist(Test10)
hist(Test11)
hist(Test12)
hist(Test13)
hist(Test14)
hist(Test15)
hist(Test16)
hist(Test17)






