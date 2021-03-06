
<!-- README.md is generated from README.Rmd. Please edit that file -->

[![Project Status: Active - The project has reached a stable, usable
state and is being actively
developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active)
[![Travis-CI Build
Status](https://travis-ci.org/hrbrmstr/ggalt.svg?branch=master)](https://travis-ci.org/hrbrmstr/ggalt)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github/hrbrmstr/ggalt?branch=master&svg=true)](https://ci.appveyor.com/project/hrbrmstr/ggalt)
[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/ggalt)](https://CRAN.R-project.org/package=ggalt)
[![downloads](http://cranlogs.r-pkg.org/badges/grand-total/ggalt)](https://CRAN.R-project.org/package=ggalt)

# `ggalt`

A compendium of ‘geoms’, ‘coords’, ‘stats’, scales and fonts for
‘ggplot2’, including splines, 1d and 2d densities, univariate average
shifted histograms, a new map coordinate system based on the
‘PROJ.4’-library and the ‘StateFace’ open source font ‘ProPublica’.

## Installation

``` r
# you'll want to see the vignettes, trust me
install.packages("ggplot2")
install.packages("ggalt")
# OR: devtools::install_github("hrbrmstr/ggalt")
```

## Geoms/Stats

| **Geom**                                                                                                                                                      | **Description**                                                                                                             | **Uses**                |
| :------------------------------------------------------------------------------------------------------------------------------------------------------------ | :-------------------------------------------------------------------------------------------------------------------------- | :---------------------- |
| [`coord_proj()`](https://yonicd.github.io/ggalt/reference/coord_proj.html)                                                                                    | Like `coord_map`, only better (prbly shld use this with `geom_cartogram` as `geom_map`’s new defaults are ugh)              |                         |
| [`geom_stateface()`](https://yonicd.github.io/ggalt/reference/geom_stateface.html)                                                                            | Use ProPublica’s [StateFace](https://www.fontsquirrel.com/fonts/stateface) font in ggplot2 plots                            |                         |
| [`geom_ubar()`](https://yonicd.github.io/ggalt/reference/geom_ubar.html)                                                                                      | Uniform width bar charts                                                                                                    |                         |
| [`geom_horizon()`](https://yonicd.github.io/ggalt/reference/geom_horizon.html)                                                                                | Horizon charts (modified from [ggTimesSeries](https://github.com/AtherEnergy/ggTimeSeries) )                                |                         |
| [`geom_xspline()`](https://yonicd.github.io/ggalt/reference/geom_xspline.html) [`stat_xspline()`](https://yonicd.github.io/ggalt/reference/geom_xspline.html) | Connect control points/observations with an X-spline                                                                        |                         |
| [`geom_bkde()`](https://yonicd.github.io/ggalt/reference/geom_bkde.html) [`stat_bkde()`](https://yonicd.github.io/ggalt/reference/geom_bkde.html)             | Display a smooth density estimate                                                                                           | `KernSmooth::bkde`      |
| [`geom_bkde2d()`](https://yonicd.github.io/ggalt/reference/geom_bkde2d.html) [`stat_bkde2d()`](https://yonicd.github.io/ggalt/reference/geom_bkde2d.html)     | Contours from a 2d density estimate.                                                                                        | `KernSmooth::bkde2D`    |
| [`stat_ash()`](https://yonicd.github.io/ggalt/reference/stat_ash.html)                                                                                        | Compute and display a univariate averaged shifted histogram (polynomial kernel)                                             | `ash::ash1`/`ash::bin1` |
| [`geom_encircle()`](https://yonicd.github.io/ggalt/reference/geom_encircle.html)                                                                              | Automatically enclose points in a polygon                                                                                   |                         |
| [`geom_lollipop()`](https://yonicd.github.io/ggalt/reference/geom_lollipop.html)                                                                              | Dead easy lollipops (horizontal or vertical)                                                                                |                         |
| [`geom_dumbbell()`](https://yonicd.github.io/ggalt/reference/geom_dumbbell.html)                                                                              | Dead easy dumbbell plots                                                                                                    |                         |
| [`stat_stepribbon()`](https://yonicd.github.io/ggalt/reference/stat_stepribbon.html)                                                                          | Step ribbons                                                                                                                |                         |
| [`annotation_ticks()`](https://yonicd.github.io/ggalt/reference/annotation_ticks.html)                                                                        | Add minor ticks to identity, exp(1) and exp(10) axis scales independently of each other.                                    |                         |
| [`geom_spikelines()`](https://yonicd.github.io/ggalt/reference/geom_spikelines.html)                                                                          | Instead of geom\_vline and geom\_hline a pair of segments that originate from same c(x,y) are drawn to the respective axes. |                         |

## Utility Functions

| **Function**                                                                 | **Description**                         |
| :--------------------------------------------------------------------------- | :-------------------------------------- |
| [`byte_format()`](https://yonicd.github.io/ggalt/reference/byte_format.html) | helpers. e.g. turn `10000` into `10 Kb` |

**note**: [plotly](https://github.com/ropensci/plotly) integration for a
few of the ^^ geoms

### Code of Conduct

Please note that this project is released with a [Contributor Code of
Conduct](CONDUCT.md). By participating in this project you agree to
abide by its terms.
