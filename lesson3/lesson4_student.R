library(ggplot2)
data(diamonds)
summary(diamonds)
?diamonds

names(diamonds)
qplot(y = price, data = diamonds)

hist(diamonds)

ggplot(aes(x = price), data = diamonds) + 
  geom_histogram(binwidth = 1)
?count
count(diamond, vars=)

sub <- subset(diamonds, price > 5000)

qplot(y=diamonds$price, data=diamonds, diamonds$price<14999)

ggplot(aes(diamonds$price), data = sub)

summary(diamonds)

sub1 <- subset(diamonds, price < 327)

qplot(x = price, data = diamonds) + facet_wrap(~cut,  scales="free")

names(diamonds)

qplot(x = carat, y=price, data = diamonds)+ scale_x_log10() + facet_wrap(~cut)

# Boxplot of price by clarity
qplot(x = clarity, y = price, data = diamonds, geom = 'boxplot') +
  coord_cartesian(ylim = c(0, 7000))

# Boxplot of price by cut
qplot(x = cut, y = price, data = diamonds, geom = 'boxplot') + 
  coord_cartesian(ylim = c(0, 7000))

# Boxplot of price by color
qplot(x = color, y = price, data = diamonds, geom = 'boxplot') +
  coord_cartesian(ylim = c(0, 8000))

qplot(x = cut, y = price,  data =diamonds, geom = 'boxplot')
+   coord_cartesian(ylim = c(0,6296))
+   scale_y_continuous(breaks = seq(0,6296,100)) ggsave('BoxPlotCut.png')
pricebycut <- by(diamonds$price, diamonds$cut, summary)
pricebycut

IQR(subset(diamonds, price <1000)$price) 