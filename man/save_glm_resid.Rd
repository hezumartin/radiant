% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/glm_reg.R
\name{save_glm_resid}
\alias{save_glm_resid}
\title{Save residuals generated in the glm_reg function}
\usage{
save_glm_resid(object)
}
\arguments{
\item{object}{Return value from \code{\link{glm_reg}}}
}
\description{
Save residuals generated in the glm_reg function
}
\details{
See \url{http://vnijs.github.io/radiant/quant/glm_reg.html} for an example in Radiant
}
\examples{
\donttest{
result <- glm_reg("titanic", "survived", "pclass", glm_levels = "Yes")
save_glm_resid(result)
head(titanic)
}
}

