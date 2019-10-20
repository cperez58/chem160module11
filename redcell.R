redcell=read.table("redcell.txt",header=T)
names(redcell)
is.factor(redcell$ventilation)
plot(folate~ventilation,data=redcell)
model=lm(folate~ventilation,data=redcell)
summary(model)

#Overall null hypothesis: Folate levels cannot be predicted by ventilation method
(1-0.04359)*100
#Can reject the null hypothesis with 95.641% confidence

#28.09% of the variation in folate levels has been explained by variations in ventilation

#redcell$ventilation=factor(redcell$ventilation) #if is.factor(redcell$ventilation) == FALSE

