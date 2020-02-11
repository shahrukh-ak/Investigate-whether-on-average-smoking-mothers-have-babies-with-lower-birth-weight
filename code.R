Gest
[1] 38 38 36 34 39 35 40 42 37 40 36 39 39 39 35 39 41 42 38 39 42 38 37 42 41
[26] 39 40 42 35 41 38 36
Smoke
[1] yes no  yes no  yes yes no  yes no  no  yes no  yes no  no  yes no  yes no 
[20] yes no  yes no  yes yes no  no  yes no  yes yes no 
Levels: no yes
Wgt
[1] 2940 3130 2420 2450 2760 2440 3226 3301 2729 3410 2715 3095 3130 3244 2520
[16] 2928 3523 3446 2920 2957 3530 2580 3040 3500 3200 3322 3459 3346 2619 3175
[31] 2740 2841
plot(Gest,Wgt,pch=19,col=ifelse(Smoke=="yes", "red", "blue"), main="Scatterplot")
legend(34,3500,pch=19,col=c("red","blue"),c("Yes","No")) 

model=lm(Wgt~Gest+Smoke)
model

Call:
  lm(formula = Wgt ~ Gest + Smoke)

Coefficients:
  (Intercept)         Gest     Smokeyes  
-2389.6        143.1       -244.5  


Smoker: Wgt=-2389.6+143.1*Gest- 244.5= -2634.1+143.1*Gest
Nonsmoker: Wgt=-2389.6+143.1*Gest


model=lm(Wgt~Gest+Smoke)
model

Call:
  lm(formula = Wgt ~ Gest + Smoke)

Coefficients:
  (Intercept)         Gest     Smokeyes  
-2389.6        143.1       -244.5  

abline( -2389.6,143.1, col="blue")
abline( -2634.1,143.1, col="red")


> confint(model)
2.5 %       97.5 %
  (Intercept) -3103.7795 -1675.3663
Gest          124.4312   161.7694
Smokeyes     -330.4064  -158.6817

#We can be 95% confident that the mean birth weight of smoking mothers is between 158.7 and 330.4 grams less than the mean birth weight of non-smoking mothers, regardless of the length of gestation.

predict(model, data.frame(Gest=40, Smoke="yes"), interval="conf")
fit       lwr      upr
1 3089.894 3028.906 3150.882
predict(model, data.frame(Gest=40, Smoke="no"), interval="conf")
fit      lwr      upr
1 3334.438 3265.774 3403.102










