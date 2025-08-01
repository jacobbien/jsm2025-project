# Generated from create-jsm2025.Rmd: do not edit by hand

#' Get talks based on some criteria
#' 
#' @param speakers character vector of speaker names.  Names start with given (first) name, following the format of JSM program.
#' @param authors character vector of author names. Same as above.
#' @param people character vector of people names.  This looks for the person as a speaker, author, and chair.
#' @param keywords character vector of words to look for in talk title
#' @param days vector of Dates (e.g. "2025-08-04")
#' @param session_types character vector, e.g. "Invited Papers"
#' @export
get_talks <- function(speakers, authors, people, keywords, days, session_types) {
  talks <- jsm2025::talks
  if (!missing(speakers)) {
    pattern <- paste(speakers, collapse = "|") %>% 
      stringr::str_replace("\\(", "\\\\(") %>% # escape parentheses in names
      stringr::str_replace("\\)", "\\\\)")
    if (!(pattern %in% c("", "NA")))
      talks <- talks %>% dplyr::filter(stringr::str_detect(.data$speaker, pattern))
  }
  if (!missing(authors)) {
    pattern <- paste(authors, collapse = "|") %>% 
      stringr::str_replace("\\(", "\\\\(") %>% # escape parentheses in names
      stringr::str_replace("\\)", "\\\\)")
    if (!(pattern %in% c("", "NA")))
      talks <- talks %>% dplyr::filter(stringr::str_detect(.data$author, pattern))
  }
  if (!missing(people)) {
    pattern <- paste(people, collapse = "|") %>% 
      stringr::str_replace("\\(", "\\\\(") %>% # escape parentheses in names
      stringr::str_replace("\\)", "\\\\)")
    if (!(pattern %in% c("", "NA")))
      talks <- talks %>% 
        dplyr::filter(
        stringr::str_detect(.data$author, pattern) |
          stringr::str_detect(.data$speaker, pattern) |
          stringr::str_detect(.data$chair, pattern)
        )
  }
  if (!missing(keywords)) {
    pattern <- paste(tolower(keywords), collapse = "|")
    if (!(pattern %in% c("", "NA")))
      talks <- talks %>% 
        dplyr::filter(stringr::str_detect(tolower(.data$title), pattern))
  }
  if (!missing(days)) {
    talks <- talks %>% dplyr::filter(.data$day %in% days)
  }
  if (!missing(session_types)) {
    pattern <- paste(tolower(session_types), collapse = "|")
    if (!(pattern %in% c("", "NA")))
      talks <- talks %>%
        dplyr::filter(stringr::str_detect(tolower(.data$session_type), pattern))
  }
  talks %>% dplyr::arrange(.data$start_time)
}
