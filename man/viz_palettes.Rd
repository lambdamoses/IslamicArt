% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{viz_palettes}
\alias{viz_palettes}
\title{Wrapper of \code{ochRe::viz_palette} to plot multiple palettes at once}
\usage{
viz_palettes(palettes, ncolors = sapply(palettes, length), ncol = 2,
  nrow = ceiling(length(palettes)/ncol))
}
\arguments{
\item{palettes}{Named list of character vectors that contain hex colors of
the palettes.}

\item{ncolors}{Integer vector showing the number of colors to plot for each
palette, defaults to all colors in each palette.}

\item{ncol}{Number of columns in the plot.}

\item{nrow}{Number of rows in the plot.}
}
\description{
This function plots multiple palettes passed as a named list of hex color
vectors without the user having to write a loop.
}
