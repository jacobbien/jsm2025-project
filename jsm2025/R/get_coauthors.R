# Generated from create-jsm2025.Rmd: do not edit by hand

#' Return the JSM authors who are co-authors
#' 
#' @param name name of a JSM author
#' 
#' @export
get_coauthors <- function(name) {
  ii <- which(jsm2025::authors == name)
  if (length(ii) == 0) {
    message("Author not found.")
    return(character(0))
  }
  ii_coa <- ordered_nz(jsm2025::coauthor[ii, ])
  intersect(jsm2025::authors[ii_coa], jsm2025::authors2025)
}
