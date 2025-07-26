tint_image <- function(img_array, tint_color, tint_strength) {
  for (channel in 1:3) {
    img_array[, , channel] <- (1 - tint_strength) * img_array[, , channel] + tint_strength * tint_color[channel]
  }
  return(clamped(img_array))
}
