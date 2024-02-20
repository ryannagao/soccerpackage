
#' Plot graph of mean fee by Age
#'
#' @param dataset Dataset, acquired from storedata
#'
#' @return Creates and displays ggplot2 graph of mean fee by age
#' @export
#'
#' @examples meanfeebyage(engdata)
#'
meanfeebyage <- function(dataset){
  ages <- levels(as.factor(dataset$Age));
  feemeans <- c(1:length(ages));
  i <- 1;
  for (age in ages){
    thisageset <- dataset[dataset$Age==age, ];
    feemeans[i] = mean(thisageset$Fee);
    i = i + 1;
  }
  df <- data.frame(ages,feemeans);
  return(ggplot2::ggplot(data=df) + ggplot2::geom_point(mapping=ggplot2::aes(x=ages,y=feemeans)));
}
