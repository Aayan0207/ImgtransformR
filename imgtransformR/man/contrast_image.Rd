\name{contrast_image}
\alias{contrast_image}
\title{Contrast Image}
\description{Apply the contrast filter on an image.}
\usage{
contrast_image(img_array, factor)
}
\arguments{
  \item{img_array}{
    Image file in the form of an R array object.
  }
  \item{factor}{
    Factor controlling the intensity of contrast. Ideal range = (0,1).
  }
}
\value{
An image array object with its RGB channel values updated according to the contrast factor.
}
\examples{
img_array <- open_image("Example.png")

display_image(contrast_image(img_array, 0.5))
img <- contrast_image(img_array, 0.3)
save_image(contrast_image(img_array, 0.4), "contrast.png")
}