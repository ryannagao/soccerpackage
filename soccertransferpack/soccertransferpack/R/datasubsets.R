
#' Create data subsets for levels of chosen variable
#'
#' @param dataset Dataset, acquired from storedata
#' @param variable Categorical variable whose levels will define the subsets
#'
#' @return Returns the subsets of the dataset as a vector
#' @export
#'
#' @examples datasubsets(engdata)
#' @examples datasubsets(gerdata,"Team")
#'
datasubsets <- function(dataset,variable="Year"){
  thislevels <- unique(dataset[[variable]]);
  quantity <- length(thislevels);
  returnvec <- list();
  i <- 1;
  for (i in c(1:quantity)){
    returnvec[[i]] <- dataset[dataset[[variable]]==thislevels[i], ];
    i = i + 1;
  }
  return(returnvec)
}
