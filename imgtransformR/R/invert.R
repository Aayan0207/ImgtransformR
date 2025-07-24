invert_value <- function(value) {
  return(1 - value)
}

invert_image <- function(img_array) {
  img_array[, , 1] <- invert_value(img_array[, , 1])
  img_array[, , 2] <- invert_value(img_array[, , 2])
  img_array[, , 3] <- invert_value(img_array[, , 3])
  return(img_array)
}
