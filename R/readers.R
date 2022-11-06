source(here::here("R/global.R"))

#' Load UFC stats
#'
#' @examples 
#' devtools::install_github("mtoto/ufc.stats")
#'

load_ufc_stats <- function() {
  data("ufc_stats", package = "ufc.stats")
}
