grayscale_value <- function(R, G, B) {
  return(0.2989 * R + 0.587 * G + 0.114 * B)
}

grayscale_image <- function(img_array) {
  value <- grayscale_value(img_array[, , 1], img_array[, , 2], img_array[, , 3])
  img_array[, , 1] <- img_array[, , 2] <- img_array[, , 3] <- value
  return(clamped(img_array))
}
