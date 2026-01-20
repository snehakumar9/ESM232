# Function Name: Yield Anomaly for Almond Crops
# This function is used to calculate the anomalies in yield (ton/acre) for almond crops
# based on average precipitation in January and the average minimum temperature in February
# for the year in which yield anomaly is calculated

# Inputs are the following: 
# min_temp - the average minimum temperature (C) for the month of Feb for each study year
# sum_precip - the total precipitation (mm) for the month of January for each study year
# The output of the function is a list of the min, max, and mean yield anomaly over all study years

#Create Function
yield_anomaly <- function(min_temp, sum_precip) {
  yield <- -0.015*min_temp - (0.0046*(min_temp)^2) - (0.07*sum_precip) + (0.0043*(sum_precip)^2) + 0.28
  return(list(yield = yield,
              mean = mean(yield, na.rm = TRUE),
              min = min(yield, na.rm = TRUE),
              max = max(yield, na.rm = TRUE)))
}