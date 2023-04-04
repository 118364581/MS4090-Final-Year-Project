# Set the working directory to the folder containing the CSV files
setwd("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Rule Test Analysis")

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

par(mfrow = c(1,1))

Test0 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 0.csv"], as.vector))
for (i in 1:length(Test0))
    if (Test0[i] == '#NAME?')
        Test0[i] = NA

Test1 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 1.csv"], as.vector))
for (i in 1:length(Test1))
    if (Test1[i] == '#NAME?')
        Test1[i] = NA

Test2 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 2.csv"], as.vector))
for (i in 1:length(Test2))
    if (Test2[i] == '#NAME?')
        Test2[i] = NA

Test3 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 3.csv"], as.vector))
for (i in 1:length(Test3))
    if (Test3[i] == '#NAME?')
        Test3[i] = NA

Test4 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 4.csv"], as.vector))
for (i in 1:length(Test4))
    if (Test4[i] == '#NAME?')
        Test4[i] = NA

Test5 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 5.csv"], as.vector))
for (i in 1:length(Test5))
    if (Test5[i] == '#NAME?')
        Test5[i] = NA

Test6 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 6.csv"], as.vector))
for (i in 1:length(Test6))
    if (Test6[i] == '#NAME?')
        Test6[i] = NA

Test7 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 7.csv"], as.vector))
for (i in 1:length(Test7))
    if (Test7[i] == '#NAME?')
        Test7[i] = NA

Test8 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 8.csv"], as.vector))
for (i in 1:length(Test8))
    if (Test8[i] == '#NAME?')
        Test8[i] = NA

Test9 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 9.csv"], as.vector))
for (i in 1:length(Test9))
    if (Test9[i] == '#NAME?')
        Test9[i] = NA

Test10 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 10.csv"], as.vector))
for (i in 1:length(Test10))
    if (Test10[i] == '#NAME?')
        Test10[i] = NA

Test11 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 11.csv"], as.vector))
for (i in 1:length(Test11))
    if (Test11[i] == '#NAME?')
        Test11[i] = NA

Test12 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 12.csv"], as.vector))
for (i in 1:length(Test12))
    if (Test12[i] == '#NAME?')
        Test12[i] = NA

Test13 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 13.csv"], as.vector))
for (i in 1:length(Test13))
    if (Test13[i] == '#NAME?')
        Test13[i] = NA

Test14 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 14.csv"], as.vector))
for (i in 1:length(Test14))
    if (Test14[i] == '#NAME?')
        Test14[i] = NA

Test15 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 15.csv"], as.vector))
for (i in 1:length(Test15))
    if (Test15[i] == '#NAME?')
        Test15[i] = NA

Test16 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 16.csv"], as.vector))
for (i in 1:length(Test16))
    if (Test16[i] == '#NAME?')
        Test16[i] = NA

Test17 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 17.csv"], as.vector))
for (i in 1:length(Test17))
    if (Test17[i] == '#NAME?')
        Test17[i] = NA

Test18 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 18.csv"], as.vector))
for (i in 1:length(Test18))
    if (Test18[i] == '#NAME?')
        Test18[i] = NA

Test19 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 19.csv"], as.vector))
for (i in 1:length(Test19))
    if (Test19[i] == '#NAME?')
        Test19[i] = NA

Test20 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 20.csv"], as.vector))
for (i in 1:length(Test20))
    if (Test20[i] == '#NAME?')
        Test20[i] = NA

Test21 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 21.csv"], as.vector))
for (i in 1:length(Test21))
    if (Test21[i] == '#NAME?')
        Test21[i] = NA

Test22 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 22.csv"], as.vector))
for (i in 1:length(Test22))
    if (Test22[i] == '#NAME?')
        Test22[i] = NA

Test23 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 23.csv"], as.vector))
for (i in 1:length(Test23))
    if (Test23[i] == '#NAME?')
        Test23[i] = NA

Test24 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 24.csv"], as.vector))
for (i in 1:length(Test24))
    if (Test24[i] == '#NAME?')
        Test24[i] = NA

Test25 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 25.csv"], as.vector))
for (i in 1:length(Test25))
    if (Test25[i] == '#NAME?')
        Test25[i] = NA

Test26 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 26.csv"], as.vector))
for (i in 1:length(Test26))
    if (Test26[i] == '#NAME?')
        Test26[i] = NA

Test27 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 27.csv"], as.vector))
for (i in 1:length(Test27))
    if (Test27[i] == '#NAME?')
        Test27[i] = NA

Test28 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 28.csv"], as.vector))
for (i in 1:length(Test28))
    if (Test28[i] == '#NAME?')
        Test28[i] = NA

Test29 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 29.csv"], as.vector))
for (i in 1:length(Test29))
    if (Test29[i] == '#NAME?')
        Test29[i] = NA

Test30 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 30.csv"], as.vector))
for (i in 1:length(Test30))
    if (Test30[i] == '#NAME?')
        Test30[i] = NA

Test31 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 31.csv"], as.vector))
for (i in 1:length(Test31))
    if (Test31[i] == '#NAME?')
        Test31[i] = NA

boxplot(Test0, Test1, Test2, Test3, Test4, Test5, Test6, Test7, Test8, Test9, Test10, Test11, Test12, Test13, Test14, Test15, Test16, Test17, Test18, Test19, Test20, Test21, Test22, Test23, Test24, Test25, Test26, Test27, Test28, Test29, Test30, Test31, 
names = c( '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31'),
main = "Rules Validation Error Rates", ylab = "Error rates", xlab = 'Rules',
ylim = c(0,1))




Test32 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 32.csv"], as.vector))
for (i in 1:length(Test32))
    if (Test32[i] == '#NAME?')
        Test32[i] = NA

Test33<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 33.csv"], as.vector))
for (i in 1:length(Test33))
    if (Test33[i] == '#NAME?')
        Test33[i] = NA

Test34 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 34.csv"], as.vector))
for (i in 1:length(Test34))
    if (Test34[i] == '#NAME?')
        Test34[i] = NA

Test35 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 35.csv"], as.vector))
for (i in 1:length(Test35))
    if (Test35[i] == '#NAME?')
        Test35[i] = NA

Test36 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 36.csv"], as.vector))
for (i in 1:length(Test36))
    if (Test36[i] == '#NAME?')
        Test36[i] = NA

Test37 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 37.csv"], as.vector))
for (i in 1:length(Test37))
    if (Test37[i] == '#NAME?')
        Test37[i] = NA

Test38 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 38.csv"], as.vector))
for (i in 1:length(Test38))
    if (Test38[i] == '#NAME?')
        Test38[i] = NA

Test39 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 39.csv"], as.vector))
for (i in 1:length(Test39))
    if (Test39[i] == '#NAME?')
        Test39[i] = NA

Test40 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 40.csv"], as.vector))
for (i in 1:length(Test40))
    if (Test40[i] == '#NAME?')
        Test40[i] = NA

Test41 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 41.csv"], as.vector))
for (i in 1:length(Test41))
    if (Test41[i] == '#NAME?')
        Test41[i] = NA

Test42<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 42.csv"], as.vector))
for (i in 1:length(Test42))
    if (Test42[i] == '#NAME?')
        Test42[i] = NA

Test43<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 43.csv"], as.vector))
for (i in 1:length(Test43))
    if (Test43[i] == '#NAME?')
        Test43[i] = NA

Test44 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 44.csv"], as.vector))
for (i in 1:length(Test44))
    if (Test44[i] == '#NAME?')
        Test44[i] = NA

Test45 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 45.csv"], as.vector))
for (i in 1:length(Test45))
    if (Test45[i] == '#NAME?')
        Test45[i] = NA

Test46 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 46.csv"], as.vector))
for (i in 1:length(Test46))
    if (Test46[i] == '#NAME?')
        Test46[i] = NA

Test47 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 47.csv"], as.vector))
for (i in 1:length(Test47))
    if (Test47[i] == '#NAME?')
        Test47[i] = NA

Test48 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 48.csv"], as.vector))
for (i in 1:length(Test48))
    if (Test48[i] == '#NAME?')
        Test48[i] = NA

Test49 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 49.csv"], as.vector))
for (i in 1:length(Test49))
    if (Test49[i] == '#NAME?')
        Test49[i] = NA

Test50 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 50.csv"], as.vector))
for (i in 1:length(Test50))
    if (Test50[i] == '#NAME?')
        Test50[i] = NA

Test51 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 51.csv"], as.vector))
for (i in 1:length(Test51))
    if (Test51[i] == '#NAME?')
        Test51[i] = NA

Test52 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 52.csv"], as.vector))
for (i in 1:length(Test52))
    if (Test52[i] == '#NAME?')
        Test52[i] = NA

Test53<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 53.csv"], as.vector))
for (i in 1:length(Test53))
    if (Test53[i] == '#NAME?')
        Test53[i] = NA

Test54 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 54.csv"], as.vector))
for (i in 1:length(Test54))
    if (Test54[i] == '#NAME?')
        Test54[i] = NA

Test55 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 55.csv"], as.vector))
for (i in 1:length(Test55))
    if (Test55[i] == '#NAME?')
        Test55[i] = NA

Test56 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 56.csv"], as.vector))
for (i in 1:length(Test56))
    if (Test56[i] == '#NAME?')
        Test56[i] = NA

Test57 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 57.csv"], as.vector))
for (i in 1:length(Test57))
    if (Test57[i] == '#NAME?')
        Test57[i] = NA

Test58 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 58.csv"], as.vector))
for (i in 1:length(Test58))
    if (Test58[i] == '#NAME?')
        Test58[i] = NA

Test59 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 59.csv"], as.vector))
for (i in 1:length(Test59))
    if (Test59[i] == '#NAME?')
        Test59[i] = NA

Test60 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 60.csv"], as.vector))
for (i in 1:length(Test60))
    if (Test60[i] == '#NAME?')
        Test60[i] = NA

Test61 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 61.csv"], as.vector))
for (i in 1:length(Test61))
    if (Test61[i] == '#NAME?')
        Test61[i] = NA

Test62 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 62.csv"], as.vector))
for (i in 1:length(Test62))
    if (Test62[i] == '#NAME?')
        Test62[i] = NA

Test63<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 63.csv"], as.vector))
for (i in 1:length(Test63))
    if (Test63[i] == '#NAME?')
        Test63[i] = NA


boxplot(Test32, Test33, Test34, Test35, Test36, Test37, Test38, Test39, Test40, Test41, Test42, Test43, Test44, Test45, Test46, Test47, Test48, Test49, Test50, Test51, Test52, Test53, Test54, Test55, Test56, Test57, Test58, Test59, Test60, Test61, Test62, Test63, 
names = c( '32', '33', '34', '35', '36', '37', '38', '39', '40', '41', '42', '43', '44', '45', '46', '47', '48', '49', '50', '51', '52', '53', '54', '55', '56', '57', '58', '59', '60', '61', '62', '63'),
main = "Rules Validation Error Rates", ylab = "Error rates", xlab = 'Rules',
ylim = c(0,1))




Test64 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 64.csv"], as.vector))
for (i in 1:length(Test64))
    if (Test64[i] == '#NAME?')
        Test64[i] = NA

Test65<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 65.csv"], as.vector))
for (i in 1:length(Test65))
    if (Test65[i] == '#NAME?')
        Test65[i] = NA

Test66 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 66.csv"], as.vector))
for (i in 1:length(Test66))
    if (Test66[i] == '#NAME?')
        Test66[i] = NA

Test67 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 67.csv"], as.vector))
for (i in 1:length(Test67))
    if (Test67[i] == '#NAME?')
        Test67[i] = NA

Test68 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 68.csv"], as.vector))
for (i in 1:length(Test68))
    if (Test68[i] == '#NAME?')
        Test68[i] = NA

Test69 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 69.csv"], as.vector))
for (i in 1:length(Test69))
    if (Test69[i] == '#NAME?')
        Test69[i] = NA

Test70 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 70.csv"], as.vector))
for (i in 1:length(Test70))
    if (Test70[i] == '#NAME?')
        Test70[i] = NA

Test71 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 71.csv"], as.vector))
for (i in 1:length(Test71))
    if (Test71[i] == '#NAME?')
        Test71[i] = NA

Test72 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 72.csv"], as.vector))
for (i in 1:length(Test72))
    if (Test72[i] == '#NAME?')
        Test72[i] = NA

Test73 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 73.csv"], as.vector))
for (i in 1:length(Test73))
    if (Test73[i] == '#NAME?')
        Test73[i] = NA

Test74<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 74.csv"], as.vector))
for (i in 1:length(Test74))
    if (Test74[i] == '#NAME?')
        Test74[i] = NA

Test75<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 75.csv"], as.vector))
for (i in 1:length(Test75))
    if (Test75[i] == '#NAME?')
        Test75[i] = NA

Test76 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 76.csv"], as.vector))
for (i in 1:length(Test76))
    if (Test76[i] == '#NAME?')
        Test76[i] = NA

Test77 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 77.csv"], as.vector))
for (i in 1:length(Test77))
    if (Test77[i] == '#NAME?')
        Test77[i] = NA

Test78 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 78.csv"], as.vector))
for (i in 1:length(Test78))
    if (Test78[i] == '#NAME?')
        Test78[i] = NA

Test79 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 79.csv"], as.vector))
for (i in 1:length(Test79))
    if (Test79[i] == '#NAME?')
        Test79[i] = NA

Test80 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 80.csv"], as.vector))
for (i in 1:length(Test80))
    if (Test80[i] == '#NAME?')
        Test80[i] = NA

Test81 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 81.csv"], as.vector))
for (i in 1:length(Test81))
    if (Test81[i] == '#NAME?')
        Test81[i] = NA

Test82 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 82.csv"], as.vector))
for (i in 1:length(Test82))
    if (Test82[i] == '#NAME?')
        Test82[i] = NA

Test83 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 83.csv"], as.vector))
for (i in 1:length(Test83))
    if (Test83[i] == '#NAME?')
        Test83[i] = NA

Test84 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 84.csv"], as.vector))
for (i in 1:length(Test84))
    if (Test84[i] == '#NAME?')
        Test84[i] = NA

Test85<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 85.csv"], as.vector))
for (i in 1:length(Test85))
    if (Test85[i] == '#NAME?')
        Test85[i] = NA

Test86 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 86.csv"], as.vector))
for (i in 1:length(Test86))
    if (Test86[i] == '#NAME?')
        Test86[i] = NA

Test87 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 87.csv"], as.vector))
for (i in 1:length(Test87))
    if (Test87[i] == '#NAME?')
        Test87[i] = NA

Test88 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 88.csv"], as.vector))
for (i in 1:length(Test88))
    if (Test88[i] == '#NAME?')
        Test88[i] = NA

Test89 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 89.csv"], as.vector))
for (i in 1:length(Test89))
    if (Test89[i] == '#NAME?')
        Test89[i] = NA

Test90 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 90.csv"], as.vector))
for (i in 1:length(Test90))
    if (Test90[i] == '#NAME?')
        Test90[i] = NA

Test91 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 91.csv"], as.vector))
for (i in 1:length(Test91))
    if (Test91[i] == '#NAME?')
        Test91[i] = NA

Test92 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 92.csv"], as.vector))
for (i in 1:length(Test92))
    if (Test92[i] == '#NAME?')
        Test92[i] = NA

Test93 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 93.csv"], as.vector))
for (i in 1:length(Test93))
    if (Test93[i] == '#NAME?')
        Test93[i] = NA

Test94 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 94.csv"], as.vector))
for (i in 1:length(Test94))
    if (Test94[i] == '#NAME?')
        Test94[i] = NA

Test95<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 95.csv"], as.vector))
for (i in 1:length(Test95))
    if (Test95[i] == '#NAME?')
        Test95[i] = NA


boxplot(Test64, Test65, Test66, Test67, Test68, Test69, Test70, Test71, Test72, Test73, Test74, Test75, Test76, Test77, Test78, Test79, Test80, Test81, Test82, Test83, Test84, Test85, Test86, Test87, Test88, Test89, Test90, Test91, Test92, Test93, Test94, Test95, 
names = c( '64', '65', '66', '67', '68', '69', '70', '71', '72', '73', '74', '75', '76', '77', '78', '79', '80', '81', '82', '83', '84', '85', '86', '87', '88', '89', '90', '91', '92', '93', '94', '95'),
main = "Rules Validation Error Rates", ylab = "Error rates", xlab = 'Rules',
ylim = c(0,1))




Test96 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 96.csv"], as.vector))
for (i in 1:length(Test96))
    if (Test96[i] == '#NAME?')
        Test96[i] = NA

Test97<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 97.csv"], as.vector))
for (i in 1:length(Test97))
    if (Test97[i] == '#NAME?')
        Test97[i] = NA

Test98 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 98.csv"], as.vector))
for (i in 1:length(Test98))
    if (Test98[i] == '#NAME?')
        Test98[i] = NA

Test99 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 99.csv"], as.vector))
for (i in 1:length(Test99))
    if (Test99[i] == '#NAME?')
        Test99[i] = NA

Test100 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 100.csv"], as.vector))
for (i in 1:length(Test100))
    if (Test100[i] == '#NAME?')
        Test100[i] = NA

Test101 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 101.csv"], as.vector))
for (i in 1:length(Test101))
    if (Test101[i] == '#NAME?')
        Test101[i] = NA

Test102 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 102.csv"], as.vector))
for (i in 1:length(Test102))
    if (Test102[i] == '#NAME?')
        Test102[i] = NA

Test103 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 103.csv"], as.vector))
for (i in 1:length(Test103))
    if (Test103[i] == '#NAME?')
        Test103[i] = NA

Test104 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 104.csv"], as.vector))
for (i in 1:length(Test104))
    if (Test104[i] == '#NAME?')
        Test104[i] = NA

Test105 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 105.csv"], as.vector))
for (i in 1:length(Test105))
    if (Test105[i] == '#NAME?')
        Test105[i] = NA

Test106<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 106.csv"], as.vector))
for (i in 1:length(Test106))
    if (Test106[i] == '#NAME?')
        Test106[i] = NA

Test107<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 107.csv"], as.vector))
for (i in 1:length(Test107))
    if (Test107[i] == '#NAME?')
        Test107[i] = NA

Test108 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 108.csv"], as.vector))
for (i in 1:length(Test108))
    if (Test108[i] == '#NAME?')
        Test108[i] = NA

Test109 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 109.csv"], as.vector))
for (i in 1:length(Test109))
    if (Test109[i] == '#NAME?')
        Test109[i] = NA

Test110 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 110.csv"], as.vector))
for (i in 1:length(Test110))
    if (Test110[i] == '#NAME?')
        Test110[i] = NA

Test111 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 111.csv"], as.vector))
for (i in 1:length(Test111))
    if (Test111[i] == '#NAME?')
        Test111[i] = NA

Test112 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 112.csv"], as.vector))
for (i in 1:length(Test112))
    if (Test112[i] == '#NAME?')
        Test112[i] = NA

Test113 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 113.csv"], as.vector))
for (i in 1:length(Test113))
    if (Test113[i] == '#NAME?')
        Test113[i] = NA

Test114 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 114.csv"], as.vector))
for (i in 1:length(Test114))
    if (Test114[i] == '#NAME?')
        Test114[i] = NA

Test115 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 115.csv"], as.vector))
for (i in 1:length(Test115))
    if (Test115[i] == '#NAME?')
        Test115[i] = NA

Test116 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 116.csv"], as.vector))
for (i in 1:length(Test116))
    if (Test116[i] == '#NAME?')
        Test116[i] = NA

Test117<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 117.csv"], as.vector))
for (i in 1:length(Test117))
    if (Test117[i] == '#NAME?')
        Test117[i] = NA

Test118 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 118.csv"], as.vector))
for (i in 1:length(Test118))
    if (Test118[i] == '#NAME?')
        Test118[i] = NA

Test119 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 119.csv"], as.vector))
for (i in 1:length(Test119))
    if (Test119[i] == '#NAME?')
        Test119[i] = NA

Test120 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 120.csv"], as.vector))
for (i in 1:length(Test120))
    if (Test120[i] == '#NAME?')
        Test120[i] = NA

Test121 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 121.csv"], as.vector))
for (i in 1:length(Test121))
    if (Test121[i] == '#NAME?')
        Test121[i] = NA

Test122 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 122.csv"], as.vector))
for (i in 1:length(Test122))
    if (Test122[i] == '#NAME?')
        Test122[i] = NA

Test123 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 123.csv"], as.vector))
for (i in 1:length(Test123))
    if (Test123[i] == '#NAME?')
        Test123[i] = NA

Test124 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 124.csv"], as.vector))
for (i in 1:length(Test124))
    if (Test124[i] == '#NAME?')
        Test124[i] = NA

Test125 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 125.csv"], as.vector))
for (i in 1:length(Test125))
    if (Test125[i] == '#NAME?')
        Test125[i] = NA

Test126 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 126.csv"], as.vector))
for (i in 1:length(Test126))
    if (Test126[i] == '#NAME?')
        Test126[i] = NA

Test127<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 127.csv"], as.vector))
for (i in 1:length(Test127))
    if (Test127[i] == '#NAME?')
        Test127[i] = NA


boxplot(Test96, Test97, Test98, Test99, Test100, Test101, Test102, Test103, Test104, Test105, Test106, Test107, Test108, Test109, Test110, Test111, Test112, Test113, Test114, Test115, Test116, Test117, Test118, Test119, Test120, Test121, Test122, Test123, Test124, Test125, Test126, Test127, 
names = c( '96', '97', '98', '99', '100', '101', '102', '103', '104', '105', '106', '107', '108', '109', '110', '111', '112', '113', '114', '115', '116', '117', '118', '119', '120', '121', '122', '123', '124', '125', '126', '127'),
main = "Rules Validation Error Rates", ylab = "Error rates", xlab = 'Rules',
ylim = c(0,1))





Test128 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 128.csv"], as.vector))
for (i in 1:length(Test128))
    if (Test128[i] == '#NAME?')
        Test128[i] = NA

Test129<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 129.csv"], as.vector))
for (i in 1:length(Test129))
    if (Test129[i] == '#NAME?')
        Test129[i] = NA

Test130 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 130.csv"], as.vector))
for (i in 1:length(Test130))
    if (Test130[i] == '#NAME?')
        Test130[i] = NA

Test131 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 131.csv"], as.vector))
for (i in 1:length(Test131))
    if (Test131[i] == '#NAME?')
        Test131[i] = NA

Test132 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 132.csv"], as.vector))
for (i in 1:length(Test132))
    if (Test132[i] == '#NAME?')
        Test132[i] = NA

Test133 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 133.csv"], as.vector))
for (i in 1:length(Test133))
    if (Test133[i] == '#NAME?')
        Test133[i] = NA

Test134 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 134.csv"], as.vector))
for (i in 1:length(Test134))
    if (Test134[i] == '#NAME?')
        Test134[i] = NA

Test135 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 135.csv"], as.vector))
for (i in 1:length(Test135))
    if (Test135[i] == '#NAME?')
        Test135[i] = NA

Test136 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 136.csv"], as.vector))
for (i in 1:length(Test136))
    if (Test136[i] == '#NAME?')
        Test136[i] = NA

Test137 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 137.csv"], as.vector))
for (i in 1:length(Test137))
    if (Test137[i] == '#NAME?')
        Test137[i] = NA

Test138<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 138.csv"], as.vector))
for (i in 1:length(Test138))
    if (Test138[i] == '#NAME?')
        Test138[i] = NA

Test139<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 139.csv"], as.vector))
for (i in 1:length(Test139))
    if (Test139[i] == '#NAME?')
        Test139[i] = NA

Test140 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 140.csv"], as.vector))
for (i in 1:length(Test140))
    if (Test140[i] == '#NAME?')
        Test140[i] = NA

Test141 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 141.csv"], as.vector))
for (i in 1:length(Test141))
    if (Test141[i] == '#NAME?')
        Test141[i] = NA

Test142 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 142.csv"], as.vector))
for (i in 1:length(Test142))
    if (Test142[i] == '#NAME?')
        Test142[i] = NA

Test143 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 143.csv"], as.vector))
for (i in 1:length(Test143))
    if (Test143[i] == '#NAME?')
        Test143[i] = NA

Test144 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 144.csv"], as.vector))
for (i in 1:length(Test144))
    if (Test144[i] == '#NAME?')
        Test144[i] = NA

Test145 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 145.csv"], as.vector))
for (i in 1:length(Test145))
    if (Test145[i] == '#NAME?')
        Test145[i] = NA

Test146 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 146.csv"], as.vector))
for (i in 1:length(Test146))
    if (Test146[i] == '#NAME?')
        Test146[i] = NA

Test147 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 147.csv"], as.vector))
for (i in 1:length(Test147))
    if (Test147[i] == '#NAME?')
        Test147[i] = NA

Test148 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 148.csv"], as.vector))
for (i in 1:length(Test148))
    if (Test148[i] == '#NAME?')
        Test148[i] = NA

Test149<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 149.csv"], as.vector))
for (i in 1:length(Test149))
    if (Test149[i] == '#NAME?')
        Test149[i] = NA

Test150 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 150.csv"], as.vector))
for (i in 1:length(Test150))
    if (Test150[i] == '#NAME?')
        Test150[i] = NA

Test151 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 151.csv"], as.vector))
for (i in 1:length(Test151))
    if (Test151[i] == '#NAME?')
        Test151[i] = NA

Test152 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 152.csv"], as.vector))
for (i in 1:length(Test152))
    if (Test152[i] == '#NAME?')
        Test152[i] = NA

Test153 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 153.csv"], as.vector))
for (i in 1:length(Test153))
    if (Test153[i] == '#NAME?')
        Test153[i] = NA

Test154 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 154.csv"], as.vector))
for (i in 1:length(Test154))
    if (Test154[i] == '#NAME?')
        Test154[i] = NA

Test155 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 155.csv"], as.vector))
for (i in 1:length(Test155))
    if (Test155[i] == '#NAME?')
        Test155[i] = NA

Test156 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 156.csv"], as.vector))
for (i in 1:length(Test156))
    if (Test156[i] == '#NAME?')
        Test156[i] = NA

Test157 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 157.csv"], as.vector))
for (i in 1:length(Test157))
    if (Test157[i] == '#NAME?')
        Test157[i] = NA

Test158 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 158.csv"], as.vector))
for (i in 1:length(Test158))
    if (Test158[i] == '#NAME?')
        Test158[i] = NA

Test159<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 159.csv"], as.vector))
for (i in 1:length(Test159))
    if (Test159[i] == '#NAME?')
        Test159[i] = NA


boxplot(Test128, Test129, Test130, Test131, Test132, Test133, Test134, Test135, Test136, Test137, Test138, Test139, Test140, Test141, Test142, Test143, Test144, Test145, Test146, Test147, Test148, Test149, Test150, Test151, Test152, Test153, Test154, Test155, Test156, Test157, Test158, Test159, 
names = c( '128', '129', '130', '131', '132', '133', '134', '135', '136', '137', '138', '139', '140', '141', '142', '143', '144', '145', '146', '147', '148', '149', '150', '151', '152', '153', '154', '155', '156', '157', '158', '159'),
main = "Rules Validation Error Rates", ylab = "Error rates", xlab = 'Rules',
ylim = c(0,1))




Test160 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 160.csv"], as.vector))
for (i in 1:length(Test160))
    if (Test160[i] == '#NAME?')
        Test160[i] = NA

Test161<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 161.csv"], as.vector))
for (i in 1:length(Test161))
    if (Test161[i] == '#NAME?')
        Test161[i] = NA

Test162 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 162.csv"], as.vector))
for (i in 1:length(Test162))
    if (Test162[i] == '#NAME?')
        Test162[i] = NA

Test163 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 163.csv"], as.vector))
for (i in 1:length(Test163))
    if (Test163[i] == '#NAME?')
        Test163[i] = NA

Test164 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 164.csv"], as.vector))
for (i in 1:length(Test164))
    if (Test164[i] == '#NAME?')
        Test164[i] = NA

Test165 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 165.csv"], as.vector))
for (i in 1:length(Test165))
    if (Test165[i] == '#NAME?')
        Test165[i] = NA

Test166 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 166.csv"], as.vector))
for (i in 1:length(Test166))
    if (Test166[i] == '#NAME?')
        Test166[i] = NA

Test167 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 167.csv"], as.vector))
for (i in 1:length(Test167))
    if (Test167[i] == '#NAME?')
        Test167[i] = NA

Test168 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 168.csv"], as.vector))
for (i in 1:length(Test168))
    if (Test168[i] == '#NAME?')
        Test168[i] = NA

Test169 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 169.csv"], as.vector))
for (i in 1:length(Test169))
    if (Test169[i] == '#NAME?')
        Test169[i] = NA

Test170<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 170.csv"], as.vector))
for (i in 1:length(Test170))
    if (Test170[i] == '#NAME?')
        Test170[i] = NA

Test171<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 171.csv"], as.vector))
for (i in 1:length(Test171))
    if (Test171[i] == '#NAME?')
        Test171[i] = NA

Test172 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 172.csv"], as.vector))
for (i in 1:length(Test172))
    if (Test172[i] == '#NAME?')
        Test172[i] = NA

Test173 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 173.csv"], as.vector))
for (i in 1:length(Test173))
    if (Test173[i] == '#NAME?')
        Test173[i] = NA

Test174 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 174.csv"], as.vector))
for (i in 1:length(Test174))
    if (Test174[i] == '#NAME?')
        Test174[i] = NA

Test175 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 175.csv"], as.vector))
for (i in 1:length(Test175))
    if (Test175[i] == '#NAME?')
        Test175[i] = NA

Test176 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 176.csv"], as.vector))
for (i in 1:length(Test176))
    if (Test176[i] == '#NAME?')
        Test176[i] = NA

Test177 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 177.csv"], as.vector))
for (i in 1:length(Test177))
    if (Test177[i] == '#NAME?')
        Test177[i] = NA

Test178 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 178.csv"], as.vector))
for (i in 1:length(Test178))
    if (Test178[i] == '#NAME?')
        Test178[i] = NA

Test179 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 179.csv"], as.vector))
for (i in 1:length(Test179))
    if (Test179[i] == '#NAME?')
        Test179[i] = NA

Test180 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 180.csv"], as.vector))
for (i in 1:length(Test180))
    if (Test180[i] == '#NAME?')
        Test180[i] = NA

Test181<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 181.csv"], as.vector))
for (i in 1:length(Test181))
    if (Test181[i] == '#NAME?')
        Test181[i] = NA

Test182 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 182.csv"], as.vector))
for (i in 1:length(Test182))
    if (Test182[i] == '#NAME?')
        Test182[i] = NA

Test183 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 183.csv"], as.vector))
for (i in 1:length(Test183))
    if (Test183[i] == '#NAME?')
        Test183[i] = NA

Test184 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 184.csv"], as.vector))
for (i in 1:length(Test184))
    if (Test184[i] == '#NAME?')
        Test184[i] = NA

Test185 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 185.csv"], as.vector))
for (i in 1:length(Test185))
    if (Test185[i] == '#NAME?')
        Test185[i] = NA

Test186 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 186.csv"], as.vector))
for (i in 1:length(Test186))
    if (Test186[i] == '#NAME?')
        Test186[i] = NA

Test187 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 187.csv"], as.vector))
for (i in 1:length(Test187))
    if (Test187[i] == '#NAME?')
        Test187[i] = NA

Test188 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 188.csv"], as.vector))
for (i in 1:length(Test188))
    if (Test188[i] == '#NAME?')
        Test188[i] = NA

Test189 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 189.csv"], as.vector))
for (i in 1:length(Test189))
    if (Test189[i] == '#NAME?')
        Test189[i] = NA

Test190 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 190.csv"], as.vector))
for (i in 1:length(Test190))
    if (Test190[i] == '#NAME?')
        Test190[i] = NA

Test191<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 191.csv"], as.vector))
for (i in 1:length(Test191))
    if (Test191[i] == '#NAME?')
        Test191[i] = NA


boxplot(Test160, Test161, Test162, Test163, Test164, Test165, Test166, Test167, Test168, Test169, Test170, Test171, Test172, Test173, Test174, Test175, Test176, Test177, Test178, Test179, Test180, Test181, Test182, Test183, Test184, Test185, Test186, Test187, Test188, Test189, Test190, Test191, 
names = c( '160', '161', '162', '163', '164', '165', '166', '167', '168', '169', '170', '171', '172', '173', '174', '175', '176', '177', '178', '179', '180', '181', '182', '183', '184', '185', '186', '187', '188', '189', '190', '191'),
main = "Rules Validation Error Rates", ylab = "Error rates", xlab = 'Rules',
ylim = c(0,1))






Test192 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 192.csv"], as.vector))
for (i in 1:length(Test192))
    if (Test192[i] == '#NAME?')
        Test192[i] = NA

Test193<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 193.csv"], as.vector))
for (i in 1:length(Test193))
    if (Test193[i] == '#NAME?')
        Test193[i] = NA

Test194 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 194.csv"], as.vector))
for (i in 1:length(Test194))
    if (Test194[i] == '#NAME?')
        Test194[i] = NA

Test195 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 195.csv"], as.vector))
for (i in 1:length(Test195))
    if (Test195[i] == '#NAME?')
        Test195[i] = NA

Test196 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 196.csv"], as.vector))
for (i in 1:length(Test196))
    if (Test196[i] == '#NAME?')
        Test196[i] = NA

Test197 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 197.csv"], as.vector))
for (i in 1:length(Test197))
    if (Test197[i] == '#NAME?')
        Test197[i] = NA

Test198 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 198.csv"], as.vector))
for (i in 1:length(Test198))
    if (Test198[i] == '#NAME?')
        Test198[i] = NA

Test199 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 199.csv"], as.vector))
for (i in 1:length(Test199))
    if (Test199[i] == '#NAME?')
        Test199[i] = NA

Test200 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 200.csv"], as.vector))
for (i in 1:length(Test200))
    if (Test200[i] == '#NAME?')
        Test200[i] = NA

Test201 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 201.csv"], as.vector))
for (i in 1:length(Test201))
    if (Test201[i] == '#NAME?')
        Test201[i] = NA

Test202<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 202.csv"], as.vector))
for (i in 1:length(Test202))
    if (Test202[i] == '#NAME?')
        Test202[i] = NA

Test203<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 203.csv"], as.vector))
for (i in 1:length(Test203))
    if (Test203[i] == '#NAME?')
        Test203[i] = NA

Test204 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 204.csv"], as.vector))
for (i in 1:length(Test204))
    if (Test204[i] == '#NAME?')
        Test204[i] = NA

Test205 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 205.csv"], as.vector))
for (i in 1:length(Test205))
    if (Test205[i] == '#NAME?')
        Test205[i] = NA

Test206 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 206.csv"], as.vector))
for (i in 1:length(Test206))
    if (Test206[i] == '#NAME?')
        Test206[i] = NA

Test207 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 207.csv"], as.vector))
for (i in 1:length(Test207))
    if (Test207[i] == '#NAME?')
        Test207[i] = NA

Test208 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 208.csv"], as.vector))
for (i in 1:length(Test208))
    if (Test208[i] == '#NAME?')
        Test208[i] = NA

Test209 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 209.csv"], as.vector))
for (i in 1:length(Test209))
    if (Test209[i] == '#NAME?')
        Test209[i] = NA

Test210 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 210.csv"], as.vector))
for (i in 1:length(Test210))
    if (Test210[i] == '#NAME?')
        Test210[i] = NA

Test211 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 211.csv"], as.vector))
for (i in 1:length(Test211))
    if (Test211[i] == '#NAME?')
        Test211[i] = NA

Test212 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 212.csv"], as.vector))
for (i in 1:length(Test212))
    if (Test212[i] == '#NAME?')
        Test212[i] = NA

Test213<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 213.csv"], as.vector))
for (i in 1:length(Test213))
    if (Test213[i] == '#NAME?')
        Test213[i] = NA

Test214 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 214.csv"], as.vector))
for (i in 1:length(Test214))
    if (Test214[i] == '#NAME?')
        Test214[i] = NA

Test215 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 215.csv"], as.vector))
for (i in 1:length(Test215))
    if (Test215[i] == '#NAME?')
        Test215[i] = NA

Test216 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 216.csv"], as.vector))
for (i in 1:length(Test216))
    if (Test216[i] == '#NAME?')
        Test216[i] = NA

Test217 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 217.csv"], as.vector))
for (i in 1:length(Test217))
    if (Test217[i] == '#NAME?')
        Test217[i] = NA

Test218 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 218.csv"], as.vector))
for (i in 1:length(Test218))
    if (Test218[i] == '#NAME?')
        Test218[i] = NA

Test219 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 219.csv"], as.vector))
for (i in 1:length(Test219))
    if (Test219[i] == '#NAME?')
        Test219[i] = NA

Test220 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 220.csv"], as.vector))
for (i in 1:length(Test220))
    if (Test220[i] == '#NAME?')
        Test220[i] = NA

Test221 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 221.csv"], as.vector))
for (i in 1:length(Test221))
    if (Test221[i] == '#NAME?')
        Test221[i] = NA

Test222 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 222.csv"], as.vector))
for (i in 1:length(Test222))
    if (Test222[i] == '#NAME?')
        Test222[i] = NA

Test223<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 223.csv"], as.vector))
for (i in 1:length(Test223))
    if (Test223[i] == '#NAME?')
        Test223[i] = NA


boxplot(Test192, Test193, Test194, Test195, Test196, Test197, Test198, Test199, Test200, Test201, Test202, Test203, Test204, Test205, Test206, Test207, Test208, Test209, Test210, Test211, Test212, Test213, Test214, Test215, Test216, Test217, Test218, Test219, Test220, Test221, Test222, Test223, 
names = c( '192', '193', '194', '195', '196', '197', '198', '199', '200', '201', '202', '203', '204', '205', '206', '207', '208', '209', '210', '211', '212', '213', '214', '215', '216', '217', '218', '219', '220', '221', '222', '223'),
main = "Rules Validation Error Rates", ylab = "Error rates", xlab = 'Rules',
ylim = c(0,1))





Test224 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 224.csv"], as.vector))
for (i in 1:length(Test224))
    if (Test224[i] == '#NAME?')
        Test224[i] = NA

Test225<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 225.csv"], as.vector))
for (i in 1:length(Test225))
    if (Test225[i] == '#NAME?')
        Test225[i] = NA

Test226 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 226.csv"], as.vector))
for (i in 1:length(Test226))
    if (Test226[i] == '#NAME?')
        Test226[i] = NA

Test227 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 227.csv"], as.vector))
for (i in 1:length(Test227))
    if (Test227[i] == '#NAME?')
        Test227[i] = NA

Test228 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 228.csv"], as.vector))
for (i in 1:length(Test228))
    if (Test228[i] == '#NAME?')
        Test228[i] = NA

Test229 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 229.csv"], as.vector))
for (i in 1:length(Test229))
    if (Test229[i] == '#NAME?')
        Test229[i] = NA

Test230 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 230.csv"], as.vector))
for (i in 1:length(Test230))
    if (Test230[i] == '#NAME?')
        Test230[i] = NA

Test231 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 231.csv"], as.vector))
for (i in 1:length(Test231))
    if (Test231[i] == '#NAME?')
        Test231[i] = NA

Test232 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 232.csv"], as.vector))
for (i in 1:length(Test232))
    if (Test232[i] == '#NAME?')
        Test232[i] = NA

Test233 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 233.csv"], as.vector))
for (i in 1:length(Test233))
    if (Test233[i] == '#NAME?')
        Test233[i] = NA

Test234<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 234.csv"], as.vector))
for (i in 1:length(Test234))
    if (Test234[i] == '#NAME?')
        Test234[i] = NA

Test235<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 235.csv"], as.vector))
for (i in 1:length(Test235))
    if (Test235[i] == '#NAME?')
        Test235[i] = NA

Test236 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 236.csv"], as.vector))
for (i in 1:length(Test236))
    if (Test236[i] == '#NAME?')
        Test236[i] = NA

Test237 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 237.csv"], as.vector))
for (i in 1:length(Test237))
    if (Test237[i] == '#NAME?')
        Test237[i] = NA

Test238 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 238.csv"], as.vector))
for (i in 1:length(Test238))
    if (Test238[i] == '#NAME?')
        Test238[i] = NA

Test239 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 239.csv"], as.vector))
for (i in 1:length(Test239))
    if (Test239[i] == '#NAME?')
        Test239[i] = NA

Test240 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 240.csv"], as.vector))
for (i in 1:length(Test240))
    if (Test240[i] == '#NAME?')
        Test240[i] = NA

Test241 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 241.csv"], as.vector))
for (i in 1:length(Test241))
    if (Test241[i] == '#NAME?')
        Test241[i] = NA

Test242 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 242.csv"], as.vector))
for (i in 1:length(Test242))
    if (Test242[i] == '#NAME?')
        Test242[i] = NA

Test243 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 243.csv"], as.vector))
for (i in 1:length(Test243))
    if (Test243[i] == '#NAME?')
        Test243[i] = NA

Test244 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 244.csv"], as.vector))
for (i in 1:length(Test244))
    if (Test244[i] == '#NAME?')
        Test244[i] = NA

Test245<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 245.csv"], as.vector))
for (i in 1:length(Test245))
    if (Test245[i] == '#NAME?')
        Test245[i] = NA

Test246 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 246.csv"], as.vector))
for (i in 1:length(Test246))
    if (Test246[i] == '#NAME?')
        Test246[i] = NA

Test247 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 247.csv"], as.vector))
for (i in 1:length(Test247))
    if (Test247[i] == '#NAME?')
        Test247[i] = NA

Test248 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 248.csv"], as.vector))
for (i in 1:length(Test248))
    if (Test248[i] == '#NAME?')
        Test248[i] = NA

Test249 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 249.csv"], as.vector))
for (i in 1:length(Test249))
    if (Test249[i] == '#NAME?')
        Test249[i] = NA

Test250 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 250.csv"], as.vector))
for (i in 1:length(Test250))
    if (Test250[i] == '#NAME?')
        Test250[i] = NA

Test251 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 251.csv"], as.vector))
for (i in 1:length(Test251))
    if (Test251[i] == '#NAME?')
        Test251[i] = NA

Test252 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 252.csv"], as.vector))
for (i in 1:length(Test252))
    if (Test252[i] == '#NAME?')
        Test252[i] = NA

Test253 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 253.csv"], as.vector))
for (i in 1:length(Test253))
    if (Test253[i] == '#NAME?')
        Test253[i] = NA

Test254 <- unlist(lapply(csv_data["ReCA Validation Errors, Rule 254.csv"], as.vector))
for (i in 1:length(Test254))
    if (Test254[i] == '#NAME?')
        Test254[i] = NA

Test255<- unlist(lapply(csv_data["ReCA Validation Errors, Rule 255.csv"], as.vector))
for (i in 1:length(Test255))
    if (Test255[i] == '#NAME?')
        Test255[i] = NA


boxplot(Test224, Test225, Test226, Test227, Test228, Test229, Test230, Test231, Test232, Test233, Test234, Test235, Test236, Test237, Test238, Test239, Test240, Test241, Test242, Test243, Test244, Test245, Test246, Test247, Test248, Test249, Test250, Test251, Test252, Test253, Test254, Test255, 
names = c( '224', '225', '226', '227', '228', '229', '230', '231', '232', '233', '234', '235', '236', '237', '238', '239', '240', '241', '242', '243', '244', '245', '246', '247', '248', '249', '250', '251', '252', '253', '254', '255'),
main = "Rules Validation Error Rates", ylab = "Error rates", xlab = 'Rules',
ylim = c(0,1))


summary(Test12)
summary(Test18)
summary(Test36)
summary(Test48)
summary(Test57)
summary(Test61)
summary(Test72)
summary(Test78)
summary(Test87)
summary(Test93)
summary(Test99)
summary(Test104)
summary(Test122)
summary(Test126)
summary(Test132)
summary(Test141)
summary(Test146)
summary(Test152)
summary(Test161)
summary(Test177)
summary(Test197)
summary(Test213)
summary(Test219)



quantile(Test12, 0.75) - quantile(Test12, 0.25)
quantile(Test18, 0.75) - quantile(Test18, 0.25)
quantile(Test36, 0.75) - quantile(Test36, 0.25)
quantile(Test48, 0.75) - quantile(Test48, 0.25)
quantile(Test57, 0.75) - quantile(Test57, 0.25)
quantile(Test61, 0.75) - quantile(Test61, 0.25)
quantile(Test72, 0.75) - quantile(Test72, 0.25)
quantile(Test78, 0.75) - quantile(Test78, 0.25)
quantile(Test87, 0.75) - quantile(Test87, 0.25)
quantile(Test93, 0.75) - quantile(Test93, 0.25)
quantile(Test99, 0.75) - quantile(Test99, 0.25)
quantile(Test104, 0.75) - quantile(Test104, 0.25)
quantile(Test122, 0.75) - quantile(Test122, 0.25)
quantile(Test126, 0.75) - quantile(Test126, 0.25)
quantile(Test132, 0.75) - quantile(Test132, 0.25)
quantile(Test141, 0.75) - quantile(Test141, 0.25)
quantile(Test146, 0.75) - quantile(Test146, 0.25)
quantile(Test152, 0.75) - quantile(Test152, 0.25)
quantile(Test161, 0.75) - quantile(Test161, 0.25)
quantile(Test177, 0.75) - quantile(Test177, 0.25)
quantile(Test197, 0.75) - quantile(Test197, 0.25)
quantile(Test213, 0.75) - quantile(Test213, 0.25)
quantile(Test219, 0.75) - quantile(Test219, 0.25)


hist(Test48, main = "Histogram of Rule 48 Error Values", xlab = "Weighted Error Values", col = "grey", breaks = seq(0.00, 1.25, 0.05))


