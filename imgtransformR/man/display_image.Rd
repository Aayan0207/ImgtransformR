\name{display_image}
\alias{display_image}
\title{Display Image}
\description{Display an image array object as an image file in the Plots tab of RStudio.}
\usage{
display_image(img)
}
\arguments{
  \item{img}{
    Image file in the form of an R array object.
  }
}
\value{
NULL
}
\examples{
display_image(img)
display_image(grayscale_image(img))
}