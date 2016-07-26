#' Plot Wrapper
#' 
#' This is a wrapper for the OpenCPU application. It is a single function that calls out to various plot types.
#' The function prints a plot to the graphics device and returns nothing.
#' 
#' @param type type of plot to create. One of "smoothplot", "highlowplot", "areaplot".
#' @param ticker stock ticker symbol. E.g. "GOOG".
#' @param from start date. Either string or date object.
#' @param to end date. Either string or date object.
#' @param current include the current price of this stock. TRUE/FALSE.
#' @import ggplot2
#' @export
plotwrapper <- function(type=c("smoothplot", "highlowplot", "areaplot"), ticker="GOOG", from="2013-01-01", to=Sys.time(), current=FALSE, moyenne=FALSE){
	type <- match.arg(type);
	myplot <- switch(type,
		smoothplot = smoothplot(ticker, from, to),
		highlowplot = highlowplot(ticker, from, to),
		areaplot = areaplot(ticker, from, to),
		stop("Unknown plot type:", type)
	);
	
	#remove axis label date
	myplot <- myplot + xlab("") + ylab(ticker);
	
	if(isTRUE(current)){
		currentvalue <- getcurrent(ticker)$Value
		myplot <- myplot + geom_hline(yintercept = currentvalue, colour = "red", linetype = 2, size = 0.8);	
		myplot <- myplot + geom_label(x=-Inf, y = currentvalue, size=4, label = paste("Moyenne en devise locale:", currentvalue), hjust = -1, vjust = -0.5, color="red");
	}
	
		if(isTRUE(moyenne)){
		moyenne <- getMoyenne(ticker, from, to)
		var<-getVariance(ticker, from, to)
		skewness<-getSkewness(ticker, from, to)
		kurtosis<-getKurtosis(ticker, from, to)
		myplot <- myplot + geom_hline(yintercept = moyenne, colour = "blue", linetype = 2, size = 0.8);	
		myplot <- myplot + geom_label(x=-Inf,y = (moyenne/1.1), size=4, label = paste("Moyenne en devise locale:", moyenne,"; Variance:", var), hjust = -1, vjust = -0.5, color="blue");	
		myplot <- myplot + geom_label(x=-Inf, y = (moyenne/1.15),  size=4, label = paste(" Skewness:", skewness,"; Kurtosis:", kurtosis), hjust = -1, vjust = -0.5, color="blue");
	}
	#make sure to print the plot
	print(myplot);
	
	#no need to return anything
	invisible();
}
