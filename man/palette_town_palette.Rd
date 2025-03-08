% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PaletteTown.R
\name{palette_town_palette}
\alias{palette_town_palette}
\title{A collection of many colour palettes based upon pokemon types, towns, trainers, and more. Contains functions compatible with ggplot fill and colour.}
\usage{
palette_town_palette(palette = "Types", ...)
}
\arguments{
\item{palette}{name of palette}

\item{randomize}{determines whether palette colours are randomized or not. Either "YES" or "NO".}

\item{palette_gen()}{A Desc}

\item{scale_colour_palette_town()}{A Desc}

\item{scale_color_palette_town()}{A Desc}

\item{scale_fill_palette_town()}{A Desc}
}
\value{
A plot with the designated colour scheme
}
\description{
A collection of many colour palettes based upon pokemon types, towns, trainers, and more. Contains functions compatible with ggplot fill and colour.
}
\examples{
ggplot(iris, aes(Sepal.Length, Sepal.Width, fill = Species))+geom_col()+
scale_fill_palette_town(palette = "Types", randomize = "YES")
}
