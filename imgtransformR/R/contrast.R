contrast_image <- function(img_array, factor) {
  for (channel in 1:3) {
    img_array[, , channel] <- pmax(pmin((img_array[, , channel] - 0.5) * factor + 0.5, 1), 0)
  }
  return(img_array)
}
