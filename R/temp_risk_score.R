#' Extreme Temperature Risk Score
#'
#' Our function takes a vector of daily temperatures and returns the risk
#' associated with the temperature vector and the number of extremes.
#' @param temp vector of daily temperatures (C)
#' @param highest_threshold highest risk threshold temperature (C) (default = 100)
#' @param medium_threshold medium risk threshold temperature (C) (default = 90)
#' @return risk, num_extremes

fish_function = function(temp, highest_threshold, medium_threshold) {
  num_high_extremes = 0
  num_med_extremes = 0
  num_not_extreme = 0
  i = 1

  #while loop to calculate number of high extreme heat days, medium extreme heat days, and normal days
  while (i < length(temp)) {
    if (temp[i] > highest_threshold)
      num_high_extremes = num_high_extremes + 1
    else if (temp[i] > medium_threshold)
      num_med_extremes = num_med_extremes + 1
    else
      num_not_extreme = num_not_extreme + 1
    i = i + 1
  }

  #calculate risk score based on the number of extremes

  #where risk_num is the proportion of trees that may die
  #use case_when to classify the risk_num number as low, medium, or high

  #risk_num = 1*(num_high_extremes/length(temp)) #???????? find some function for what risk_num is based on num extreme temps
  #risk_class = low, medium, or high

  return()
}
