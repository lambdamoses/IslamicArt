#' islamic palette with ramped colours
#'
#' @param palette Choose from 'islamic_palettes' list
#' @param alpha transparency
#' @param reverse If TRUE, the direction of the colours is reversed.
#'
#' @examples
#' library(scales)
#' show_col(islamic_pal()(10))
#'
#' filled.contour(volcano,color.palette = islamic_pal(), asp=1)
#' @importFrom grDevices colorRampPalette
#' @export
islamic_pal <- function(palette="samarqand", alpha = 1, reverse = FALSE) {
  pal <- islamic_palettes[[palette]]
  if (reverse) {
    pal <- rev(pal)
  }
  return(colorRampPalette(pal, alpha))
}

#' Setup color palette for ggplot2
#'
#' @rdname scale_color_islamic
#' @param palette Choose from 'islamic_palettes' list
#' @param reverse logical, Reverse the order of the colours?
#' @param alpha transparency
#' @param discrete whether to use a discrete colour palette
#' @param ... additional arguments to pass to scale_color_gradientn
#' @inheritParams viridis::scale_color_viridis
#' @importFrom ggplot2 scale_colour_manual
#' @importFrom viridis scale_color_viridis
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point(aes(colour = factor(cyl))) +
#'   scale_colour_islamic(palette="ottoman")
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point(aes(colour = hp)) +
#'   scale_colour_islamic(palette="shiraz", discrete = FALSE)
#' ggplot(data = mpg) +
#'   geom_point(mapping = aes(x = displ, y = hwy, color = class)) +
#'   scale_colour_islamic(palette="jerusalem")
#' ggplot(diamonds) + geom_bar(aes(x = cut, fill = clarity)) +
#'   scale_fill_islamic()
#' @export
#'
#' @importFrom ggplot2 discrete_scale scale_color_gradientn
scale_color_islamic <- function(..., palette="samarqand",
                              discrete = TRUE, alpha = 1, reverse = FALSE) {
  if (discrete) {
    discrete_scale("color", "islamic",
                   palette = islamic_pal(palette, alpha = alpha, reverse = reverse))
  } else {
    warning("This palette has not been optimized for linear perception. Use at your own risk.")
    scale_color_gradientn(colours = islamic_pal(palette, alpha = alpha,
                                                reverse = reverse, ...)(256))
  }
}

#' @rdname scale_color_islamic
#' @export
scale_colour_islamic <- scale_color_islamic

#' Setup fill palette for ggplot2
#'
#' @param palette Choose from 'islamic_palettes' list
#'
#' @inheritParams viridis::scale_fill_viridis
#' @inheritParams islamic_pal
#'
#' @param discrete whether to use a discrete colour palette
#' @param ... additional arguments to pass to scale_color_gradientn
#' @importFrom ggplot2 scale_fill_manual discrete_scale scale_fill_gradientn
#'
#' @export
scale_fill_islamic <- function(..., palette="samarqand",
                             discrete = TRUE, alpha=1, reverse = TRUE) {
  if (discrete) {
    discrete_scale("fill", "islamic",
                   palette = islamic_pal(palette, alpha = alpha, reverse = reverse))
  }
  else {
    warning("This palette has not been optimized for linear perception. Use at your own risk.")
    scale_fill_gradientn(colors = islamic_pal(palette, alpha = alpha,
                                              reverse = reverse, ...)(256))
  }
}
