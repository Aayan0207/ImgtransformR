sharpen_image <- function(img_array) {
  height <- dim(img_array)[1]
  width <- dim(img_array)[2]
  tmp <- img_array
  kernel <- matrix(c(0, -1, 0, -1, 5, -1, 0, -1, 0), 3, 3)
  for (row in 2:(height - 1)) {
    for (column in 2:(width - 1)) {
      for (channel in 1:3) {
        pixel_region <- tmp[(row - 1):(row + 1), (column - 1):(column + 1), channel]
        img_array[row, column, channel] <- sum(pixel_region * kernel)
      }
    }
  }
  return(clamped(img_array))
}
