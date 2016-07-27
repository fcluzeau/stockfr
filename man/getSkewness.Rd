\name{getSkewness}
\alias{getSkewness}
\title{Skewness}
\usage{
  getSkewness(ticker = "GOOG", from = "2013-01-01",
    to = Sys.time())
}
\arguments{
  \item{ticker}{stock ticker symbol. E.g. "GOOG".}

  \item{from}{start date. Either string or date object.}

  \item{to}{end date. Either string or date object.}
}
\value{
  value
}
\description{
  
method to get the skewness of the stock for the period you chose
}
