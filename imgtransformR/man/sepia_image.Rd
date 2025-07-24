\name{sepia_image}
\alias{sepia_image}
\title{Sepia Image}
\description{Apply the sepia filter on an image.}
\usage{
sepia_image(img_array)
}
\arguments{
  \item{img_array}{
    Image file in the form of an R array object.
  }
}
\value{
An image array object with its RGB channel values updated to sepia.
}
\examples{
img_array <- open_image("Example.png")

display_image(sepia_image(img_array))
img <- sepia_image(img_array)
save_image(sepia_image(img_array), "sepia.png")
}