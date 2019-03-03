#' Wrapper of \code{ochRe::viz_palette} to plot multiple palettes at once
#'
#' This function plots multiple palettes passed as a named list of hex color
#' vectors without the user having to write a loop.
#'
#' @param palettes Named list of character vectors that contain hex colors of
#' the palettes.
#' @param ncolors Integer vector showing the number of colors to plot for each
#' palette, defaults to all colors in each palette.
#' @param ncol Number of columns in the plot.
#' @param nrow Number of rows in the plot.
#'
#' @importFrom ochRe viz_palette
#' @importFrom graphics par
#' @export
viz_palettes <- function(palettes,
                         ncolors = sapply(palettes, length),
                         ncol = 2,
                         nrow = ceiling(length(palettes) / ncol)) {
  if (is.atomic(palettes) && is.character(palettes)) {
    return(viz_palette(palettes, "Palette", length(palettes)))
  }
  if (!is.list(palettes) || is.null(names(palettes))) {
    stop("palettes must be a named list.")
  }
  if (!is.numeric(ncolors)) {
    stop("ncolors must be integer.")
  }
  if (length(ncolors) == 1) {
    warning("The same number of colors will be plotted for all palettes.")
    ncolors <- rep(ncolors, length(palettes))
  }
  actual_n <- sapply(palettes, length)
  not_enough <- ncolors - actual_n > 0
  if (any(not_enough)) {
    message("More colors than available were requested for some palettes. Only plotting the colors available.")
    ncolors[not_enough] <- actual_n[not_enough]
  }
  if (length(palettes) != length(ncolors)) {
    stop("Lengths of palettes must match that of ncolors.")
  }
  pal_names <- names(palettes)
  par(mfrow = c(nrow, ncol), lheight = 2, mar = rep(1, 4), adj = 0)
  for (i in seq_along(palettes)) {
    viz_palette(palettes[[i]], pal_names[i])
  }
}
