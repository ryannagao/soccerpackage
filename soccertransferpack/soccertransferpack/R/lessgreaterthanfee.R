
#' Create subset of data with fees less/greater than inputted fee value
#'
#' @param dataset Dataset, acquired from storedata
#' @param fee Fee value that defines cutoff for data, defaults to peak average transfer (2019/20)
#' @param less Looking for observations less than inputted fee (T/F)
#'
#' @return Return dataset based on inputted parameters
#' @export
#'
#' @examples lessgreaterthanfee(engdata)
#' @examples lessgreaterthanfee(engdata,fee=10000000,less=TRUE)
#'
lessgreaterthanfee <- function(dataset,fee=5010000,less=FALSE){
  if (less == FALSE){
    return(dataset[dataset[["Fee"]]>fee, ])
  }
  else{
    return(dataset[dataset[["Fee"]]<fee, ])
  }
}
