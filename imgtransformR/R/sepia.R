sepia_value_red <- function(R, G, B) {
  return(pmin(0.393 * R + 0.769 * G + 0.189 * B, 1))
}
sepia_value_green <- function(R, G, B) {
  return(pmin(0.349 * R + 0.686 * G + 0.168 * B, 1))
}
sepia_value_blue <- function(R, G, B) {
  return(pmin(0.272 * R + 0.534 * G + 0.131 * B, 1))
}

sepia_image <- function(img_array) {
  R <- img_array[, , 1]
  G <- img_array[, , 2]
  B <- img_array[, , 3]
  img_array[, , 1] <- sepia_value_red(R, G, B)
  img_array[, , 2] <- sepia_value_green(R, G, B)
  img_array[, , 3] <- sepia_value_blue(R, G, B)
  return(img_array)
}
