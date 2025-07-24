\name{tint_image}
\alias{tint_image}
\title{Tint Image}
\description{Apply the tint filter on an image.}
\usage{
tint_image(img_array, tint_color, tint_strength)
}
\arguments{
  \item{img_array}{
    Image file in the form of an R array object.
  }
  \item{tint_color}{
    An R vector containing 3 values, each between 0 and 1, representing the RGB of a color.
  }
  \item{tint_strength}{
    Intensity of the tint filter. Ideal range = (0,1)
  }
}
\value{
An image array object with its RGB channel values updated according to the tint color and strength.
}
\examples{
img_array <- open_image("Example.png")

display_image(tint_image(img_array, c(231,18,98)/255, 0.2))
img <- tint_image(img_array, c(0.75,0.56,0.32), 0.3)
save_image(tint_image(img_array, c(78,156,67)/255, 0.4), "tint.png")
}