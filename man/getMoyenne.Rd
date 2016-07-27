\name{getMoyenne}
\alias{getMoyenne}
\title{Moyenne}
\usage{
  getMoyenne(ticker = "GOOG", from = "2013-01-01",
    to = Sys.time())
}
\arguments{
  \item{ticker}{stock ticker symbol. E.g. "GOOG".}

  \item{from}{start date. Either string or date object.}

  \item{to}{end date. Either string or date object.}
}
\value{
  value.
}
\description{
  
Give the mean of the stock for the periode you chose
}
