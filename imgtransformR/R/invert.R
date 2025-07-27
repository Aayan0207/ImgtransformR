invert_value <- function(value) {
  return(1 - value)
}

invert_image <- function(img_array) {
  for (channel in 1:3) {
    img_array[, , channel] <- invert_value(img_array[, , channel])
  }
  return(img_array)
}
