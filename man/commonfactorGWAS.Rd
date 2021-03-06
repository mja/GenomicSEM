\name{commonfactorGWAS}
\alias{commonfactorGWAS}
\title{Estimate SNP effects on a single common factor}
\description{
Function to obtain SNP effects on common factor along with index of SNP heterogeneity
}
\usage{
commonfactorGWAS(covstruc=NULL,SNPs=NULL,estimation="DWLS",cores=NULL,toler=FALSE,SNPSE=FALSE,parallel=TRUE,Output=NULL,GC="standard",MPI=FALSE, \dots)

}
\arguments{
   \item{covstruc}{Output from Genomic SEM `ldsc` function}
   \item{SNPs}{Summary statistics file created using the 'sumstats' function}
   \item{estimation}{The estimation method to be used when running the factor model. The options are Diagonally Weighted Least Squares ("DWLS", this is the default) or Maximum Likelihood ("ML")}
   \item{cores}{The number of cores to use on your computer for parallel processing. If no number is provided, the default is to use one less core then is available on your computer}
   \item{toler}{The tolerance to use for matrix inversion.} 
   \item{SNPSE}{Whether the user wants to provide a different standard error (SE) of the SNP variance than the package default. The default is to use .0005 to reflect the fact that the SNP SE is assumed to be population fixed.}
   \item{parallel}{Whether the function should run using parallel or serial processing. Default = TRUE}
   \item{Output}{Deprecated argument that takes output from the 'addSNPs' function. If output is provided for this then covstruc and SNPs should be set to NULL.}
   \item{GC}{Level of Genomic Control (GC) you want the function to use. The default is 'standard' which adjusts the univariate GWAS standard errors by multiplying them by the square root of the univariate LDSC intercept. Additional options include 'conserv' which corrects standard errors using the univariate LDSC intercept, and 'none' which does not correct the standard errors.}
   \item{MPI}{Whetehr the function should use multi-node processing (i.e., MPI). Please note that this should only be used on a computing cluster on which the R pacakge Rmpi is already installed.} 
}

\value{
  The function outputs a series of SNP effects with their SEs and estimate of QSNP (the heterogeneity index). The output is a single object.

}



\examples{

}
