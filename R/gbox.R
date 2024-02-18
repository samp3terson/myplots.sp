#' Create a quick box plot in ggplot.
#'
#' This will graph two given vectors in a ggplot-style box plot with the
#' x-axis labeled "x" and the y-axis labeled "y".
#'
#' @param x This is the vector to be plotted.
#' @param y This is the categorical vector (if there is one) to be plotted as well.
#' @param orientation This is a parameter that will dictate whether the plot is vertical or horizontal.
#' @return This function returns a ggplot box plot object.
#'
#' @examples
#' ## Create a box plot of y vs x.
#' x <- (1:10)
#' y <- ('red','red','red','blue','blue','blue','green','green','green','orange')
#' gbox(x, y, hoz)
#'
#' @import
#'   ggplot2
#'   magrittr
#'
#' @export

gbox <- function(x, y, hoz) {
  data.frame(x, y) %>%
    ggplot(aes(x = x, y = y)) +
    geom_boxplot(orientation=hoz)
}
