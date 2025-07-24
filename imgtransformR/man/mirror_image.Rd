\name{mirror_image}
\alias{mirror_image}
\title{Mirror Image}
\description{Mirror/Flip an image vertically or horizontally.}
\usage{
mirror_image(img_array, flip="horizontal")
}
\arguments{
  \item{img_array}{
    Image file in the form of an R array object.
  }
  \item{flip}{
    Axis for mirroring. Either "vertical" or "horizontal". Default value is "horizontal".
  }
}
\value{
An image array object with its rows or columns mirrored as per the flip axis.
}
\examples{
img_array <- open_image("Example.png")

display_image(mirror_image(img_array))
img <- mirror_image(img_array, "vertical")
save_image(mirror_image(img_array, "horizontal"), "mirror.png")
}