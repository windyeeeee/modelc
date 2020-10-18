#' bootstrap a resample object
#' @param data The `data` should be a data.frame
#' @description
#' `Resample_bootstrap()` bootstrap the subset for a data.frame, using resample modal
#' class. Rows are sampled for data.
#' @seealso
#' Other resampling techniques:[Resample(), Resample_partition()]
#' @return
#' resample
#' @export
#' @examples
#' b <- Resample_bootstrap(mtcars)
# Many modelling functions will do the coercion for you, so you can
# use a resample object directly in the data argument
Resample_bootstrap<-function (data) {
    Resample(data, sample(nrow(data), replace = TRUE))
  }
