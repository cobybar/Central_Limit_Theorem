#' Takes a subsample of a larger random sample and takes the mean of that subsample.
#'
#' @param vec A vector
#' @param n number of observations in subsample
#'
#' @return A double, which is the mean of the subsample.
#'
#' @import tidyverse
#'
#' @export

sample_mean <- function(vec, n) {
  
  sub_sample <- sample(vec, n)
  
  mean(sub_sample)
  
}
