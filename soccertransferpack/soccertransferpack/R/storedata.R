
#' Store excel data in an R DataFrame
#'
#' @param filepath File path that points to the excel spreadsheet
#' @param cellrange Range of cells in format 'SheetName!TopLeft:BottomRight'
#'
#' @return Returns the excel sheet as an R data frame
#' @export
#'
#' @examples storedata(filepath="the/file/path",cellrange="England!A1:J500")
#'
storedata <- function(filepath,cellrange){
  dset <- readxl::read_excel(path=filepath, range=cellrange);
  dset <- dset[dset$From!="Academy", ];
  dset <- dset[!(is.na(dset$Fee)), ];
  dset <- dset[dset$Fee!=0, ];
  dset <- dset[is.na(dset$Remarks), ];
  return(dset);
}
