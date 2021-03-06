\name{getKurtosis}
\alias{getKurtosis}
\title{Kurtosis}
\usage{
  getKurtosis(ticker = "GOOG", from = "2013-01-01",
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
method to get the kurtosis of the stock for the period you chose
}
