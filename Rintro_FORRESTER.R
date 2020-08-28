#MY FIRST R SCRIPT

                          #Using R as a calculator


4 + 5 + 33
#Answer: 42
5*8*4
#Answer: 160
4^6
#Answer: 4096
sqrt(345)
#Answer: 18.57418
log(1000)
#Answer: 6.907755
#They apparently are not using base 10 for log. However, I can easily modify this by passing it "base=10" as a parameter





  
                        #2: Defining an object


helloR <- 5*8*4
helloR
#Answer= 160
helloR+2
#Answer= 162

My.name <- "Bob"
My.name
#Answer: "Bob"

All.names <- c("Bob", "Rob", "Sarah", "Tara")
All.names
#Answer: "Bob"   "Rob"   "Sarah" "Tara" 

Miles.per.day <- c(3, 0, 4.5, 0, 3, 3, 0)
Miles.per.day
#Answer: 3.0 0.0 4.5 0.0 3.0 3.0 0.0

?plot
#a: x-cordinates
#b: main
#c: 2 (plot(sin, -pi, 2*pi))




                            #3: Working with DataSets

data <- c(40, 90, 120, 30, 60, 80, 90, 40, 70, 70)
summary(data)
#Answer:  Min.   1st Qu.  Median    Mean   3rd Qu.    Max. 
#         30.0    45.0     70.0     69.0    87.5     120.0 

quantile(data)
#Answer:   0%    25%   50%   75%   100% 
#         30.0  45.0  70.0  87.5  120.0 
fivenum(data)
#Answer: minimum, lower-hinge, median, upper-hinge, maximum
#          30         40         70        90         120

#Which quantities are the same among the three functions in parts(b)-(d)? 
#Answer: the minimum, median, and maximum are all the same among the functions

#Which are different and why is it nothing to worry about?
#The lower-hinge and upper-hinge are different for fivenum because it seems that they have rounded their numbers. 
#It is of no concern, becayuse I imagine these values are not used as frequently, also we can use the other functions to get more exact answers if we need them

mtcars
#Answer: 32

plot(mtcars)

efficient.cars <- subset(mtcars, mpg>30)
#Answer: 4 cars meet this criteria
efficient.cars
eightCylinderEnginer <- subset(mtcars, cyl==8)
eightCylinderEnginer

mean(eightCylinderEnginer$mpg)
#Answer: 15.1


mtcars$qmin <- mtcars$qsec/60
mtcars
mtcars$wt_Kg <- mtcars$wt  /2.205
mtcars


var(mtcars$hp)
#Answer: 4700.867
sd(mtcars$hp)
#Answer:  68.56287

plot(mtcars$wt,mtcars$mpg,main = "Fuel Efficiency vs Weight",
     ylab = "Miles per Gallon (mpg)", xlab="Weight(1000 lbs)")

#Answer: The relationship between the weight of a car and its mpg is what I expect. 
# As cars get heavier there mpg should decrease due to the egine having to burn
# more fuel to transport the additional weight from point A to B. Thus, the heavier
# the car, the lower the mpg. This theory is confirmed by the graph.
