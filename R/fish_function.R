#' Return Fish Statistics
#'
#' Our function takes a vector of fish names and returns the most common fish,
#' the rarest fish, and the total number of fish.
#' @param fish_vec vector of fish names
#' @return max_min_total list of 3 results

fish_function = function(fish_vec) {
  fish_vec <- as.factor(fish_vec)

  max_fish <- names(which.max(summary(fish_vec)))
  min_fish <- names(which.min(summary(fish_vec)))

  total_fish <- length(fish_vec)
  max_min_total <- c(max_fish, min_fish, total_fish)
  return(max_min_total)
}
