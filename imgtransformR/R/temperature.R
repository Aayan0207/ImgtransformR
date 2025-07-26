temperature_image <- function(img_array, temp) {
  for (channel in c(1, 3)) {
    img_array[, , channel] <- img_array[, , channel] + temp * 0.2
  }
  return(clamped(img_array))
}
