
#' Create a resample object
#' @description
#' `Resample()` creates the subset for a data.frame, using resample modal
#' class. Rows are typically choosed for data.
#' @param data The `data` should be a data.frame
#' @param idx  Index to choose need rows of data
#' @return
#' vlaue as resample objects
#' @references
#' modelr
#' @seealso
#' Other resampling techniques:[Resample_bootstrap(), Resample_partition()]
#'
#' @export
#' @examples
#' Resample(mtcars, 1:10)
Resample<-function (data, idx) {
    if (!is.data.frame(data)) {
      stop("`data` must be a data frame.", call. = FALSE)
    }
    if (!is.integer(idx)) {
      stop("`idx` must be an integer vector.", call. = FALSE)
    }
    structure(list(data = data, idx = idx), class = "resample") #转换类结构，list ->resample
  }
