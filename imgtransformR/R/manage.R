open_image <- function(path) {
  type <- stringr::str_to_lower(stringr::str_match(path, ".*\\.(\\w+)$"))[2]
  if (type == "jpg" || type == "jpeg") {
    img_array <- jpeg::readJPEG(path)
  } else if (type == "png") {
    img_array <- png::readPNG(path)
  } else {
    stop("Invalid Image file extension. Allowed types include (JPG,PNG,JPEG)")
  }
  return(img_array)
}

save_image <- function(img_array, path) {
  type <- stringr::str_to_lower(stringr::str_match(path, ".*\\.(\\w+)$"))[2]
  if (type == "jpg" || type == "jpeg") {
    jpeg::writeJPEG(img_array, path)
  } else if (type == "png") {
    png::writePNG(img_array, path)
  } else {
    stop("Invalid Image file extension. Allowed types include (JPG,PNG,JPEG)")
  }
}

display_image <- function(img) {
  plot(as.raster(img))
}
