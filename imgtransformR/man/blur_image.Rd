\name{blur_image}
\alias{blur_image}
\title{Blur Image}
\description{Apply the blur filter on an image.}
\usage{
blur_image(img_array)
}
\arguments{
  \item{img_array}{
    Image file in the form of an R array object.
  }
}
\value{
An image array object with its RGB channel values updated to blur.
}
\examples{
img_array <- open_image("Example.png")

display_image(blur_image(img_array))
img <- blur_image(img_array)
save_image(blur_image(img_array), "blur.png")
}