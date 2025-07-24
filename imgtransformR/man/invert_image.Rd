\name{invert_image}
\alias{invert_image}
\title{Invert Image}
\description{Apply the invert filter on an image.}
\usage{
invert_image(img_array)
}
\arguments{
  \item{img_array}{
    Image file in the form of an R array object.
  }
}
\value{
An image array object with its RGB channel values updated to their inverted values.
}
\examples{
img_array <- open_image("Example.png")

display_image(invert_image(img_array))
img <- invert_image(img_array)
save_image(invert_image(img_array), "invert.png")
}