rotate_image <- function(img_array, rotation = 90) {
  rotation <- rotation %% 360
  if (rotation %% 90 != 0) {
    stop("Rotation value must be a multiple of 90")
  }
  if (rotation == 90) {
    # Transpose + Horizontal Flip
    img_array <- aperm(img_array, c(2, 1, 3)) |>
      mirror_image(flip = "horizontal")
  } else if (rotation == 180) {
    # Horizontal + Vertical Flip
    img_array <- mirror_image(img_array, flip = "horizontal") |>
      mirror_image(flip = "vertical")
  } else if (rotation == 270) {
    # Horizontal Flip + Transpose
    img_array <- mirror_image(img_array, flip = "horizontal") |>
      aperm(c(2, 1, 3))
  }
  return(img_array)
}
