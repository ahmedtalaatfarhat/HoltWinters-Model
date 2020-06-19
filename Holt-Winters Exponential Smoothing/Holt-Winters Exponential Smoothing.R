# Load The Data
sales  <- scan("http://robjhyndman.com/tsdldata/data/fancy.dat")

# Convert The Data To Time Series
sales_time_series<- ts(sales, frequency=12, start=c(1987,1)) 

# Plot The Time Series
plot.ts(souvenirts)


# The Time Series is Multiplication Components so I Will Take The Log
log_time_series<-log(sales_time_series)


# Plot The Log Time Series
plot.ts(log_time_series)

# HoltWinters Model
log_time_series_forecast<-HoltWinters(log_time_series) 
log_time_series_forecast

# Plot The HoltWinters Model
plot(log_time_series_forecast,xlim=c(1988,1998),ylim=c(7,13))

# Predicting for 48 Months by The HoltWinters Model and Plot The predicting
forecasting<-predict(log_time_series_forecast,n.ahead=48)
lines(forecasting,col="red")
