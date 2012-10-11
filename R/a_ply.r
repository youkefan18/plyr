#' Split array, apply function, and discard results.
#'
#' For each slice of an array, apply function and discard results
#'
#' @template ply
#' @template a-
#' @template -_
#' @export
a_ply <- function(.data, .margins, .fun = NULL, ..., .expand = TRUE,
                  .progress = "none", .print = FALSE, .parallel = FALSE) {
  pieces <- splitter_a(.data, .margins, .expand)

  l_ply(.data = pieces, .fun = .fun, ...,
    .progress = .progress, .print = .print, .parallel = .parallel)
}
