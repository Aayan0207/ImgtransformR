\name{temperature_image}
\alias{temperature_image}
\title{Temperature Image}
\description{Apply the temperature filter on an image.}
\usage{
temperature_image(img_array, temp)
}
\arguments{
  \item{img_array}{
    Image file in the form of an R array object.
  }
  \item{temp}{
    Temperature strength. More red (warmer) when temp > 0 and more blue (colder) when temp < 0. Ideal range = [-1,1].
  }
}
\value{
An image array object with its RB channel values updated according to the temperature factor.
}
\examples{
img_array <- open_image("Example.png")

display_image(temperature_image(img_array, 0.5))
img <- temperature_image(img_array, -0.3)
save_image(temperature_image(img_array, 0.4), "temperature.png")
}