# Function Name: Yield Anomaly for Almond Crops
# This function is used to calculate the anomalies in yield (ton/acre) for almond crops
# based on average precipitation in January and the average minimum temperature in February
# for the year in which yield anomaly is calculated

# Inputs are the following: 
# min_temp - the average minimum temperature (C) for the month of Feb for each study year
# avg_precip - the average precipitation (mm) for the month of January for each study year
# The output of the function is a summary table containing the min, max, and mean yield anomaly over all study years

#Create Function
yield_anomaly <- function(min_temp, av_precip) {
  return(-0.015*min_temp - (0.0046*(min_temp)^2) - (0.07*av_precip) + (0.0043*(av_precip)^2) + 0.28)
}
