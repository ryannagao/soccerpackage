
#' Plot graph of mean fee by Position
#'
#' @param dataset Dataset, acquired from storedata
#'
#' @return Creates and displays ggplot2 graph of mean fee by position
#' @export
#'
#' @examples meanfeebypos(engdata)
#'
meanfeebypos <- function(dataset){
  p <- levels(as.factor(dataset$Position));
  feemeans <- c(1:length(p));
  i <- 1;
  for (fieldpos in p){
    thisposset <- dataset[dataset$Position==fieldpos, ];
    feemeans[i] = mean(thisposset$Fee);
    i = i + 1;
  }
  df <- data.frame(p,feemeans);
  return(ggplot2::ggplot(data=df) + ggplot2::geom_point(mapping=ggplot2::aes(x=p,y=feemeans)));
}
