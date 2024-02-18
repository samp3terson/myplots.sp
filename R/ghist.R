#' Create a quick histogram in ggplot.
#'
#' This will graph a given vectors in a ggplot-style histogram with the
#' x-axis labeled "x".
#'
#' @param x This is the vector to be plotted.
#' @return This function returns a ggplot histogram object.
#'
#' @examples
#' ## Create a histogram of x.
#' x <- rnorm(100)
#' ghist(x)
#'
#' @import
#'   ggplot2
#'   magrittr
#'
#' @export

ghist <- function(x) {
  data.frame(x) %>%
    ggplot(aes(x = x)) +
    geom_histogram()
}
