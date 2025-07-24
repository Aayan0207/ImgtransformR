brightness_image <- function(img_array, factor, nature = "multiplicative") {
  if (nature == "multiplicative") {
    for (channel in 1:3) {
      img_array[, , channel] <- pmax(pmin(img_array[, , channel] * factor, 1), 0)
    }
  } else if (nature == "additive") {
    for (channel in 1:3) {
      img_array[, , channel] <- pmax(pmin(img_array[, , channel] + factor, 1), 0)
    }
  }
  return(img_array)
}
