## ----include=FALSE-------------------------------------------------------
knitr::opts_chunk$set(collapse=TRUE, comment="##", fig.retina=1, fig.height=6, fig.width=8,message=FALSE,warning = FALSE)

## ------------------------------------------------------------------------
library(ggplot2)
library(gridExtra)
library(ggalt)
library(scales)


## ----bkde_ash------------------------------------------------------------

set.seed(1492)

data(geyser, package="MASS")

ggplot(geyser, aes(x=duration)) + 
  stat_bkde(alpha=1/2)

ggplot(geyser, aes(x=duration)) +
  geom_bkde(alpha=1/2)

ggplot(geyser, aes(x=duration)) + 
  stat_bkde(bandwidth=0.25)

ggplot(geyser, aes(x=duration)) +
  geom_bkde(bandwidth=0.25)

set.seed(1492)
dat <- data.frame(cond = factor(rep(c("A","B"), each=200)), 
                  rating = c(rnorm(200),rnorm(200, mean=.8)))

ggplot(dat, aes(x=rating, color=cond)) + geom_bkde(fill="#00000000")

ggplot(dat, aes(x=rating, fill=cond)) + geom_bkde(alpha=0.3)


## ------------------------------------------------------------------------

set.seed(1492)

dat <- data.frame(x=rnorm(100))
grid.arrange(ggplot(dat, aes(x)) + stat_ash(),
             ggplot(dat, aes(x)) + stat_bkde(),
             ggplot(dat, aes(x)) + stat_density(),
             nrow=3)

cols <- RColorBrewer::brewer.pal(3, "Dark2")
ggplot(dat, aes(x)) + 
  stat_ash(alpha=1/3, fill=cols[3]) + 
  stat_bkde(alpha=1/3, fill=cols[2]) + 
  stat_density(alpha=1/3, fill=cols[1]) + 
  geom_rug() +
  labs(x=NULL, y="density/estimate") +
  scale_x_continuous(expand=c(0,0)) +
  theme_bw() +
  theme(panel.grid=element_blank()) +
  theme(panel.border=element_blank())

## ----bkde2d--------------------------------------------------------------

m <- ggplot(faithful, aes(x = eruptions, y = waiting)) +
  geom_point() +
  xlim(0.5, 6) +
  ylim(40, 110)

m + geom_bkde2d(bandwidth=c(0.5, 4))

m + stat_bkde2d(bandwidth=c(0.5, 4), aes(fill = ..level..), geom = "polygon")


