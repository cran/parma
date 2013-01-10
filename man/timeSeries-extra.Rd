\name{timeSeries-extra}
\alias{Daily2Weekly}
\alias{Daily2Monthly}
\title{
  Extra functions for use with timeSeries objects
}
\description{
Some extra functions for use with timeSeries objects in the parma package.
}
\usage{
Daily2Weekly(data, weekday = "Friday", in.format = "\%Y-\%m-\%d", 
interp.NA = "before")
Daily2Monthly(data, in.format = "\%Y-\%m-\%d", interp.NA = "before")
}
\arguments{
\item{data}{
A timeSeries matrix of prices (NOT returns).}
\item{weekday}{
The day of the week to align daily series.}
\item{in.format}{
The timeSeries format of the date.
}
\item{interp.NA}{
For missing values the method to interpolate (see interpNA function in 
timeSeries package).}
}
\details{
The Daily2Weekly generates all weekdays from the start to the end of the dataset,
and then aligns to the weekday chosen performing the appropriate interpolation.
In such a way, all data is aligned to exactly to a certain weekday, irrespective
of holiday or non-trading (which is why interpolation is used). Similarly for the
Daily2Monthly the data is aligned to the last non-weekend day of the month.
}
\value{A timeSeries matrix}
\author{Alexios Ghalanos}