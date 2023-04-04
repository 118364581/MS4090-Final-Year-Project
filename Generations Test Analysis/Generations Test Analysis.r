# Set the working directory to the folder containing the CSV files
setwd("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Generations Test Analysis")

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



Test10 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 10.csv"], as.vector))
for (i in 1:length(Test10))
    if (Test10[i] == '#NAME?')
        Test10[i] = NA

Test20 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 20.csv"], as.vector))
for (i in 1:length(Test20))
    if (Test20[i] == '#NAME?')
        Test20[i] = NA

Test30 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 30.csv"], as.vector))
for (i in 1:length(Test30))
    if (Test30[i] == '#NAME?')
        Test30[i] = NA

Test40 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 40.csv"], as.vector))
for (i in 1:length(Test40))
    if (Test40[i] == '#NAME?')
        Test40[i] = NA

Test50 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 50.csv"], as.vector))
for (i in 1:length(Test50))
    if (Test50[i] == '#NAME?')
        Test50[i] = NA

Test60 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 60.csv"], as.vector))
for (i in 1:length(Test60))
    if (Test60[i] == '#NAME?')
        Test60[i] = NA

Test70 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 70.csv"], as.vector))
for (i in 1:length(Test70))
    if (Test70[i] == '#NAME?')
        Test70[i] = NA

Test80 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 80.csv"], as.vector))
for (i in 1:length(Test80))
    if (Test80[i] == '#NAME?')
        Test80[i] = NA

Test90 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 90.csv"], as.vector))
for (i in 1:length(Test90))
    if (Test90[i] == '#NAME?')
        Test90[i] = NA

Test100 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 100.csv"], as.vector))
for (i in 1:length(Test100))
    if (Test100[i] == '#NAME?')
        Test100[i] = NA

Test110 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 110.csv"], as.vector))
for (i in 1:length(Test110))
    if (Test110[i] == '#NAME?')
        Test110[i] = NA

Test120 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 120.csv"], as.vector))
for (i in 1:length(Test120))
    if (Test120[i] == '#NAME?')
        Test120[i] = NA

Test130 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 130.csv"], as.vector))
for (i in 1:length(Test130))
    if (Test130[i] == '#NAME?')
        Test130[i] = NA

Test140 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 140.csv"], as.vector))
for (i in 1:length(Test140))
    if (Test140[i] == '#NAME?')
        Test140[i] = NA

Test150 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 150.csv"], as.vector))
for (i in 1:length(Test150))
    if (Test150[i] == '#NAME?')
        Test150[i] = NA

Test160 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 160.csv"], as.vector))
for (i in 1:length(Test160))
    if (Test160[i] == '#NAME?')
        Test160[i] = NA

Test170 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 170.csv"], as.vector))
for (i in 1:length(Test170))
    if (Test170[i] == '#NAME?')
        Test170[i] = NA

Test180 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 180.csv"], as.vector))
for (i in 1:length(Test180))
    if (Test180[i] == '#NAME?')
        Test180[i] = NA

Test190 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 190.csv"], as.vector))
for (i in 1:length(Test190))
    if (Test190[i] == '#NAME?')
        Test190[i] = NA

Test200 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 200.csv"], as.vector))
for (i in 1:length(Test200))
    if (Test200[i] == '#NAME?')
        Test200[i] = NA

Test210 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 210.csv"], as.vector))
for (i in 1:length(Test210))
    if (Test210[i] == '#NAME?')
        Test210[i] = NA

Test220 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 220.csv"], as.vector))
for (i in 1:length(Test220))
    if (Test220[i] == '#NAME?')
        Test220[i] = NA

Test230 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 230.csv"], as.vector))
for (i in 1:length(Test230))
    if (Test230[i] == '#NAME?')
        Test230[i] = NA

Test240 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 240.csv"], as.vector))
for (i in 1:length(Test240))
    if (Test240[i] == '#NAME?')
        Test240[i] = NA

Test250 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 250.csv"], as.vector))
for (i in 1:length(Test250))
    if (Test250[i] == '#NAME?')
        Test250[i] = NA

Test260 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 260.csv"], as.vector))
for (i in 1:length(Test260))
    if (Test260[i] == '#NAME?')
        Test260[i] = NA

Test270 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 270.csv"], as.vector))
for (i in 1:length(Test270))
    if (Test270[i] == '#NAME?')
        Test270[i] = NA

Test280 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 280.csv"], as.vector))
for (i in 1:length(Test280))
    if (Test280[i] == '#NAME?')
        Test280[i] = NA

Test290 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 290.csv"], as.vector))
for (i in 1:length(Test290))
    if (Test290[i] == '#NAME?')
        Test290[i] = NA

Test300 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 300.csv"], as.vector))
for (i in 1:length(Test300))
    if (Test300[i] == '#NAME?')
        Test300[i] = NA






Test15 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 15.csv"], as.vector))
for (i in 1:length(Test15))
    if (Test15[i] == '#NAME?')
        Test15[i] = NA

Test25 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 25.csv"], as.vector))
for (i in 1:length(Test25))
    if (Test25[i] == '#NAME?')
        Test25[i] = NA

Test35 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 35.csv"], as.vector))
for (i in 1:length(Test35))
    if (Test35[i] == '#NAME?')
        Test35[i] = NA

Test45 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 45.csv"], as.vector))
for (i in 1:length(Test45))
    if (Test45[i] == '#NAME?')
        Test45[i] = NA

Test55 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 55.csv"], as.vector))
for (i in 1:length(Test55))
    if (Test55[i] == '#NAME?')
        Test55[i] = NA

Test65 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 65.csv"], as.vector))
for (i in 1:length(Test65))
    if (Test65[i] == '#NAME?')
        Test65[i] = NA

Test75 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 75.csv"], as.vector))
for (i in 1:length(Test75))
    if (Test75[i] == '#NAME?')
        Test75[i] = NA

Test85 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 85.csv"], as.vector))
for (i in 1:length(Test85))
    if (Test85[i] == '#NAME?')
        Test85[i] = NA

Test95 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 95.csv"], as.vector))
for (i in 1:length(Test95))
    if (Test95[i] == '#NAME?')
        Test95[i] = NA

Test105 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 105.csv"], as.vector))
for (i in 1:length(Test105))
    if (Test105[i] == '#NAME?')
        Test105[i] = NA

Test115 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 115.csv"], as.vector))
for (i in 1:length(Test115))
    if (Test115[i] == '#NAME?')
        Test115[i] = NA

Test125 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 125.csv"], as.vector))
for (i in 1:length(Test125))
    if (Test125[i] == '#NAME?')
        Test125[i] = NA

Test135 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 135.csv"], as.vector))
for (i in 1:length(Test135))
    if (Test135[i] == '#NAME?')
        Test135[i] = NA

Test145 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 145.csv"], as.vector))
for (i in 1:length(Test145))
    if (Test145[i] == '#NAME?')
        Test145[i] = NA

Test155 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 155.csv"], as.vector))
for (i in 1:length(Test155))
    if (Test155[i] == '#NAME?')
        Test155[i] = NA

Test165 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 165.csv"], as.vector))
for (i in 1:length(Test165))
    if (Test165[i] == '#NAME?')
        Test165[i] = NA

Test175 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 175.csv"], as.vector))
for (i in 1:length(Test175))
    if (Test175[i] == '#NAME?')
        Test175[i] = NA

Test185 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 185.csv"], as.vector))
for (i in 1:length(Test185))
    if (Test185[i] == '#NAME?')
        Test185[i] = NA

Test195 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 195.csv"], as.vector))
for (i in 1:length(Test195))
    if (Test195[i] == '#NAME?')
        Test195[i] = NA

Test205 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 205.csv"], as.vector))
for (i in 1:length(Test205))
    if (Test205[i] == '#NAME?')
        Test205[i] = NA

Test215 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 215.csv"], as.vector))
for (i in 1:length(Test215))
    if (Test215[i] == '#NAME?')
        Test215[i] = NA

Test225 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 225.csv"], as.vector))
for (i in 1:length(Test225))
    if (Test225[i] == '#NAME?')
        Test225[i] = NA

Test235 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 235.csv"], as.vector))
for (i in 1:length(Test235))
    if (Test235[i] == '#NAME?')
        Test235[i] = NA

Test245 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 245.csv"], as.vector))
for (i in 1:length(Test245))
    if (Test245[i] == '#NAME?')
        Test245[i] = NA

Test255 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 255.csv"], as.vector))
for (i in 1:length(Test255))
    if (Test255[i] == '#NAME?')
        Test255[i] = NA

Test265 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 265.csv"], as.vector))
for (i in 1:length(Test265))
    if (Test265[i] == '#NAME?')
        Test265[i] = NA

Test275 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 275.csv"], as.vector))
for (i in 1:length(Test275))
    if (Test275[i] == '#NAME?')
        Test275[i] = NA

Test285 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 285.csv"], as.vector))
for (i in 1:length(Test285))
    if (Test285[i] == '#NAME?')
        Test285[i] = NA

Test295 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 295.csv"], as.vector))
for (i in 1:length(Test295))
    if (Test295[i] == '#NAME?')
        Test295[i] = NA





test = boxplot(Test10, Test20, Test30, Test40, Test50, Test60, Test70, Test80, Test90, Test100, Test110, Test120, Test130, Test140, Test150, Test160, Test170, Test180, Test190, Test200, Test210, Test220, Test230, Test240, Test250, Test260, Test270, Test280, Test290, Test300,
names = c( '10', '20', '30', '40', '50', '60', '70', '80', '90', '100', '110', '120', '130', '140', '150', '160', '170', '180', '190', '200', '210', '220', '230', '240', '250', '260', '270', '280', '290', '300'),
main = "ReCA Generations Validation Errors", ylab = "Error rates", xlab = 'Generations',
ylim = c(0,1.5))

summary(Test10)
summary(Test20)
summary(Test30)
summary(Test40)
summary(Test50)
summary(Test60)
summary(Test70)
summary(Test80)
summary(Test90)
summary(Test100)



quantile(Test10, 0.75) - quantile(Test10, 0.25)
quantile(Test20, 0.75) - quantile(Test20, 0.25)
quantile(Test30, 0.75) - quantile(Test30, 0.25)
quantile(Test40, 0.75) - quantile(Test40, 0.25)
quantile(Test50, 0.75) - quantile(Test50, 0.25)
quantile(Test60, 0.75) - quantile(Test60, 0.25)
quantile(Test70, 0.75) - quantile(Test70, 0.25)
quantile(Test80, 0.75) - quantile(Test80, 0.25)
quantile(Test90, 0.75) - quantile(Test90, 0.25)
quantile(Test100, 0.75) - quantile(Test100, 0.25)
quantile(Test110, 0.75) - quantile(Test110, 0.25)
quantile(Test120, 0.75) - quantile(Test120, 0.25)
quantile(Test130, 0.75) - quantile(Test130, 0.25)
quantile(Test140, 0.75) - quantile(Test140, 0.25)
quantile(Test150, 0.75) - quantile(Test150, 0.25)
quantile(Test160, 0.75) - quantile(Test160, 0.25)
quantile(Test170, 0.75) - quantile(Test170, 0.25)
quantile(Test180, 0.75) - quantile(Test180, 0.25)
quantile(Test190, 0.75) - quantile(Test190, 0.25)
quantile(Test200, 0.75) - quantile(Test200, 0.25)
quantile(Test210, 0.75) - quantile(Test210, 0.25)
quantile(Test220, 0.75) - quantile(Test220, 0.25)
quantile(Test230, 0.75) - quantile(Test230, 0.25)
quantile(Test240, 0.75) - quantile(Test240, 0.25)
quantile(Test250, 0.75) - quantile(Test250, 0.25)
quantile(Test260, 0.75) - quantile(Test260, 0.25)
quantile(Test270, 0.75) - quantile(Test270, 0.25)
quantile(Test280, 0.75) - quantile(Test280, 0.25)
quantile(Test290, 0.75) - quantile(Test290, 0.25)
quantile(Test300, 0.75) - quantile(Test300, 0.25)
quantile(Test310, 0.75) - quantile(Test310, 0.25)
quantile(Test320, 0.75) - quantile(Test320, 0.25)
quantile(Test330, 0.75) - quantile(Test330, 0.25)
quantile(Test340, 0.75) - quantile(Test340, 0.25)
quantile(Test350, 0.75) - quantile(Test350, 0.25)
quantile(Test360, 0.75) - quantile(Test360, 0.25)
quantile(Test370, 0.75) - quantile(Test370, 0.25)
quantile(Test380, 0.75) - quantile(Test380, 0.25)
quantile(Test390, 0.75) - quantile(Test390, 0.25)
quantile(Test400, 0.75) - quantile(Test400, 0.25)
quantile(Test410, 0.75) - quantile(Test410, 0.25)
quantile(Test420, 0.75) - quantile(Test420, 0.25)
quantile(Test430, 0.75) - quantile(Test430, 0.25)
quantile(Test440, 0.75) - quantile(Test440, 0.25)
quantile(Test450, 0.75) - quantile(Test450, 0.25)
quantile(Test460, 0.75) - quantile(Test460, 0.25)
quantile(Test470, 0.75) - quantile(Test470, 0.25)
quantile(Test480, 0.75) - quantile(Test480, 0.25)
quantile(Test490, 0.75) - quantile(Test490, 0.25)
quantile(Test500, 0.75) - quantile(Test500, 0.25)




Test40 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 40.csv"], as.vector))
for (i in 1:length(Test40))
    if (Test40[i] == '#NAME?')
        Test40[i] = NA

Test41 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 41.csv"], as.vector))
for (i in 1:length(Test41))
    if (Test41[i] == '#NAME?')
        Test41[i] = NA

Test42 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 42.csv"], as.vector))
for (i in 1:length(Test42))
    if (Test42[i] == '#NAME?')
        Test42[i] = NA

Test43 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 43.csv"], as.vector))
for (i in 1:length(Test43))
    if (Test43[i] == '#NAME?')
        Test43[i] = NA

Test44 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 44.csv"], as.vector))
for (i in 1:length(Test44))
    if (Test44[i] == '#NAME?')
        Test44[i] = NA

Test45 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 45.csv"], as.vector))
for (i in 1:length(Test45))
    if (Test45[i] == '#NAME?')
        Test45[i] = NA

Test46 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 46.csv"], as.vector))
for (i in 1:length(Test46))
    if (Test46[i] == '#NAME?')
        Test46[i] = NA

Test47 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 47.csv"], as.vector))
for (i in 1:length(Test47))
    if (Test47[i] == '#NAME?')
        Test47[i] = NA

Test48 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 48.csv"], as.vector))
for (i in 1:length(Test48))
    if (Test48[i] == '#NAME?')
        Test48[i] = NA

Test49 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 49.csv"], as.vector))
for (i in 1:length(Test49))
    if (Test49[i] == '#NAME?')
        Test49[i] = NA

Test50 <- unlist(lapply(csv_data["ReCA Validation Errors, Generations 50.csv"], as.vector))
for (i in 1:length(Test50))
    if (Test50[i] == '#NAME?')
        Test50[i] = NA




boxplot(Test40, Test41, Test42, Test43, Test44, Test45, Test46, Test47, Test48, Test49, Test50,
names = c( '40', '41', '42', '43', '44', '45', '46', '47', '48', '49', '50'),
main = "ReCA Generations Validation Errors", ylab = "Error rates", xlab = 'Generations',
ylim = c(0,0.4))


quantile(Test40, 0.75) - quantile(Test40, 0.25)
quantile(Test41, 0.75) - quantile(Test41, 0.25)
quantile(Test42, 0.75) - quantile(Test42, 0.25)
quantile(Test43, 0.75) - quantile(Test43, 0.25)
quantile(Test44, 0.75) - quantile(Test44, 0.25)
quantile(Test45, 0.75) - quantile(Test45, 0.25)
quantile(Test46, 0.75) - quantile(Test46, 0.25)
quantile(Test47, 0.75) - quantile(Test47, 0.25)
quantile(Test48, 0.75) - quantile(Test48, 0.25)
quantile(Test49, 0.75) - quantile(Test49, 0.25)
quantile(Test50, 0.75) - quantile(Test50, 0.25)




