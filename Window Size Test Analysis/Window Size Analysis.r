ReCA_Test_1 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Window Size Analysis\\ReCA Validation Errors, Window size 1.csv", header = FALSE)
ReCA_Test_2 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Window Size Analysis\\ReCA Validation Errors, Window size 2.csv", header = FALSE)
ReCA_Test_3 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Window Size Analysis\\ReCA Validation Errors, Window size 3.csv", header = FALSE)
ReCA_Test_4 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Window Size Analysis\\ReCA Validation Errors, Window size 4.csv", header = FALSE)
ReCA_Test_5 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Window Size Analysis\\ReCA Validation Errors, Window size 5.csv", header = FALSE)
ReCA_Test_6 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Window Size Analysis\\ReCA Validation Errors, Window size 6.csv", header = FALSE)
ReCA_Test_7 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Window Size Analysis\\ReCA Validation Errors, Window size 7.csv", header = FALSE)
ReCA_Test_8 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Window Size Analysis\\ReCA Validation Errors, Window size 8.csv", header = FALSE)
ReCA_Test_9 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Window Size Analysis\\ReCA Validation Errors, Window size 9.csv", header = FALSE)
ReCA_Test_10 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Window Size Analysis\\ReCA Validation Errors, Window size 10.csv", header = FALSE)
ReCA_Test_11 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Window Size Analysis\\ReCA Validation Errors, Window size 11.csv", header = FALSE)
ReCA_Test_12 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Window Size Analysis\\ReCA Validation Errors, Window size 12.csv", header = FALSE)
ReCA_Test_13 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Window Size Analysis\\ReCA Validation Errors, Window size 13.csv", header = FALSE)
ReCA_Test_14 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Window Size Analysis\\ReCA Validation Errors, Window size 14.csv", header = FALSE)
ReCA_Test_15 = read.csv(file = "C:\\Users\\conor\\OneDrive - University College Cork\\FYP\\Window Size Analysis\\ReCA Validation Errors, Window size 15.csv", header = FALSE)


vector1 = vector(length = 460, mode = "double")
vector2 = vector(length = 460, mode = "double")
vector3 = vector(length = 460, mode = "double")
vector4 = vector(length = 460, mode = "double")
vector5 = vector(length = 460, mode = "double")
vector6 = vector(length = 460, mode = "double")
vector7 = vector(length = 460, mode = "double")
vector8 = vector(length = 450, mode = "double")
vector9 = vector(length = 450, mode = "double")
vector10 = vector(length = 450, mode = "double")
vector11 = vector(length = 450, mode = "double")
vector12 = vector(length = 450, mode = "double")
vector13 = vector(length = 450, mode = "double")
vector14 = vector(length = 450, mode = "double")
vector15 = vector(length = 440, mode = "double")


count = 1
for(i in 1:10){
  for (j in 1:46){
    vector1[count] = ReCA_Test_1[i,j] 
    vector2[count] = ReCA_Test_2[i,j] 
    vector3[count] = ReCA_Test_3[i,j] 
    vector4[count] = ReCA_Test_4[i,j] 
    vector5[count] = ReCA_Test_5[i,j] 
    vector6[count] = ReCA_Test_6[i,j] 
    vector7[count] = ReCA_Test_7[i,j] 
    count = count+1
  }
}

count = 1
for(i in 1:10){
  for (j in 1:45){
    vector8[count] = ReCA_Test_8[i,j] 
    vector9[count] = ReCA_Test_9[i,j] 
    vector10[count] = ReCA_Test_10[i,j] 
    vector11[count] = ReCA_Test_11[i,j] 
    vector12[count] = ReCA_Test_12[i,j] 
    vector13[count] = ReCA_Test_13[i,j] 
    vector14[count] = ReCA_Test_14[i,j] 
    count = count+1
  }
}

count = 1
for(i in 1:10){
  for (j in 1:44){
    vector15[count] = ReCA_Test_15[i,j] 
    count = count+1
  }
}

par(mfrow = c(1,1))
boxplot( vector2, vector3, vector4, vector5, vector6, vector7, vector8, vector9, vector10, vector11, vector12, vector13, vector14, vector15,
names = c( "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"),
xlab = "Window Size", main = "ReCA Validation Error Rates", ylim = c(0, 0.8), ylab = "Error Values"
)

summary(vector1)
summary(vector2)
summary(vector3)
summary(vector4)
summary(vector5)
summary(vector6)
summary(vector7)
summary(vector8)
summary(vector9)
summary(vector10)
summary(vector11)
summary(vector12)
summary(vector13)
summary(vector14)
summary(vector15)

quantile(vector1, c(0.025, 0.975), na.rm = TRUE)
quantile(vector2, c(0.025, 0.975), na.rm = TRUE)
quantile(vector3, c(0.025, 0.975), na.rm = TRUE)
quantile(vector4, c(0.025, 0.975), na.rm = TRUE)
quantile(vector5, c(0.025, 0.975), na.rm = TRUE)
quantile(vector6, c(0.025, 0.975), na.rm = TRUE)
quantile(vector7, c(0.025, 0.975), na.rm = TRUE)
quantile(vector8, c(0.025, 0.975), na.rm = TRUE)
quantile(vector9, c(0.025, 0.975), na.rm = TRUE)
quantile(vector10, c(0.025, 0.975), na.rm = TRUE)
quantile(vector11, c(0.025, 0.975), na.rm = TRUE)
quantile(vector12, c(0.025, 0.975), na.rm = TRUE)
quantile(vector13, c(0.025, 0.975), na.rm = TRUE)
quantile(vector14, c(0.025, 0.975), na.rm = TRUE)
quantile(vector15, c(0.025, 0.975), na.rm = TRUE)

plot(x = seq(2, 15, 1),y = c(mean(vector2), mean(vector3), mean(vector4), mean(vector5), mean(vector6), mean(vector7), mean(vector8), mean(vector9), mean(vector10), mean(vector11), mean(vector12, na.rm = TRUE), mean(vector13), mean(vector14), mean(vector15)),
ylim = c(0,0.4), type = "b"
)
lines(seq(2, 15, 1), c(quantile(vector2, 0.25), quantile(vector3, 0.25), quantile(vector4, 0.25), quantile(vector5, 0.25), quantile(vector6, 0.25), quantile(vector7, 0.25), quantile(vector8, 0.25), quantile(vector9, 0.25), quantile(vector10, 0.25), quantile(vector11, 0.25), quantile(vector12, 0.25, na.rm = TRUE), quantile(vector13, 0.25), quantile(vector14, 0.25), quantile(vector15, 0.25)), type = "b")
lines(seq(2, 15, 1), c(quantile(vector2, 0.75), quantile(vector3, 0.75), quantile(vector4, 0.75), quantile(vector5, 0.75), quantile(vector6, 0.75), quantile(vector7, 0.75), quantile(vector8, 0.75), quantile(vector9, 0.75), quantile(vector10, 0.75), quantile(vector11, 0.75), quantile(vector12, 0.75, na.rm = TRUE), quantile(vector13, 0.75), quantile(vector14, 0.75), quantile(vector15, 0.75)), type = "b")


quantile(vector1, 0.75, na.rm = TRUE) - quantile(vector1, 0.25, na.rm = TRUE)
quantile(vector2, 0.75, na.rm = TRUE) - quantile(vector2, 0.25, na.rm = TRUE)
quantile(vector3, 0.75, na.rm = TRUE) - quantile(vector3, 0.25, na.rm = TRUE)
quantile(vector4, 0.75, na.rm = TRUE) - quantile(vector4, 0.25, na.rm = TRUE)
quantile(vector5, 0.75, na.rm = TRUE) - quantile(vector5, 0.25, na.rm = TRUE)
quantile(vector6, 0.75, na.rm = TRUE) - quantile(vector6, 0.25, na.rm = TRUE)
quantile(vector7, 0.75, na.rm = TRUE) - quantile(vector7, 0.25, na.rm = TRUE)
quantile(vector8, 0.75, na.rm = TRUE) - quantile(vector8, 0.25, na.rm = TRUE)
quantile(vector9, 0.75, na.rm = TRUE) - quantile(vector9, 0.25, na.rm = TRUE)
quantile(vector10, 0.75, na.rm = TRUE) - quantile(vector10, 0.25, na.rm = TRUE)
quantile(vector11, 0.75, na.rm = TRUE) - quantile(vector11, 0.25, na.rm = TRUE)
quantile(vector12, 0.75, na.rm = TRUE) - quantile(vector12, 0.25, na.rm = TRUE)
quantile(vector13, 0.75, na.rm = TRUE) - quantile(vector13, 0.25, na.rm = TRUE)
quantile(vector14, 0.75, na.rm = TRUE) - quantile(vector14, 0.25, na.rm = TRUE)
quantile(vector15, 0.75, na.rm = TRUE) - quantile(vector15, 0.25, na.rm = TRUE)









