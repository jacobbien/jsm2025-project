# Generated from create-jsm2025.Rmd: do not edit by hand

#' Citation information on JSM authors
#' 
#' A citation matrix.  Element `ij` gives a numerical measure of how much
#' author `authors[i]` cites author `authors[j]`.  This can be roughly thought 
#' of as the number of times `authors[i]` cites `authors[j]` in the literature.
#' This was based on Semantic Scholar citation data. An approximate entity matching was performed to associate names across these different data sets.
#' Fractional values arise when we have matched a JSM author to multiple 
#' Semantic Scholar authors. 
#' 
#' @format A sparse matrix of class "dgCMatrix" from the `Matrix` package.
#' @source This data was created by processing the JSM 2022-2025 programs and the "papers", "authors", and "citations" data sets from Semantic Scholar:
#'  
#' Waleed Ammar, Dirk Groeneveld, Chandra Bhagavatula, Iz Beltagy, 
#' Miles Crawford, Doug Downey, Jason Dunkelberger, Ahmed Elgohary, 
#' Sergey Feldman, Vu A. Ha, Rodney Michael Kinney, Sebastian Kohlmeier, 
#' Kyle Lo, Tyler C. Murray, Hsu-Han Ooi, Matthew E. Peters, Joanna L. Power, 
#' Sam Skjonsberg, Lucy Lu Wang, Christopher Wilhelm, Zheng Yuan, 
#' Madeleine van Zuylen, Oren Etzioni, "Construction of the Literature Graph in
#' Semantic Scholar." NAACL 2018.
"cites"
