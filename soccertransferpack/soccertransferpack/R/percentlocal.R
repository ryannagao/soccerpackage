
#' Find proportion of local players (player nationality same as league)
#'
#' @param dataset Dataset, must contain column "National"
#' @param country Country defined as local
#'
#' @return Returns the proportion of players whose nationality matches the locality
#' @export
#'
#' @examples percentlocal(engdata,"England")

percentlocal <- function(dataset,country){
  numlocal <- nrow(dataset[dataset$National==country, ]);
  numtotal <- nrow(dataset);
  return(numlocal / numtotal);
}
