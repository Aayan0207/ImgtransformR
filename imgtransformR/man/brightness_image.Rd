\name{brightness_image}
\alias{brightness_image}
\title{Brightness Image}
\description{Adjust the brightness of an image.}
\usage{
brightness_image(img_array, factor, nature="multiplicative")
}
\arguments{
  \item{img_array}{
    Image file in the form of an R array object.
  }
  \item{factor}{
    Factor to provide brightness transformation.
    Ideal range for additive = [-0.3, 0.3]
    Ideal range for multiplicative = [0.5, 2.0] (1.0 will not result in any change)
  }
  \item{nature}{
    Either "additive" or "multiplicative". Default value is multiplicative. Controls how the factor is utilized for transformation.
  }
}
\value{
An image array object with its RGB channel values updated as per the brightness factor and nature.
}
\examples{
img_array <- open_image("Example.png")

display_image(brightness_image(img_array, 0.3, "additive"))
img <- brightness_image(img_array, 0.5)
save_image(brightness_image(img_array, 1.5, "multiplicative"), "brightness.png")
}