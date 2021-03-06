% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/testing.R
\name{testing}
\alias{testing}
\title{Conducting Score Tests for Interaction}
\usage{
testing(formula_int, label_names, Y, X, Z1, Z2, kern_list,
  mode = "loocv", strategy = "stack", beta_exp = 1, test = "boot",
  lambda = exp(seq(-10, 5)), B = 100)
}
\arguments{
\item{formula_int}{(formula) A symbolic description of the model with
interaction.}

\item{label_names}{(list) A character string indicating all the interior
variables included in each group of random effect. See Details.}

\item{Y}{(vector of length n) Reponses of the dataframe.}

\item{X}{(dataframe, n*p) Fixed effects variables in the dataframe (could
contains several subfactors).}

\item{Z1}{(dataframe, n*q1) The first group of random effects variables in
the dataframe (could contains several subfactors).}

\item{Z2}{(dataframe, n*q2) The second group of random effects variables in
the dataframe (could contains several subfactors).}

\item{kern_list}{(list of length K) A list of kernel functions given by
user.}

\item{mode}{(character) A character string indicating which tuning parameter
criteria is to be used.}

\item{strategy}{(character) A character string indicating which ensemble
strategy is to be used.}

\item{beta_exp}{(numeric/character) A numeric value specifying the parameter
when strategy = "exp" \code{\link{ensemble_exp}}.}

\item{test}{(character) A character string indicating which test is to be
used.}

\item{lambda}{(numeric) A numeric string specifying the range of tuning parameter 
to be chosen. The lower limit of lambda must be above 0.}

\item{B}{(integer) A numeric value indicating times of resampling when test
= "boot".}
}
\value{
\item{pvalue}{(numeric) p-value of the test.}
\item{lambda}{(numeric) The selected tuning parameter based on the estimated
ensemble kernel matrix.} \item{u_hat}{(vector of length K) A vector of
weights of the kernels in the library.}
}
\description{
Conduct score tests comparing a fitted model and a more general alternative
model.
}
\details{
There are two tests available here:

\bold{Asymptotic Test}

This is based on the classical variance component test to construct a
testing procedure for the hypothesis about Gaussian process function.

\bold{Bootstrap Test}

When it comes to small sample size, we can use bootstrap test instead, which
can give valid tests with moderate sample sizes and requires similar
computational effort to a permutation test.
}
\examples{



testing(formula_int = Y ~ X + Z1 * Z2,
label_names = list(Z1 = c("z1", "z2"), Z2 = c("z3", "z4")),
CVEK:::Y, CVEK:::X, CVEK:::Z1, CVEK:::Z2, CVEK:::kern_list, 
mode = "loocv", strategy = "stack",
beta_exp = 1, test = "boot", lambda = exp(seq(-10, 5)), B = 100)



}
\references{
Xihong Lin. Variance component testing in generalised linear
models with random effects. June 1997.

Arnab Maity and Xihong Lin. Powerful tests for detecting a gene effect in
the presence of possible gene-gene interactions using garrote kernel
machines. December 2011.

Petra Bu ̊zˇkova ́, Thomas Lumley, and Kenneth Rice. Permutation and
parametric bootstrap tests for gene-gene and gene-environment interactions.
January 2011.
}
\seealso{
method: \code{\link{generate_kernel}}

mode: \code{\link{tuning}}

strategy: \code{\link{ensemble}}
}
\author{
Wenying Deng
}
