\name{save_image}
\alias{save_image}
\title{Save Image}
\description{Save an image array object as an image file in memory. (Extensions allowed: .png, .jpeg, .jpg)}
\usage{
save_image(img_array, path)
}
\arguments{
  \item{img_array}{
    Image file in the form of an R array object.
  }
  \item{path}{
    String containing the location to save the image at.
  }
}
\value{
NULL
}
\examples{
save_image(img_array, "Example.jpeg")
}