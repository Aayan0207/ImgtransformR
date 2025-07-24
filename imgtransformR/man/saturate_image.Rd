\name{saturate_image}
\alias{saturate_image}
\title{Saturate Image}
\description{Apply the saturation filter on an image.}
\usage{
saturate_image(img_array, factor)
}
\arguments{
  \item{img_array}{
    Image file in the form of an R array object.
  }
  \item{factor}{
    Saturation strength. Ideal range = [0,2]. The higher the value, the more the saturation.
  }
}
\value{
An image array object with its RGB channel values updated according to the saturation factor.
}
\examples{
img_array <- open_image("Example.png")

display_image(saturate_image(img_array, 0.5))
img <- saturate_image(img_array, 1.5)
save_image(saturate_image(img_array, 1.8), "saturate.png")
}