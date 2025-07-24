\name{sharpen_image}
\alias{sharpen_image}
\title{Sharpen Image}
\description{Apply the sharpen filter on an image.}
\usage{
sharpen_image(img_array)
}
\arguments{
  \item{img_array}{
    Image file in the form of an R array object.
  }
}
\value{
An image array object with its RGB channel values updated as per the sharpen filter.
}
\examples{
img_array <- open_image("Example.png")

display_image(sharpen_image(img_array))
img <- sharpen_image(img_array)
save_image(sharpen_image(img_array), "sharpen.png")
}