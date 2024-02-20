
#' Compare mean fees of two datasets
#'
#' @param dataone First dataset, must contain column "Fee"
#' @param datatwo Second dataset, must contain column "Fee"
#'
#' @return Returns a paired t-test for the Fee numeric vectors in each dataset
#' @export
#'
#' @examples comparemeanfee(engdata,gerdata)
#'
comparemeanfee <- function(dataone,datatwo){
  return(t.test(dataone$Fee,datatwo$Fee,var.equal=TRUE));
}
