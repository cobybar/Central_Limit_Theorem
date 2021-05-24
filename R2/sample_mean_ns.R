#' Creates a tibble with the sample means and number of observations, using the previous two functions (sample_mean & many_sample_means)
#'
#' @param vec A vector
#' @param ns A vector that tells us the subsample size for different subsamples
#' @param reps A double that tells the function how many times to repeat
#' 
#' @return A dataframe with the sample_mean for a certain number (n) of samples. 
#'
#' @import tidyverse
#'
#' @export

sample_means_ns <- function(vec, ns, reps) {
  
  my_means <- map(ns, ~many_sample_means(vec, .x, reps))
  
  sample_mean_tibble <- tibble(
    sample_mean = unlist(my_means),
    n = rep(ns, each = reps)
  )
  
  return(sample_mean_tibble)
  
  
}