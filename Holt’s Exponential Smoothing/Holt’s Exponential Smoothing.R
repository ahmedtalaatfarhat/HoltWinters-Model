# Load The Data
skirts <- scan("http://robjhyndman.com/tsdldata/roberts/skirts.dat",skip=5)

# Convert The Data To Time Series
skirtsseries <- ts(skirts,start=c(1866)) 

# Plot The Time Series
plot.ts(skirtsseries)

# HoltWinters Model
skirtsforecasts<-HoltWinters(skirtsseries,gamma=FALSE)
skirtsforecasts 

# Plot The HoltWinters Model
plot(skirtsforecasts,xlim=c(1860,1970))


# Predicting for 4 Years by The HoltWinters Model and Plot The predicting
forecasting<-predict(skirtsforecasts,n.ahead=4)
lines(forecasting,col="red")
