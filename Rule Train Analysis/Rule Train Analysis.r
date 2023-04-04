# Set the working directory to the folder containing the CSV files
setwd("C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Rule Train Analysis")

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


Train <- unlist(lapply(csv_data["ReCA Train Errors, Rule 60.csv"], as.vector))

for (i in 1:length(Train))
    if (Train[i] == '#NAME?')
        Train[i] = NA

median_vals = vector(length = length(Train)/10)
for (j in 0:(length(Train)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train[sample], na.rm = TRUE)
}

plot(median_vals, type = 'l', main = "Train, Rule 60", ylim = c(0,0.5))

plot(median_vals, type = 'l', main = "Train, Rule 60", xlim = c(0,100), ylim = c(0,0.5))



Train32 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 32.csv"], as.vector))
for (i in 1:length(Train32))
    if (Train32[i] == '#NAME?')
        Train32[i] = NA

median_vals = vector(length = length(Train32)/10)
for (j in 0:(length(Train32)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train32[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 32", xlim = c(0,100), ylim = c(0,0.5))


Train40 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 40.csv"], as.vector))
for (i in 1:length(Train40))
    if (Train40[i] == '#NAME?')
        Train40[i] = NA

median_vals = vector(length = length(Train40)/10)
for (j in 0:(length(Train40)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train40[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 40", xlim = c(0,100), ylim = c(0,0.5))


Train60 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 60.csv"], as.vector))
for (i in 1:length(Train60))
    if (Train60[i] == '#NAME?')
        Train60[i] = NA

median_vals = vector(length = length(Train60)/10)
for (j in 0:(length(Train60)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train60[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 60", xlim = c(0,100), ylim = c(0,0.5))


Train128 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 128.csv"], as.vector))
for (i in 1:length(Train128))
    if (Train128[i] == '#NAME?')
        Train128[i] = NA

median_vals = vector(length = length(Train128)/10)
for (j in 0:(length(Train128)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train128[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 128", xlim = c(0,100), ylim = c(0,0.5))


Train160 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 160.csv"], as.vector))
for (i in 1:length(Train160))
    if (Train160[i] == '#NAME?')
        Train160[i] = NA

median_vals = vector(length = length(Train160)/10)
for (j in 0:(length(Train160)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train160[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 160", xlim = c(0,100), ylim = c(0,0.5))





Train8 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 8.csv"], as.vector))
for (i in 1:length(Train8))
    if (Train8[i] == '#NAME?')
        Train8[i] = NA

median_vals = vector(length = length(Train8)/10)
for (j in 0:(length(Train8)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train8[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 8", xlim = c(0,100), ylim = c(0,0.5))


Train64 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 64.csv"], as.vector))
for (i in 1:length(Train64))
    if (Train64[i] == '#NAME?')
        Train64[i] = NA

median_vals = vector(length = length(Train64)/10)
for (j in 0:(length(Train64)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train64[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 64", xlim = c(0,100), ylim = c(0,0.5))


Train90 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 90.csv"], as.vector))
for (i in 1:length(Train90))
    if (Train90[i] == '#NAME?')
        Train90[i] = NA

median_vals = vector(length = length(Train90)/10)
for (j in 0:(length(Train90)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train90[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 90", xlim = c(0,100), ylim = c(0,0.5))


Train96 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 96.csv"], as.vector))
for (i in 1:length(Train96))
    if (Train96[i] == '#NAME?')
        Train96[i] = NA

median_vals = vector(length = length(Train96)/10)
for (j in 0:(length(Train96)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train96[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 96", xlim = c(0,100), ylim = c(0,0.5))


Train102 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 102.csv"], as.vector))
for (i in 1:length(Train102))
    if (Train102[i] == '#NAME?')
        Train102[i] = NA

median_vals = vector(length = length(Train102)/10)
for (j in 0:(length(Train102)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train102[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 102", xlim = c(0,100), ylim = c(0,0.5))


Train136 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 136.csv"], as.vector))
for (i in 1:length(Train136))
    if (Train136[i] == '#NAME?')
        Train136[i] = NA

median_vals = vector(length = length(Train136)/10)
for (j in 0:(length(Train136)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train136[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 136", xlim = c(0,100), ylim = c(0,0.5))


Train153 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 153.csv"], as.vector))
for (i in 1:length(Train153))
    if (Train153[i] == '#NAME?')
        Train153[i] = NA

median_vals = vector(length = length(Train153)/10)
for (j in 0:(length(Train153)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train153[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 153", xlim = c(0,100), ylim = c(0,0.5))


Train165 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 165.csv"], as.vector))
for (i in 1:length(Train165))
    if (Train165[i] == '#NAME?')
        Train165[i] = NA

median_vals = vector(length = length(Train165)/10)
for (j in 0:(length(Train165)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train165[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 165", xlim = c(0,100), ylim = c(0,0.5))


Train168 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 168.csv"], as.vector))
for (i in 1:length(Train168))
    if (Train168[i] == '#NAME?')
        Train168[i] = NA

median_vals = vector(length = length(Train168)/10)
for (j in 0:(length(Train168)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train168[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 168", xlim = c(0,100), ylim = c(0,0.5))


Train192 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 192.csv"], as.vector))
for (i in 1:length(Train192))
    if (Train192[i] == '#NAME?')
        Train192[i] = NA

median_vals = vector(length = length(Train192)/10)
for (j in 0:(length(Train192)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train192[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 192", xlim = c(0,100), ylim = c(0,0.5))


Train195 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 195.csv"], as.vector))
for (i in 1:length(Train195))
    if (Train195[i] == '#NAME?')
        Train195[i] = NA

median_vals = vector(length = length(Train195)/10)
for (j in 0:(length(Train195)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train195[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 195", xlim = c(0,100), ylim = c(0,0.5))


Train224 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 224.csv"], as.vector))
for (i in 1:length(Train224))
    if (Train224[i] == '#NAME?')
        Train224[i] = NA

median_vals = vector(length = length(Train224)/10)
for (j in 0:(length(Train224)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train224[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 224", xlim = c(0,100), ylim = c(0,0.5))


Train234 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 234.csv"], as.vector))
for (i in 1:length(Train234))
    if (Train234[i] == '#NAME?')
        Train234[i] = NA

median_vals = vector(length = length(Train234)/10)
for (j in 0:(length(Train234)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train234[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 234", xlim = c(0,100), ylim = c(0,0.5))


Train235 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 235.csv"], as.vector))
for (i in 1:length(Train235))
    if (Train235[i] == '#NAME?')
        Train235[i] = NA

median_vals = vector(length = length(Train235)/10)
for (j in 0:(length(Train235)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train235[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 235", xlim = c(0,100), ylim = c(0,0.5))


Train238 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 238.csv"], as.vector))
for (i in 1:length(Train238))
    if (Train238[i] == '#NAME?')
        Train238[i] = NA

median_vals = vector(length = length(Train238)/10)
for (j in 0:(length(Train238)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train238[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 238", xlim = c(0,100), ylim = c(0,0.5))


Train239 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 239.csv"], as.vector))
for (i in 1:length(Train239))
    if (Train239[i] == '#NAME?')
        Train239[i] = NA

median_vals = vector(length = length(Train239)/10)
for (j in 0:(length(Train239)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train239[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 239", xlim = c(0,100), ylim = c(0,0.5))


Train248 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 248.csv"], as.vector))
for (i in 1:length(Train248))
    if (Train248[i] == '#NAME?')
        Train248[i] = NA

median_vals = vector(length = length(Train248)/10)
for (j in 0:(length(Train248)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train248[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 248", xlim = c(0,100), ylim = c(0,0.5))


Train249 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 249.csv"], as.vector))
for (i in 1:length(Train249))
    if (Train249[i] == '#NAME?')
        Train249[i] = NA

median_vals = vector(length = length(Train249)/10)
for (j in 0:(length(Train249)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train249[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 249", xlim = c(0,100), ylim = c(0,0.5))


Train250 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 250.csv"], as.vector))
for (i in 1:length(Train250))
    if (Train250[i] == '#NAME?')
        Train250[i] = NA

median_vals = vector(length = length(Train250)/10)
for (j in 0:(length(Train250)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train250[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 250", xlim = c(0,100), ylim = c(0,0.5))


Train251 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 251.csv"], as.vector))
for (i in 1:length(Train251))
    if (Train251[i] == '#NAME?')
        Train251[i] = NA

median_vals = vector(length = length(Train251)/10)
for (j in 0:(length(Train251)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train251[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 251", xlim = c(0,100), ylim = c(0,0.5))


Train252 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 252.csv"], as.vector))
for (i in 1:length(Train252))
    if (Train252[i] == '#NAME?')
        Train252[i] = NA

median_vals = vector(length = length(Train252)/10)
for (j in 0:(length(Train252)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train252[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 252", xlim = c(0,100), ylim = c(0,0.5))


Train253 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 253.csv"], as.vector))
for (i in 1:length(Train253))
    if (Train253[i] == '#NAME?')
        Train253[i] = NA

median_vals = vector(length = length(Train253)/10)
for (j in 0:(length(Train253)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train253[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 253", xlim = c(0,100), ylim = c(0,0.5))


Train254 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 254.csv"], as.vector))
for (i in 1:length(Train254))
    if (Train254[i] == '#NAME?')
        Train254[i] = NA

median_vals = vector(length = length(Train254)/10)
for (j in 0:(length(Train254)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train254[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 254", xlim = c(0,100), ylim = c(0,0.5))


Train255 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 255.csv"], as.vector))
for (i in 1:length(Train255))
    if (Train255[i] == '#NAME?')
        Train255[i] = NA

median_vals = vector(length = length(Train255)/10)
for (j in 0:(length(Train255)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train255[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 255", xlim = c(0,100), ylim = c(0,0.5))


Train99 <- unlist(lapply(csv_data["ReCA Train Errors, Rule 99.csv"], as.vector))
for (i in 1:length(Train99))
    if (Train99[i] == '#NAME?')
        Train99[i] = NA

median_vals = vector(length = length(Train99)/10)
for (j in 0:(length(Train99)/10 - 1)){
    sample = (10*j+1):(10*j+10)
    median_vals[j+1] = median(Train99[sample], na.rm = TRUE)
}
plot(median_vals, type = 'l', main = "Train, Rule 99", xlim = c(0,100), ylim = c(0,0.5))

