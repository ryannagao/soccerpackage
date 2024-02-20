
#' Plot graph of mean fee by Year
#'
#' @param dataset Dataset, acquired from storedata
#'
#' @return Creates and displays ggplot2 graph of mean fee by year
#' @export
#'
#' @examples meanfeebyyear(engdata)
#'
meanfeebyyear <- function(dataset){
  years <- levels(as.factor(dataset$Year));
  feemeans <- c(1:length(years));
  i <- 1;
  for (year in years){
    thisposset <- dataset[dataset$Year==year, ];
    feemeans[i] = mean(thisposset$Fee);
    i = i + 1;
  }
  df <- data.frame(years,feemeans);
  return(ggplot2::ggplot(data=df) + ggplot2::geom_point(mapping=ggplot2::aes(x=years,y=feemeans)));
}
