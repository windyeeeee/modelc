#' partition a resample object
#' @param data The `data` should be a data.frame
#' @param p The `p` represent partition
#' @description
#' `Resample_partition()` A data.frame were splited test and train subset data
#' @seealso
#' Other resampling techniques:[Resample(), Resample_partition()]
#' @return
#' resample
#' @export
#' @import
#' purrr
#' @examples
#' ex <- Resample_partition(mtcars, c(test = 0.3, train = 0.7))
Resample_partition<-function (data, p)
  {
    if (!is.numeric(p) || length(p) < 2) {
      stop("`p` must be a named numeric vector with at least two values.")
    }
    if (abs(sum(p) - 1) > 1e-06) {
      message("Rescaling `p` to sum to 1.")
    }
    p <- p/sum(p)
    n <- nrow(data)
    g <- findInterval(seq_len(n)/n, c(0, cumsum(p)), rightmost.closed = TRUE)
    idx <- split(seq_len(n), sample(g))
    names(idx) <- names(p)
    map(idx, Resample, data = data)
  }
