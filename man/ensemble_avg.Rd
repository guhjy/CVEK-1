% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ensemble.R
\name{ensemble_avg}
\alias{ensemble_avg}
\title{Estimating Ensemble Kernel Matrices Using AVG}
\usage{
ensemble_avg(n, kern_size, beta_exp, error_mat, A_hat)
}
\arguments{
\item{n}{(integer) A numeric number specifying the number of observations.}

\item{kern_size}{(integer, equals to K) A numeric number specifying the
number of kernels in the kernel library.}

\item{beta_exp}{(numeric/character) A numeric value specifying the parameter
when strategy = "exp" \code{\link{ensemble_exp}}.}

\item{error_mat}{(matrix, n*K) A n\*K matrix indicating errors.}

\item{A_hat}{(list of length K) A list of projection matrices for each
kernel in the kernel library.}
}
\value{
\item{A_est}{(matrix, n*n) A list of estimated kernel matrices.}

\item{u_hat}{(vector of length K) A vector of weights of the kernels in the
library.}
}
\description{
Give a list of estimated kernel matrices and their weights using simple
averaging.
}
\details{
\bold{Simple Averaging}

Motivated by existing literature in omnibus kernel, we propose another way
to obtain the ensemble matrix by simply choosing unsupervised weights
\eqn{u_d=1/D} for \eqn{d=1,2,...D}.
}
\references{
Jeremiah Zhe Liu and Brent Coull. Robust Hypothesis Test for
Nonlinear Effect with Gaussian Processes. October 2017.

Xiang Zhan, Anna Plantinga, Ni Zhao, and Michael C. Wu. A fast small-sample
kernel inde- pendence test for microbiome community-level association
analysis. December 2017.

Arnak S. Dalalyan and Alexandre B. Tsybakov. Aggregation by Exponential
Weighting and Sharp Oracle Inequalities. In Learning Theory, Lecture Notes
in Computer Science, pages 97– 111. Springer, Berlin, Heidelberg, June 2007.
}
\seealso{
mode: \code{\link{tuning}}
}
\author{
Wenying Deng
}
