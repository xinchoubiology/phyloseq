\name{tax_table<-}
\alias{assign-tax_table}
\alias{tax_table<-}
\alias{tax_table<-,phyloseq,ANY-method}
\alias{tax_table<-,phyloseq,taxonomyTable-method}
\alias{tax_table<-,taxonomyTable,ANY-method}
\alias{tax_table<-,taxonomyTable,taxonomyTable-method}
\title{Assign a (new) Taxonomy Table to \code{x}}
\usage{
  tax_table(x) <- value
}
\arguments{
  \item{x}{(Required). \code{\link{phyloseq-class}}}

  \item{value}{(Required).
  \code{\link{taxonomyTable-class}}. Alternatively,
  \code{value} can be a \code{\link{phyloseq-class}} that
  has a \code{\link{tax_table}} component, or a
  \code{\link{matrix-class}} that can be coerced to a
  \code{\link{taxonomyTable-class}} with row indices that
  match at least some of the \code{\link{taxa_names}} of
  \code{x}.}
}
\description{
  Assign a (new) Taxonomy Table to \code{x}
}
\examples{
# data(GlobalPatterns)
# # An example of pruning to just the first 100 taxa in GlobalPatterns.
# ex2a <- prune_taxa(taxa_names(GlobalPatterns)[1:100], GlobalPatterns)
# # The following 3 lines produces an ex2b that is equal to ex2a
# ex2b <- GlobalPatterns
# TT <- tax_table(GlobalPatterns)[1:100, ]
# tax_table(ex2b) <- TT
# identical(ex2a, ex2b)
# print(ex2b)
# # 2 examples adding a tax_table component from phyloseq or matrix classes
# ex2c <- phyloseq(otu_table(ex2b), sample_data(ex2b), phy_tree(ex2b))
# tax_table(ex2c) <- ex2b
# identical(ex2a, ex2c)
# ex2c <- phyloseq(otu_table(ex2b), sample_data(ex2b), phy_tree(ex2b))
# tax_table(ex2c) <- as(tax_table(ex2b), "matrix")
# identical(ex2a, ex2c)
}

