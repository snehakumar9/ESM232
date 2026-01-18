#Function HW is used to calculate the yield anomaly in ton/acre for almond crops 
#Inputs are the following: 
#min_temp- a vector containing only the monthly average daily minimum temperature (C) for the month of Feb for each study year
#av_percip- a vector containing only the monthly average percipitation (mm) for the month of January for each study year
#The output of the function is a summary table containing the min, max, and mean yield anomaly over all study years

#Call the function
HW3 <- function(min_temp, av_percip) {
  
  #Calculate the yield anomaly using the temp and precipitation vectors
  yield_anomaly<- -0.015*min_temp-0.0046*(min_temp^2)-0.07*av_percip+0.0043*(av_percip^2)+.28
  yield_anomaly<- yield_anomaly %>%
    rename(yearly_yield_anomaly= mean_min_temp_feb)
  
  #Create a summary Table for the yield anomaly min, max, and mean
  yield_anomaly_summary<- yield_anomaly %>%
    summarise(
      Mean = mean(yearly_yield_anomaly, na.rm = TRUE),
      Minimum = min(yearly_yield_anomaly, na.rm = TRUE),
      Maximum = max(yearly_yield_anomaly, na.rm = TRUE)
    )
  
  #Return the yield anomaly summary table
  return(yield_anomaly_summary)
}
