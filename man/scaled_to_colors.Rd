% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/image-to-prep-mosaic.R
\name{scaled_to_colors}
\alias{scaled_to_colors}
\title{Convert image output from scale_image() to bricks}
\arguments{
\item{image_list}{List output from scale_image(). Contains an element  \code{Img_scaled}.}

\item{method}{Default 'cie94'. The method to use for comparison. Either 'brickr_classic', 'euclidean', 'cie1976', 'cie94', 'cie2000', or 'cmc'.
'brickr_classic' is an explicit euclidean distance formula, but yield different results than 'euclidean' in {farver}.
See \code{farver::compare_colour}.}

\item{color_table}{Defaults to \code{lego_colors}. Data frame of brick colors to map onto image. Must contain Name and R, G, B channels.
See attached data  \code{lego_colors} as examples.}

\item{color_palette}{Brick color rarity to use. Defaults to all colors: 'universal' (most common), 'generic', and 'special' (least common).
This is useful when trying to build the mosaic out of real bricks.
Use "bw" for only grayscale bricks. Ignored if a \code{color_table} is supplied.}

\item{trans_bg}{If \code{img} is a png has a transparent background, name of color to replace the background.}

\item{dithering}{Improves color of large, photo-realistic mosaics.}

\item{contrast}{For \code{color_palette = "bw"}. A value >1 will increase the contrast of the image while a positive value <1 will decrease the contrast.}

\item{default_piece_type}{Piece type to use in absence of piece_type column.}
}
\value{
A list with element \code{Img_lego} containing a data frame of the x- & y-coordinates, R, G, B channels, and mapped color of each brick (pixel).
}
\description{
Match raw color channel values to a smaller subset of colors.
}
\keyword{internal}
