\name{grayscale_image}
\alias{grayscale_image}
\title{Grayscale Image}
\description{Apply the grayscale filter on an image.}
\usage{
grayscale_image(img_array)
}
\arguments{
  \item{img_array}{
    Image file in the form of an R array object.
  }
}
\value{
An image array object with its RGB channel values updated to grayscale.
}
\examples{
img_array <- open_image("Example.png")

display_image(grayscale_image(img_array))
img <- grayscale_image(img_array)
save_image(grayscale_image(img_array), "grayscale.png")
}