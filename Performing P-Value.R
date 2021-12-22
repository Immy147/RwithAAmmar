library("ggplot2")
install.packages("ggpval")
library("ggpval")
install.packages("ggtheme")
library("ggtheme")
install.packages("evaluate")
library("evaluate")

##draw data
data("ToothGrowth")

p <- ggplot(ToothGrowth)+
  aes(x= supp, y= len, fill= supp) +
  geom_boxplot(shape = "circle", width= 0.5) +
  stat_boxplot(geom = "errorbar", width= 0.1) +
  scale_fill_viridis_d(option = "inferno", direction = 1) +
  labs(x= "suppliment", y= "length", fill= "suppliment") +
  ggthemes :: theme_par() +
  facet_wrap(vars(dose));
p
 
## add p value 

add_pval(p, pairs = list(c(1,2)), 
test= "t.test")
help("add_pval")





library(ggplot2)
library(ggpval)
data("PlantGrowth")
plt <- ggplot(PlantGrowth, aes(group, weight)) +
  geom_boxplot()
add_pval(plt, pairs = list(c(1, 2)), test='t.test')
