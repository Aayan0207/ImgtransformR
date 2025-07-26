contrast_image <- function(img_array, factor) {
  for (channel in 1:3) {
    img_array[, , channel] <- (img_array[, , channel] - 0.5) * factor + 0.5
  }
  return(clamped(img_array))
}
