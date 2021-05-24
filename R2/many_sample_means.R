#' Repeats the sample_mean function a certain number of times (reps).
#'
#' @param vec A vector
#' @param n number of observations in subsample
#' @param reps A double that tells the function how many times to repeat
#' 
#' @return A set of doubles, which is the means of the subsamples, reps amount of times.
#'
#' @import tidyverse
#'
#' @export

many_sample_means <- function(vec, n, reps) {
  
  replicate(reps, sample_mean(vec, n))
  
}
