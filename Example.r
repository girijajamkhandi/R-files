1 + 1
x = c(2,0,0,4)
y = c(1,9,9,9)
x + y
x *4
sqrt(x)
x[1]
x[-1]
x[1]<-3;x
x[-1]=5;x
y<9
y[4]=1;y
y < 9
y[y<9]=2
y
df = data.frame(x =1:3,y=c("a","b","c"))
df
view(df)
df[1,1]
df[2,1]
df[c(2,3),2]
Airtravel <- datasets::airquality

###Top 10 rows
head(airquality,10)
head(airquality,5)

###Bottom 10 rows
tail(airquality,10)
tail(airquality,5)

###Columns
airquality[,c(1,2)]
df = airquality[,-6]

airquality$Temp
summary(airquality$Ozone)

###Summary of data
summary(airquality)

###plots
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type = "p")
plot(airquality)

###points and lines
plot(airquality$Wind,type = "l") # p : points,l : lines,b : both
plot(airquality$Wind, xlab = 'ozone Concentration',
     ylab = 'No of Instances',main = 'Ozone levels in NY city',col ='blue')

###Horizontal bar chart
barplot(airquality$Ozone,main = 'Ozone Concentration in air',
        ylab = 'Ozone levels',col = 'red',horiz = F,axes = T)

###Histogram
hist(airquality$Temp,col='orange')
hist(airquality$Temp,
     main = 'Solar Radiation values in air',xlab = 'Solar rad.',col = 'pink')

### Single Box plot
boxplot(airquality$Wind,main = 'Boxplot')
boxplot.stats(airquality$Wind)$out
boxplot(airquality$Temp,main = 'Temp box plot')

###Multiple Box plot
boxplot(airquality,main ='multilpe')
boxplot(airquality[,1:4],main = 'Multiple')

###margin of grid(mar)
###no of rows and columns(mfrow)
###whether the border is to be added or no(bty)
#and position of the labels(las:1 for horizontal,las:0 for vertical)
###bty-Box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),las=0,bty ='o')
plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone,type = 'l')
barplot(airquality$Solar.R,main ='Solar Radiations',col = 'red')
hist(airquality$Temp,col ="orange")
boxplot(airquality$Month)
hist(airquality$Month)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4],main ='multiple box plots')
