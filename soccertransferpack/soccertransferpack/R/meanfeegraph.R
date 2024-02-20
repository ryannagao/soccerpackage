
#' Create ggplot2 graph of mean fee by level of chosen categorical variable
#'
#' @param dataset Dataset, acquired from storedata
#' @param variable Categorical explanatory variable
#'
#' @return Returns ggplot2 graphic of mean fee by explanatory levels
#' @export
#'
#' @examples meanfeegraph(engdata)
#' @examples meanfeegraph(engdata,"Age")
meanfeegraph <- function(dataset,variable="Year"){
  thislevels <- levels(as.factor(dataset[[variable]]));
  feemeans <- c(1:length(thislevels));
  i <- 1;
  for (level in thislevels){
    thislevelset <- dataset[dataset[[variable]]==thislevels[i], ];
    feemeans[i] = mean(thislevelset$Fee);
    i = i + 1;
  }
  df <- data.frame(thislevels,feemeans);
  return(ggplot2::ggplot(data=df) + ggplot2::geom_point(mapping=ggplot2::aes(x=thislevels,y=feemeans)) + ggplot2::xlab(variable) + ggplot2::ylab("Mean Fee"));
}
