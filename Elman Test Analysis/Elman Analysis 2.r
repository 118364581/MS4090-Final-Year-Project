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
boxplot( Test1, Test2, Test3, Test4, Test5, Test6, main = "Elman Window Size 2", 
names = c('3', '4', '5', '6', '7', '8'), xlab = "Neurons", ylab = "Validation Error Values", ylim = c(0, 0.8)
)

boxplot( Test11, Test12, Test13, Test14, Test15, main = "Elman Window Size 3", 
names = c('4', '5', '6', '7', '8'), xlab = "Neurons", ylab = "Validation Error Values", ylim = c(0, 0.8)
)

boxplot( Test21, Test22, Test23, Test24, Test25, Test26, main = "Elman Window Size 4", 
names = c('4', '5', '6', '7', '8', '9'), xlab = "Neurons", ylab = "Validation Error Values", ylim = c(0, 0.8)
)

boxplot( Test31, Test32, Test33, Test34, Test35, Test36, main = "Elman Window Size 5", 
names = c('5', '6', '7', '8', '9', '10'), xlab = "Neurons", ylab = "Validation Error Values", ylim = c(0, 0.8)
)

boxplot( Test41, Test42, Test43, Test44, Test45, main = "Elman Window Size 6", 
names = c('6', '7', '8', '9', '10'), xlab = "Neurons", ylab = "Validation Error Values", ylim = c(0, 0.8)
)

boxplot( Test51, Test52, Test53, Test54, Test55, Test56, main = "Elman Window Size 7", 
names = c('6', '7', '8', '9', '10', '11'), xlab = "Neurons", ylab = "Validation Error Values", ylim = c(0, 0.8)
)


par(mfrow = c(1,4))
boxplot( Test61, Test62, Test63, Test64, Test65, Test66, main = "Elman Window Size 8", 
names = c('7', '8', '9', '10', '11', '12'), xlab = "Neurons", ylab = "Validation Error Values", ylim = c(0, 0.8)
)

boxplot( Test71, Test72, Test73, Test74, Test75, main = "Elman Window Size 9", 
names = c('8', '9', '10', '11', '12'), xlab = "Neurons", ylab = "Validation Error Values", ylim = c(0, 0.8)
)

boxplot( Test81, Test82, Test83, Test84, Test85, Test86, main = "Elman Window Size 10", 
names = c('8', '9', '10', '11', '12', '13'), xlab = "Neurons", ylab = "Validation Error Values", ylim = c(0, 0.8)
)

boxplot( Test91, Test92, Test93, Test94, Test95, main = "Elman Window Size 11", 
names = c('9', '10', '11', '12', '13'), xlab = "Neurons", ylab = "Validation Error Values", ylim = c(0, 0.8)
)

boxplot( Test101, Test102, Test103, Test104, Test105, Test106, main = "Elman Window Size 12", 
names = c('9', '10', '11', '12', '13', '14'), xlab = "Neurons", ylab = "Validation Error Values", ylim = c(0, 0.8)
)

boxplot( Test111, Test112, Test113, Test114, Test115, Test116, main = "Elman Window Size 13", 
names = c('10', '11', '12', '13', '14', '15'), xlab = "Neurons", ylab = "Validation Error Values", ylim = c(0, 0.8)
)


boxplot( Test121, Test122, Test123, Test124, Test125, main = "Elman Window Size 14", 
names = c('11', '12', '13', '14', '15'), xlab = "Neurons", ylab = "Validation Error Values", ylim = c(0, 0.8)
)

boxplot( Test131, Test132, Test133, Test134, Test135, Test136, main = "Elman Window Size 15", 
names = c('11', '12', '13', '14', '15', '16'), xlab = "Neurons", ylab = "Validation Error Values", ylim = c(0, 0.8)
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




#Forecast Analysis

Forecast1 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 2, Neuron Count 3.csv", header = FALSE)
Forecast2 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 2, Neuron Count 4.csv", header = FALSE)
Forecast3 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 2, Neuron Count 5.csv", header = FALSE)
Forecast4 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 2, Neuron Count 6.csv", header = FALSE)
Forecast5 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 2, Neuron Count 7.csv", header = FALSE)
Forecast6 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 2, Neuron Count 8.csv", header = FALSE)

Forecast11 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 3, Neuron Count 4.csv", header = FALSE)
Forecast12 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 3, Neuron Count 5.csv", header = FALSE)
Forecast13 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 3, Neuron Count 6.csv", header = FALSE)
Forecast14 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 3, Neuron Count 7.csv", header = FALSE)
Forecast15 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 3, Neuron Count 8.csv", header = FALSE)

Forecast21 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 4, Neuron Count 4.csv", header = FALSE)
Forecast22 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 4, Neuron Count 5.csv", header = FALSE)
Forecast23 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 4, Neuron Count 6.csv", header = FALSE)
Forecast23 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 4, Neuron Count 7.csv", header = FALSE)
Forecast24 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 4, Neuron Count 8.csv", header = FALSE)
Forecast25 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 4, Neuron Count 9.csv", header = FALSE)
Forecast26 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 4, Neuron Count 10.csv", header = FALSE)


Forecast31 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 5, Neuron Count 5.csv", header = FALSE)
Forecast32 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 5, Neuron Count 6.csv", header = FALSE)
Forecast33 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 5, Neuron Count 7.csv", header = FALSE)
Forecast34 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 5, Neuron Count 8.csv", header = FALSE)
Forecast35 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 5, Neuron Count 9.csv", header = FALSE)
Forecast36 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 5, Neuron Count 10.csv", header = FALSE)

Forecast41 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 6, Neuron Count 6.csv", header = FALSE)
Forecast42 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 6, Neuron Count 7.csv", header = FALSE)
Forecast43 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 6, Neuron Count 8.csv", header = FALSE)
Forecast44 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 6, Neuron Count 9.csv", header = FALSE)
Forecast45 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 6, Neuron Count 10.csv", header = FALSE)

Forecast51 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 7, Neuron Count 6.csv", header = FALSE)
Forecast52 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 7, Neuron Count 7.csv", header = FALSE)
Forecast53 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 7, Neuron Count 8.csv", header = FALSE)
Forecast54 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 7, Neuron Count 9.csv", header = FALSE)
Forecast55 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 7, Neuron Count 10.csv", header = FALSE)
Forecast56 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 7, Neuron Count 11.csv", header = FALSE)

Forecast61 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 8, Neuron Count 7.csv", header = FALSE)
Forecast62 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 8, Neuron Count 8.csv", header = FALSE)
Forecast63 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 8, Neuron Count 9.csv", header = FALSE)
Forecast64 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 8, Neuron Count 10.csv", header = FALSE)
Forecast65 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 8, Neuron Count 11.csv", header = FALSE)
Forecast66 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 8, Neuron Count 12.csv", header = FALSE)

Forecast71 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 9, Neuron Count 8.csv", header = FALSE)
Forecast72 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 9, Neuron Count 9.csv", header = FALSE)
Forecast73 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 9, Neuron Count 10.csv", header = FALSE)
Forecast74 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 9, Neuron Count 11.csv", header = FALSE)
Forecast75 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 9, Neuron Count 12.csv", header = FALSE)

Forecast81 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 10, Neuron Count 8.csv", header = FALSE)
Forecast82 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 10, Neuron Count 9.csv", header = FALSE)
Forecast83 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 10, Neuron Count 10.csv", header = FALSE)
Forecast84 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 10, Neuron Count 11.csv", header = FALSE)
Forecast85 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 10, Neuron Count 12.csv", header = FALSE)
Forecast86 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 10, Neuron Count 13.csv", header = FALSE)

Forecast91 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 11, Neuron Count 9.csv", header = FALSE)
Forecast92 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 11, Neuron Count 10.csv", header = FALSE)
Forecast93 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 11, Neuron Count 11.csv", header = FALSE)
Forecast94 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 11, Neuron Count 12.csv", header = FALSE)
Forecast95 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 11, Neuron Count 13.csv", header = FALSE)

Forecast101 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 12, Neuron Count 9.csv", header = FALSE)
Forecast102 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 12, Neuron Count 10.csv", header = FALSE)
Forecast103 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 12, Neuron Count 11.csv", header = FALSE)
Forecast104 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 12, Neuron Count 12.csv", header = FALSE)
Forecast105 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 12, Neuron Count 13.csv", header = FALSE)
Forecast106 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 12, Neuron Count 14.csv", header = FALSE)

Forecast111 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 13, Neuron Count 10.csv", header = FALSE)
Forecast112 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 13, Neuron Count 11.csv", header = FALSE)
Forecast113 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 13, Neuron Count 12.csv", header = FALSE)
Forecast114 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 13, Neuron Count 13.csv", header = FALSE)
Forecast115 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 13, Neuron Count 14.csv", header = FALSE)
Forecast116 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 13, Neuron Count 15.csv", header = FALSE)

Forecast121 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 14, Neuron Count 11.csv", header = FALSE)
Forecast122 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 14, Neuron Count 12.csv", header = FALSE)
Forecast123 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 14, Neuron Count 13.csv", header = FALSE)
Forecast124 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 14, Neuron Count 14.csv", header = FALSE)
Forecast125 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 14, Neuron Count 15.csv", header = FALSE)

Forecast131 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 15, Neuron Count 11.csv", header = FALSE)
Forecast132 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 15, Neuron Count 12.csv", header = FALSE)
Forecast133 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 15, Neuron Count 13.csv", header = FALSE)
Forecast134 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 15, Neuron Count 14.csv", header = FALSE)
Forecast135 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 15, Neuron Count 15.csv", header = FALSE)
Forecast136 = read.csv("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Elman Test Analysis\\Elman Forecast, Window size 15, Neuron Count 16.csv", header = FALSE)



Validation_Forecast1 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast1[1+ 4*i + j] = Forecast1[nrow(Forecast1) - 109 + i,j+1]
    }
}

Validation_Forecast2 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast2[1+ 4*i + j] = Forecast2[nrow(Forecast2) - 109 + i,j+1]
    }
}

Validation_Forecast3 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast3[1+ 4*i + j] = Forecast3[nrow(Forecast3) - 109 + i,j+1]
    }
}

Validation_Forecast4 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast4[1+ 4*i + j] = Forecast4[nrow(Forecast4) - 109 + i,j+1]
    }
}

Validation_Forecast5 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast5[1+ 4*i + j] = Forecast5[nrow(Forecast5) - 109 + i,j+1]
    }
}

Validation_Forecast6 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast6[1+ 4*i + j] = Forecast6[nrow(Forecast6) - 109 + i,j+1]
    }
}

Validation_Forecast11 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast11[1+ 4*i + j] = Forecast11[nrow(Forecast11) - 109 + i,j+1]
    }
}

Validation_Forecast12 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast12[1+ 4*i + j] = Forecast12[nrow(Forecast12) - 109 + i,j+1]
    }
}

Validation_Forecast13 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast13[1+ 4*i + j] = Forecast13[nrow(Forecast13) - 109 + i,j+1]
    }
}

Validation_Forecast14 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast14[1+ 4*i + j] = Forecast14[nrow(Forecast14) - 109 + i,j+1]
    }
}

Validation_Forecast15 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast15[1+ 4*i + j] = Forecast15[nrow(Forecast15) - 109 + i,j+1]
    }
}

Validation_Forecast21 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast21[1+ 4*i + j] = Forecast21[nrow(Forecast21) - 109 + i,j+1]
    }
}

Validation_Forecast22 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast22[1+ 4*i + j] = Forecast22[nrow(Forecast22) - 109 + i,j+1]
    }
}

Validation_Forecast23 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast23[1+ 4*i + j] = Forecast23[nrow(Forecast23) - 109 + i,j+1]
    }
}

Validation_Forecast24 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast24[1+ 4*i + j] = Forecast24[nrow(Forecast24) - 109 + i,j+1]
    }
}

Validation_Forecast25 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast25[1+ 4*i + j] = Forecast25[nrow(Forecast25) - 109 + i,j+1]
    }
}

Validation_Forecast26 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast26[1+ 4*i + j] = Forecast26[nrow(Forecast26) - 109 + i,j+1]
    }
}

Validation_Forecast31 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast31[1+ 4*i + j] = Forecast31[nrow(Forecast31) - 109 + i,j+1]
    }
}

Validation_Forecast32 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast32[1+ 4*i + j] = Forecast32[nrow(Forecast32) - 109 + i,j+1]
    }
}

Validation_Forecast33 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast33[1+ 4*i + j] = Forecast33[nrow(Forecast33) - 109 + i,j+1]
    }
}

Validation_Forecast34 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast34[1+ 4*i + j] = Forecast34[nrow(Forecast34) - 109 + i,j+1]
    }
}

Validation_Forecast35 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast35[1+ 4*i + j] = Forecast35[nrow(Forecast35) - 109 + i,j+1]
    }
}

Validation_Forecast36 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast36[1+ 4*i + j] = Forecast36[nrow(Forecast36) - 109 + i,j+1]
    }
}

Validation_Forecast41 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast41[1+ 4*i + j] = Forecast41[nrow(Forecast41) - 109 + i,j+1]
    }
}

Validation_Forecast42 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast42[1+ 4*i + j] = Forecast42[nrow(Forecast42) - 109 + i,j+1]
    }
}

Validation_Forecast43 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast43[1+ 4*i + j] = Forecast43[nrow(Forecast43) - 109 + i,j+1]
    }
}

Validation_Forecast44 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast44[1+ 4*i + j] = Forecast44[nrow(Forecast44) - 109 + i,j+1]
    }
}

Validation_Forecast45 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast45[1+ 4*i + j] = Forecast45[nrow(Forecast45) - 109 + i,j+1]
    }
}

Validation_Forecast51 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast51[1+ 4*i + j] = Forecast51[nrow(Forecast51) - 109 + i,j+1]
    }
}

Validation_Forecast52 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast52[1+ 4*i + j] = Forecast52[nrow(Forecast52) - 109 + i,j+1]
    }
}

Validation_Forecast53 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast53[1+ 4*i + j] = Forecast53[nrow(Forecast53) - 109 + i,j+1]
    }
}

Validation_Forecast54 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast54[1+ 4*i + j] = Forecast54[nrow(Forecast54) - 109 + i,j+1]
    }
}

Validation_Forecast55 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast55[1+ 4*i + j] = Forecast55[nrow(Forecast55) - 109 + i,j+1]
    }
}

Validation_Forecast56 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast56[1+ 4*i + j] = Forecast56[nrow(Forecast56) - 109 + i,j+1]
    }
}

Validation_Forecast61 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast61[1+ 4*i + j] = Forecast61[nrow(Forecast61) - 109 + i,j+1]
    }
}

Validation_Forecast62 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast62[1+ 4*i + j] = Forecast62[nrow(Forecast62) - 109 + i,j+1]
    }
}

Validation_Forecast63 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast63[1+ 4*i + j] = Forecast63[nrow(Forecast63) - 109 + i,j+1]
    }
}

Validation_Forecast64 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast64[1+ 4*i + j] = Forecast64[nrow(Forecast64) - 109 + i,j+1]
    }
}

Validation_Forecast65 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast65[1+ 4*i + j] = Forecast65[nrow(Forecast65) - 109 + i,j+1]
    }
}

Validation_Forecast66 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast66[1+ 4*i + j] = Forecast66[nrow(Forecast66) - 109 + i,j+1]
    }
}

Validation_Forecast71 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast71[1+ 4*i + j] = Forecast71[nrow(Forecast71) - 109 + i,j+1]
    }
}

Validation_Forecast72 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast72[1+ 4*i + j] = Forecast72[nrow(Forecast72) - 109 + i,j+1]
    }
}

Validation_Forecast73 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast73[1+ 4*i + j] = Forecast73[nrow(Forecast73) - 109 + i,j+1]
    }
}

Validation_Forecast74 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast74[1+ 4*i + j] = Forecast74[nrow(Forecast74) - 109 + i,j+1]
    }
}

Validation_Forecast75 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast75[1+ 4*i + j] = Forecast75[nrow(Forecast75) - 109 + i,j+1]
    }
}

Validation_Forecast81 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast81[1+ 4*i + j] = Forecast81[nrow(Forecast81) - 109 + i,j+1]
    }
}

Validation_Forecast82 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast82[1+ 4*i + j] = Forecast82[nrow(Forecast82) - 109 + i,j+1]
    }
}

Validation_Forecast83 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast83[1+ 4*i + j] = Forecast83[nrow(Forecast83) - 109 + i,j+1]
    }
}

Validation_Forecast84 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast84[1+ 4*i + j] = Forecast84[nrow(Forecast84) - 109 + i,j+1]
    }
}

Validation_Forecast85 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast85[1+ 4*i + j] = Forecast85[nrow(Forecast85) - 109 + i,j+1]
    }
}

Validation_Forecast86 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast86[1+ 4*i + j] = Forecast86[nrow(Forecast86) - 109 + i,j+1]
    }
}

Validation_Forecast91 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast91[1+ 4*i + j] = Forecast91[nrow(Forecast91) - 109 + i,j+1]
    }
}

Validation_Forecast92 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast92[1+ 4*i + j] = Forecast92[nrow(Forecast92) - 109 + i,j+1]
    }
}

Validation_Forecast93 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast93[1+ 4*i + j] = Forecast93[nrow(Forecast93) - 109 + i,j+1]
    }
}

Validation_Forecast94 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast94[1+ 4*i + j] = Forecast94[nrow(Forecast94) - 109 + i,j+1]
    }
}

Validation_Forecast95 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast95[1+ 4*i + j] = Forecast95[nrow(Forecast95) - 109 + i,j+1]
    }
}

Validation_Forecast101 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast101[1+ 4*i + j] = Forecast101[nrow(Forecast101) - 109 + i,j+1]
    }
}

Validation_Forecast102 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast102[1+ 4*i + j] = Forecast102[nrow(Forecast102) - 109 + i,j+1]
    }
}

Validation_Forecast103 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast103[1+ 4*i + j] = Forecast103[nrow(Forecast103) - 109 + i,j+1]
    }
}

Validation_Forecast104 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast104[1+ 4*i + j] = Forecast104[nrow(Forecast104) - 109 + i,j+1]
    }
}

Validation_Forecast105 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast105[1+ 4*i + j] = Forecast105[nrow(Forecast105) - 109 + i,j+1]
    }
}

Validation_Forecast106 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast106[1+ 4*i + j] = Forecast106[nrow(Forecast106) - 109 + i,j+1]
    }
}

Validation_Forecast111 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast111[1+ 4*i + j] = Forecast111[nrow(Forecast111) - 109 + i,j+1]
    }
}

Validation_Forecast112 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast112[1+ 4*i + j] = Forecast112[nrow(Forecast112) - 109 + i,j+1]
    }
}

Validation_Forecast113 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast113[1+ 4*i + j] = Forecast113[nrow(Forecast113) - 109 + i,j+1]
    }
}

Validation_Forecast114 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast114[1+ 4*i + j] = Forecast114[nrow(Forecast114) - 109 + i,j+1]
    }
}

Validation_Forecast115 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast115[1+ 4*i + j] = Forecast115[nrow(Forecast115) - 109 + i,j+1]
    }
}

Validation_Forecast116 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast116[1+ 4*i + j] = Forecast116[nrow(Forecast116) - 109 + i,j+1]
    }
}

Validation_Forecast121 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast121[1+ 4*i + j] = Forecast121[nrow(Forecast121) - 109 + i,j+1]
    }
}

Validation_Forecast122 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast122[1+ 4*i + j] = Forecast122[nrow(Forecast122) - 109 + i,j+1]
    }
}

Validation_Forecast123 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast123[1+ 4*i + j] = Forecast123[nrow(Forecast123) - 109 + i,j+1]
    }
}

Validation_Forecast124 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast124[1+ 4*i + j] = Forecast124[nrow(Forecast124) - 109 + i,j+1]
    }
}

Validation_Forecast125 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast125[1+ 4*i + j] = Forecast125[nrow(Forecast125) - 109 + i,j+1]
    }
}

Validation_Forecast131 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast131[1+ 4*i + j] = Forecast131[nrow(Forecast131) - 109 + i,j+1]
    }
}

Validation_Forecast132 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast132[1+ 4*i + j] = Forecast132[nrow(Forecast132) - 109 + i,j+1]
    }
}

Validation_Forecast133 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast133[1+ 4*i + j] = Forecast133[nrow(Forecast133) - 109 + i,j+1]
    }
}

Validation_Forecast134 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast134[1+ 4*i + j] = Forecast134[nrow(Forecast134) - 109 + i,j+1]
    }
}

Validation_Forecast135 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast135[1+ 4*i + j] = Forecast135[nrow(Forecast135) - 109 + i,j+1]
    }
}

Validation_Forecast136 = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast136[1+ 4*i + j] = Forecast136[nrow(Forecast136) - 109 + i,j+1]
    }
}



ReCA.Forecast1 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Results Data\\ReCA Forecast Results 1.csv", header = FALSE)

Validation_Forecast_Bench = vector(length = 184, mode = 'double')
for (i in 0:45){
    for (j in 0:3){
        Validation_Forecast_Bench[1+ 4*i + j] = ReCA.Forecast1[nrow(ReCA.Forecast1) - 109 + i,j+1]
    }
}
length(Validation_Forecast_Bench[Validation_Forecast_Bench > 0.3])


anyNA( Validation_Forecast1)
anyNA( Validation_Forecast2)
anyNA( Validation_Forecast4)
anyNA( Validation_Forecast5)
anyNA( Validation_Forecast6)
anyNA( Validation_Forecast11)
anyNA( Validation_Forecast12)
anyNA( Validation_Forecast13)
anyNA( Validation_Forecast14)
anyNA( Validation_Forecast15)
anyNA( Validation_Forecast21)
anyNA( Validation_Forecast22)
anyNA( Validation_Forecast23)
anyNA( Validation_Forecast24)
anyNA( Validation_Forecast25)
anyNA( Validation_Forecast26)
anyNA( Validation_Forecast31)
anyNA( Validation_Forecast32)
anyNA( Validation_Forecast33)
anyNA( Validation_Forecast34)
anyNA( Validation_Forecast35)
anyNA( Validation_Forecast36)
anyNA( Validation_Forecast41)
anyNA( Validation_Forecast42)
anyNA( Validation_Forecast43)
anyNA( Validation_Forecast44)
anyNA( Validation_Forecast45)
anyNA( Validation_Forecast51)
anyNA( Validation_Forecast52)
anyNA( Validation_Forecast53)
anyNA( Validation_Forecast54)
anyNA( Validation_Forecast55)
anyNA( Validation_Forecast56)
anyNA( Validation_Forecast61)
anyNA( Validation_Forecast62)
anyNA( Validation_Forecast63)
anyNA( Validation_Forecast64)
anyNA( Validation_Forecast65)
anyNA( Validation_Forecast66)
anyNA( Validation_Forecast71)
anyNA( Validation_Forecast72)
anyNA( Validation_Forecast73)
anyNA( Validation_Forecast74)
anyNA( Validation_Forecast75)
anyNA( Validation_Forecast81)
anyNA( Validation_Forecast82)
anyNA( Validation_Forecast83)
anyNA( Validation_Forecast84)
anyNA( Validation_Forecast85)
anyNA( Validation_Forecast86)
anyNA( Validation_Forecast91)
anyNA( Validation_Forecast92)
anyNA( Validation_Forecast93)
anyNA( Validation_Forecast94)
anyNA( Validation_Forecast95)
anyNA( Validation_Forecast101)
anyNA( Validation_Forecast102)
anyNA( Validation_Forecast103)
anyNA( Validation_Forecast104)
anyNA( Validation_Forecast105)
anyNA( Validation_Forecast106)
anyNA( Validation_Forecast111)
anyNA( Validation_Forecast112)
anyNA( Validation_Forecast113)
anyNA( Validation_Forecast114)
anyNA( Validation_Forecast115)
anyNA( Validation_Forecast116)
anyNA( Validation_Forecast121)
anyNA( Validation_Forecast122)
anyNA( Validation_Forecast123)
anyNA( Validation_Forecast124)
anyNA( Validation_Forecast125)
anyNA( Validation_Forecast131)
anyNA( Validation_Forecast132)
anyNA( Validation_Forecast133)
anyNA( Validation_Forecast134)
anyNA( Validation_Forecast135)
anyNA( Validation_Forecast136)




length(Validation_Forecast1[Validation_Forecast1 > 0.3])
length(Validation_Forecast2[Validation_Forecast2 > 0.3])
length(Validation_Forecast3[Validation_Forecast3 > 0.3])
length(Validation_Forecast4[Validation_Forecast4 > 0.3])
length(Validation_Forecast5[Validation_Forecast5 > 0.3])
length(Validation_Forecast6[Validation_Forecast6 > 0.3])
length(Validation_Forecast11[Validation_Forecast11 > 0.3])
length(Validation_Forecast12[Validation_Forecast12 > 0.3])
length(Validation_Forecast13[Validation_Forecast13 > 0.3])
length(Validation_Forecast14[Validation_Forecast14 > 0.3])
length(Validation_Forecast15[Validation_Forecast15 > 0.3])
length(Validation_Forecast21[Validation_Forecast21 > 0.3])
length(Validation_Forecast22[Validation_Forecast22 > 0.3])
length(Validation_Forecast23[Validation_Forecast23 > 0.3])
length(Validation_Forecast24[Validation_Forecast24 > 0.3])
length(Validation_Forecast25[Validation_Forecast25 > 0.3])
length(Validation_Forecast26[Validation_Forecast26 > 0.3])
length(Validation_Forecast31[Validation_Forecast31 > 0.3])
length(Validation_Forecast32[Validation_Forecast32 > 0.3])
length(Validation_Forecast33[Validation_Forecast33 > 0.3])
length(Validation_Forecast34[Validation_Forecast34 > 0.3])
length(Validation_Forecast35[Validation_Forecast35 > 0.3])
length(Validation_Forecast36[Validation_Forecast36 > 0.3])
length(Validation_Forecast41[Validation_Forecast41 > 0.3])
length(Validation_Forecast42[Validation_Forecast42 > 0.3])
length(Validation_Forecast43[Validation_Forecast43 > 0.3])
length(Validation_Forecast44[Validation_Forecast44 > 0.3])
length(Validation_Forecast45[Validation_Forecast45 > 0.3])
length(Validation_Forecast51[Validation_Forecast51 > 0.3])
length(Validation_Forecast52[Validation_Forecast52 > 0.3])
length(Validation_Forecast53[Validation_Forecast53 > 0.3])
length(Validation_Forecast54[Validation_Forecast54 > 0.3])
length(Validation_Forecast55[Validation_Forecast55 > 0.3])
length(Validation_Forecast56[Validation_Forecast56 > 0.3])
length(Validation_Forecast61[Validation_Forecast61 > 0.3])
length(Validation_Forecast62[Validation_Forecast62 > 0.3])
length(Validation_Forecast63[Validation_Forecast63 > 0.3])
length(Validation_Forecast64[Validation_Forecast64 > 0.3])
length(Validation_Forecast65[Validation_Forecast65 > 0.3])
length(Validation_Forecast66[Validation_Forecast66 > 0.3])
length(Validation_Forecast71[Validation_Forecast71 > 0.3])
length(Validation_Forecast72[Validation_Forecast72 > 0.3])
length(Validation_Forecast73[Validation_Forecast73 > 0.3])
length(Validation_Forecast74[Validation_Forecast74 > 0.3])
length(Validation_Forecast75[Validation_Forecast75 > 0.3])
length(Validation_Forecast81[Validation_Forecast81 > 0.3])
length(Validation_Forecast82[Validation_Forecast82 > 0.3])
length(Validation_Forecast83[Validation_Forecast83 > 0.3])
length(Validation_Forecast84[Validation_Forecast84 > 0.3])
length(Validation_Forecast85[Validation_Forecast85 > 0.3])
length(Validation_Forecast86[Validation_Forecast86 > 0.3])
length(Validation_Forecast91[Validation_Forecast91 > 0.3])
length(Validation_Forecast92[Validation_Forecast92 > 0.3])
length(Validation_Forecast93[Validation_Forecast93 > 0.3])
length(Validation_Forecast94[Validation_Forecast94 > 0.3])
length(Validation_Forecast95[Validation_Forecast95 > 0.3])
length(Validation_Forecast101[Validation_Forecast101 > 0.3])
length(Validation_Forecast102[Validation_Forecast102 > 0.3])
length(Validation_Forecast103[Validation_Forecast103 > 0.3])
length(Validation_Forecast104[Validation_Forecast104 > 0.3])
length(Validation_Forecast105[Validation_Forecast105 > 0.3])
length(Validation_Forecast106[Validation_Forecast106 > 0.3])
length(Validation_Forecast111[Validation_Forecast111 > 0.3])
length(Validation_Forecast112[Validation_Forecast112 > 0.3])
length(Validation_Forecast113[Validation_Forecast113 > 0.3])
length(Validation_Forecast114[Validation_Forecast114 > 0.3])
length(Validation_Forecast115[Validation_Forecast115 > 0.3])
length(Validation_Forecast116[Validation_Forecast116 > 0.3])
length(Validation_Forecast121[Validation_Forecast121 > 0.3])
length(Validation_Forecast122[Validation_Forecast122 > 0.3])
length(Validation_Forecast123[Validation_Forecast123 > 0.3])
length(Validation_Forecast124[Validation_Forecast124 > 0.3])
length(Validation_Forecast125[Validation_Forecast125 > 0.3])
length(Validation_Forecast131[Validation_Forecast131 > 0.3])
length(Validation_Forecast132[Validation_Forecast132 > 0.3])
length(Validation_Forecast133[Validation_Forecast133 > 0.3])
length(Validation_Forecast134[Validation_Forecast134 > 0.3])
length(Validation_Forecast135[Validation_Forecast135 > 0.3])
length(Validation_Forecast136[Validation_Forecast136 > 0.3])

par(mfrow = c(1,2))
hist(Test45, xlim = c(0,1), main = "Elman Validation Weighted Error Values", xlab = 'Weighted Error Values', ylab = 'Frequency', breaks = seq(0, 1, 0.05))
hist(Validation_Forecast45, xlim = c(0,1), main = "Elman Validation Forecast Values", xlab = 'Probability Distribution', ylab = 'Frequency', breaks = seq(0, 1, 0.05))
Test35
Forecast113

Validation_Forecast_Bench

hist(Validation_Forecast45, breaks = seq(0, 1, 0.05))
Validation_Forecast45

Test45
Validation_Forecast66

length(Validation_Forecast_Bench[Validation_Forecast_Bench > 0.3])
length(Validation_Forecast1[Validation_Forecast1 > 0.3])
length(Validation_Forecast2[Validation_Forecast2 > 0.3])
length(Validation_Forecast3[Validation_Forecast3 > 0.3])
length(Validation_Forecast4[Validation_Forecast4 > 0.3])
length(Validation_Forecast11[Validation_Forecast11 > 0.3])
length(Validation_Forecast12[Validation_Forecast12 > 0.3])
length(Validation_Forecast13[Validation_Forecast13 > 0.3])
length(Validation_Forecast21[Validation_Forecast21 > 0.3])
length(Validation_Forecast22[Validation_Forecast22 > 0.3])
length(Validation_Forecast24[Validation_Forecast24 > 0.3])
length(Validation_Forecast26[Validation_Forecast26 > 0.3])
length(Validation_Forecast31[Validation_Forecast31 > 0.3])
length(Validation_Forecast32[Validation_Forecast32 > 0.3])
length(Validation_Forecast33[Validation_Forecast33 > 0.3])
length(Validation_Forecast35[Validation_Forecast35 > 0.3])
length(Validation_Forecast43[Validation_Forecast43 > 0.3])
length(Validation_Forecast44[Validation_Forecast44 > 0.3])
length(Validation_Forecast45[Validation_Forecast45 > 0.3])
length(Validation_Forecast53[Validation_Forecast53 > 0.3])
length(Validation_Forecast54[Validation_Forecast54 > 0.3])
length(Validation_Forecast62[Validation_Forecast62 > 0.3])
length(Validation_Forecast66[Validation_Forecast66 > 0.3])
length(Validation_Forecast72[Validation_Forecast72 > 0.3])
length(Validation_Forecast83[Validation_Forecast83 > 0.3])
length(Validation_Forecast85[Validation_Forecast85 > 0.3])
length(Validation_Forecast91[Validation_Forecast91 > 0.3])
length(Validation_Forecast92[Validation_Forecast92 > 0.3])
length(Validation_Forecast102[Validation_Forecast102 > 0.3])
length(Validation_Forecast103[Validation_Forecast103 > 0.3])
length(Validation_Forecast105[Validation_Forecast105 > 0.3])
length(Validation_Forecast106[Validation_Forecast106 > 0.3])
length(Validation_Forecast115[Validation_Forecast115 > 0.3])
length(Validation_Forecast121[Validation_Forecast121 > 0.3])
length(Validation_Forecast123[Validation_Forecast123 > 0.3])
length(Validation_Forecast125[Validation_Forecast125 > 0.3])
length(Validation_Forecast131[Validation_Forecast131 > 0.3])

summary(Validation_Forecast_Bench)
summary(Validation_Forecast1)
summary(Validation_Forecast2)
summary(Validation_Forecast3)
summary(Validation_Forecast4)
summary(Validation_Forecast11)
summary(Validation_Forecast12)
summary(Validation_Forecast13)
summary(Validation_Forecast21)
summary(Validation_Forecast22)
summary(Validation_Forecast24)
summary(Validation_Forecast26)
summary(Validation_Forecast31)
summary(Validation_Forecast32)
summary(Validation_Forecast33)
summary(Validation_Forecast35)
summary(Validation_Forecast43)
summary(Validation_Forecast44)
summary(Validation_Forecast45)
summary(Validation_Forecast53)
summary(Validation_Forecast54)
summary(Validation_Forecast62)
summary(Validation_Forecast66)
summary(Validation_Forecast72)
summary(Validation_Forecast83)
summary(Validation_Forecast85)
summary(Validation_Forecast91)
summary(Validation_Forecast92)
summary(Validation_Forecast102)
summary(Validation_Forecast103)
summary(Validation_Forecast105)
summary(Validation_Forecast115)
summary(Validation_Forecast121)
summary(Validation_Forecast123)
summary(Validation_Forecast125)
summary(Validation_Forecast131)




