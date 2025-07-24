\name{rotate_image}
\alias{rotate_image}
\title{Rotate Image}
\description{Apply rotation on an image.}
\usage{
rotate_image(img_array, rotation=90)
}
\arguments{
  \item{img_array}{
    Image file in the form of an R array object.
  }
  \item{rotation}{
    Amount of rotation. Must be a positive multiple of 90. Default value is 90.
  }
}
\value{
An image array object with its rows and columns transposed and mirrored as per the rotation value.
}
\examples{
img_array <- open_image("Example.png")

display_image(rotate_image(img_array))
img <- rotate_image(img_array, 180)
save_image(rotate_image(img_array, 270), "rotate.png")
}