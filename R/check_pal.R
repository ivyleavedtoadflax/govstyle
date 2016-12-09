#' @title Show colours in gov.uk colour palette
#'
#' @description \code{\link{check_pal}} produces a bar chart showing the
#' gov.uk approved colours as available \url{here} and in the vector
#' \code{\link{gov_cols}}.
#'
#' @param x Either an integer in which case: display \code{gov_cols(1:x)}
#'  or a character or integer vector, in which case return \code{gov_cols(x)}.
#'  Can also be specified manually: see examples.
#'
#' @return A pie chart displaying the gov.uk approved colour scheme.
#'
#' @examples
#'
#' library(govstyle)
#'
#' ## Show a subset of gov.uk colours
#'
#' ## Choose n colours:
#'
#' check_pal(2)
#'
#' check_pal(4)
#'
#' ## Pick a range of colours
#'
#' check_pal(3:8)
#'
#' check_pal(c(1,10))
#'
#' ## Pick with character vector
#'
#' check_pal(
#' x = gov_cols[c("green", "grass_green")]
#' )
#'
#' @export

check_pal <- function(
  x = gov_cols
  ) {

  if (is.numeric(x)) {

    if (length(x) > 1) {

      x <- gov_cols[x]

    } else
    x <- gov_cols[1:x]
    }

  graphics::pie(
    rep(1, length(x)),
    col = x,
    labels = names(x))

}
