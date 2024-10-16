#' Title
#'
#'This fumction produces a ggplot plot of \code{vary} versus \code{varx}
#'with diamond markers
#'
#' @param df a dataframe
#' @param varx a string name for variable x in the dataframe df
#' @param vary a string name for variable y in the dataframe df
#'
#' @return a plot of dimond makers of \code{vary} verus \code{varx}
#' @export
#'
#' @examples
#'
#' @importFrom ggplot2 ggplot
#' @importFrom ggplot2 geom_point
#'
#' @examples
#' df.test <- data.frame(x = rnorm(10),
#'                       y = rnorm(10))
#' diamond_plot(df.test, 'x', 'y')
#'
diamond_plot <- function(df, varx, vary){
  ggplot(df, aes(x=get(varx), y=get(vary))) +
    geom_point(shape=23, fill="blue", color="darkred", size=3)
}


