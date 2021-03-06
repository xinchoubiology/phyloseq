\name{access}
\alias{access}
\title{Universal slot accessor function for phyloseq-class.}
\usage{
  access(physeq, slot, errorIfNULL=FALSE)
}
\arguments{
  \item{physeq}{(Required). \code{\link{phyloseq-class}}.}

  \item{slot}{(Required). A character string indicating the
  slot (not data class) of the component data type that is
  desired.}

  \item{errorIfNULL}{(Optional). Logical. Should the
  accessor stop with an error if the slot is empty
  (\code{NULL})? Default \code{FALSE}.}
}
\value{
  Returns the component object specified by the argument
  \code{slot}. Returns NULL if slot does not exist. Returns
  \code{physeq} as-is if it is a component class that
  already matches the slot name.
}
\description{
  This function is used internally by many accessors and in
  many functions/methods that need to access a particular
  type of component data. If something is wrong, or the
  slot is missing, the expected behavior is that this
  function will return NULL. Thus, the output can be tested
  by \code{\link{is.null}} as verification of the presence
  of a particular data component. Unlike the
  component-specific accessors (e.g.
  \code{\link{otu_table}}, or \code{\link{phy_tree}}), the
  default behavior is not to stop with an error if the
  desired slot is empty. In all cases this is controlled by
  the \code{errorIfNULL} argument, which can be set to
  \code{TRUE} if an error is desired.
}
\examples{
#
## data(GlobalPatterns)
## access(GlobalPatterns, "tax_table")
## access(GlobalPatterns, "phy_tree")
## access(otu_table(GlobalPatterns), "otu_table")
## # Should return NULL:
## access(otu_table(GlobalPatterns), "sample_data")
## access(otuTree(GlobalPatterns), "sample_data")
## access(otuSam(GlobalPatterns), "phy_tree")
}
\seealso{
  \code{\link{getslots.phyloseq}},
  \code{\link{merge_phyloseq}}
}

