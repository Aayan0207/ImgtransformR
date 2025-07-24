saturate_image <- function(img_array, factor) {
  R <- img_array[, , 1]
  G <- img_array[, , 2]
  B <- img_array[, , 3]
  for (channel in 1:3) {
    img_array[, , channel] <- pmax(pmin(grayscale_value(R, G, B) + factor * (img_array[, , channel] - grayscale_value(R, G, B)), 1), 0)
  }
  return(img_array)
}
