mirror_image <- function(img_array, flip = "horizontal") {
  L <- 1
  if (flip == "horizontal") {
    R <- dim(img_array)[2]
    while (L < R) {
      tmp <- img_array[, L, ]
      img_array[, L, ] <- img_array[, R, ]
      img_array[, R, ] <- tmp
      L <- L + 1
      R <- R - 1
    }
  } else if (flip == "vertical") {
    R <- dim(img_array)[1]
    while (L < R) {
      tmp <- img_array[L, , ]
      img_array[L, , ] <- img_array[R, , ]
      img_array[R, , ] <- tmp
      L <- L + 1
      R <- R - 1
    }
  }
  return(img_array)
}
