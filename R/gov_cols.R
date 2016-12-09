#' @title A vector of the gov.uk approved colours
#'
#' @description \code{\link{gov_cols}} Provides a vector of named colours
#' from the approved gov.uk colour list available \url{here}.
#'
#' @return A list of named hexadecimal colours.
#'
#' @examples
#'
#' library(ggplot2)
#' library(govstyle)
#' library(dplyr)
#'
#' mtcars %>%
#'    ggplot +
#'    aes(
#'    x = mpg,
#'    y = wt
#'    ) +
#'    geom_point(
#'    colour = gov_cols["green"]
#'    ) +
#'    theme_gov()
#'
#' @export
#'

gov_cols <- c(
  purple      = "#2E358B",
  pink        = "#D53880",
  mellow_red  = "#DF3034",
  yellow      = "#FFBF47",
  turquoise   = "#28A197",
  mauve       = "#6F72AF",
  baby_pink   = "#F499BE",
  orange      = "#F47738",
  green       = "#006435",
  light_blue  = "#2B8CC4",
  fuschia     = "#912B88",
  red         = "#B10E1E",
  brown       = "#B58840",
  grass_green = "#85994B"
)
