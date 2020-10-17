#' bootstrap a resample object
#' @param data The `data` should be a data.frame
#' @description
#' `Resample_bootstrap()` bootstrap the subset for a data.frame, using resample modal
#' class. Rows are sampled for data.
#' @seealso
#' Other resampling techniques:[resample(), resample_partition()]
#' @return
#' @export
#' @examples
#' b <- resample_bootstrap(mtcars)
#' b
#' as.integer(b)
#' as.data.frame(b)
# Many modelling functions will do the coercion for you, so you can
# use a resample object directly in the data argument
#' lm(mpg ~ wt, data = b)

Resample_bootstrap<-function (data) {
    resample(data, sample(nrow(data), replace = TRUE))
  }
