# Load The Data
rain <- scan("https://robjhyndman.com/tsdldata/hurst/precip1.dat",skip=1) 

# Convert The Data To Time Series
raints <- ts(rain,start=c(1813)) 

# HoltWinters Model
rainforecasts <- HoltWinters(raints, beta=FALSE, gamma=FALSE) 
rainforecasts 

# Plot The HoltWinters Model
plot(rainforecasts)

# Predicting for 10 Years by The HoltWinters Model and Plot The predicting
predictedRain<-predict(rainforecasts,n.ahead = 10) 
plot(rainforecasts) 
lines(predictedRain,col="red")
