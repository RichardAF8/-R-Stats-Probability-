
//Question 1
species<-Fish[,7]
length(species)
//Question 2
df_uniq <- unique(species)
 length(df_uniq)
 //Question 3
 river <- unique(Fish[,6])
river
//Question 4
r <- subset(Fish,is.na(weight) | weight==0)
nrow(r)
?nrow

//Question 5
nrow(Fish)
Fish2 <- subset(Fish, !is.na(weight) & weight > 0)
Fish2
nrow(Fish2)

//Question 6
aggregate(weight~year+species,Fish2,mean)


//Question 7

RBT <- subset(Fish2,species="RBT")
RBT
qqnorm(RBT$weight)
qqline(RBT$weight)

//Question 8
table1<-table(RBT$year,RBT$section)
mosaicplot(table1, col =c(1,2),ylab = "Section",xlab = "Year", main = "Distribution of Rainbow Trouts Between River Sections")
table(RBT$year)
table(RBT$year,RBT$section)

//Question 9
RBT6 <-subset(RBT,year==2006)
RBT6
num<-nrow(RBT6)
num
s <- subset(RBT6, section=="Johnsrud")
snum <-nrow(s)
snum

j <- subset(RBT6, section=="ScottyBrown")
j
jnum <-nrow(j)
jnum

per<-(jnum/num)*100
per

t<- (0.31-0.17) / 0.011
t
pnorm(t)
