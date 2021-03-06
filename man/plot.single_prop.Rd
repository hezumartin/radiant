% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/single_prop.R
\name{plot.single_prop}
\alias{plot.single_prop}
\title{Plot method for the single_prop function}
\usage{
\method{plot}{single_prop}(x, sp_plots = "hist", shiny = FALSE, ...)
}
\arguments{
\item{x}{Return value from \code{\link{single_prop}}}

\item{sp_plots}{Plots to generate. "hist" shows a histogram of the data along with vertical lines that indicate the sample proportion and the confidence interval. "simulate" shows the location of the sample proportion and the comparison value (sp_comp_value). Simulation is used to demonstrate the sampling variability in the data under the null-hypothesis}

\item{shiny}{Did the function call originate inside a shiny app}

\item{...}{further arguments passed to or from other methods}
}
\description{
Plot method for the single_prop function
}
\details{
See \url{http://vnijs.github.io/radiant/quant/single_prop.html} for an example in Radiant
}
\examples{
result <- single_prop("diamonds","clarity", sp_levels = "IF", sp_comp_value = 0.05)
plot(result, sp_plots = c("hist", "simulate"))
}
\seealso{
\code{\link{single_prop}} to generate the result

\code{\link{summary.single_prop}} to summarize the results
}

