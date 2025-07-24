temperature_image <- function(img_array, temp) {
  for (channel in c(1, 3)) {
    img_array[, , channel] <- pmax(pmin(img_array[, , channel] + temp * 0.2, 1), 0)
  }
  return(img_array)
}
