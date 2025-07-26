blur_image <- function(img_array, box = 3) {
  if (box %% 2 == 0 || box < 0 || box != round(box)) {
    stop("Box argument must be an odd positive integer.")
  }
  tmp <- img_array
  height <- dim(img_array)[1]
  width <- dim(img_array)[2]
  shift <- floor((box - 1) / 2)
  for (row in (1 + shift):(height - shift)) {
    for (column in (1 + shift):(width - shift)) {
      for (channel in 1:3) {
        pixel_region <- tmp[(row - shift):(row + shift), (column - shift):(column + shift), channel]
        img_array[row, column, channel] <- pmin(pmax(mean(pixel_region), 0), 1)
      }
    }
  }
  return(img_array)
}
