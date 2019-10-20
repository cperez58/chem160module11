cs=read.table("cal_sodium.txt",header=T)
model=lm(Calores~Sodium,data=cs)
plot(Calories~Sodium,data=cs)
abline(model)
summary(model)

#Calories=84.61059+0.14319*Sodium