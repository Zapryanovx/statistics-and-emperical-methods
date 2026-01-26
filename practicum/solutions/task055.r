median( Pulse, na.rm=T )
mean( Pulse, na.rm=T )
sd( Pulse, na.rm=T )

median( Pulse[Sex=="Female"], na.rm=T )
mean( Pulse[Sex=="Female"], na.rm=T )
sd( Pulse[Sex=="Female"], na.rm=T )

median( Pulse[Age<=25], na.rm=T )
mean( Pulse[Age<=25], na.rm=T )
sd( Pulse[Age<=25], na.rm=T )

median( Pulse[Exer=="Freq"], na.rm=T )
mean( Pulse[Exer=="Freq"], na.rm=T )
sd( Pulse[Exer=="Freq"], na.rm=T )

median( Pulse[Smoke=="Never" & Exer=="Freq"], na.rm=T )
mean( Pulse[Smoke=="Never" & Exer=="Freq"], na.rm=T )
sd( Pulse[Smoke=="Never" & Exer=="Freq"], na.rm=T )