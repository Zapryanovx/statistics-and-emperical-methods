library(MASS)
data(survey)
attach(survey)

median( Age, na.rm=T )
mean( Age, na.rm=T )
sd( Age, na.rm=T )

median( Age[Smoke!="Never"], na.rm=T )
mean( Age[Smoke!="Never"], na.rm=T )
sd( Age[Smoke!="Never"], na.rm=T )

median( Age[W.Hnd=="Right"], na.rm=T )
mean( Age[W.Hnd=="Right"], na.rm=T )
sd( Age[W.Hnd=="Right"], na.rm=T )

median( Age[Pulse>=70], na.rm=T )
mean( Age[Pulse>=70], na.rm=T )
sd( Age[Pulse>=70], na.rm=T )

median( Age[Exer=="None"], na.rm=T )
mean( Age[Exer=="None"], na.rm=T )
sd( Age[Exer=="None"], na.rm=T )
