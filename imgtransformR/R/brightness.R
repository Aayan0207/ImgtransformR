brightness_image <- function(img_array, factor, nature = "multiplicative") {
  if (nature == "multiplicative") {
    for (channel in 1:3) {
      img_array[, , channel] <- img_array[, , channel] * factor
    }
  } else if (nature == "additive") {
    for (channel in 1:3) {
      img_array[, , channel] <- img_array[, , channel] + factor
    }
  }
  return(clamped(img_array))
}
