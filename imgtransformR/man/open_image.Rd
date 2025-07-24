\name{open_image}
\alias{open_image}
\title{Open Image}
\description{Open an image file to utilize filters under the imgtransformR package.}
\usage{
open_image(path)
}
\arguments{
  \item{path}{
    String referencing the system path of an Image file with a .jpeg,.jpg or, .png extension.
  }
}
\value{
An image array object.
}
\examples{
img <- open_image("sample_image.png")
}