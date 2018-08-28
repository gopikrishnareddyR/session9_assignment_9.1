# sesion9_assignment_9.1

#1. If Z is norm (mean = 0, sd = 1) 

#Find P(Z > 2.64) 

1-pnorm(2.64, 0 , 1)

#Find p(|Z| > 1.39) 

pnorm(1.39, 0 ,1)- pnorm(-1.39, 0, 1) |z| is +- abolute value



#2. Suppose p = the proportion of students who are admitted to the graduate school of the University of 
California at Berkeley, and suppose that a public relation officer boasts that UCB has historically had a 
40% acceptance rate for its graduate school. Consider the data stored in the table UCB Admissions from 
1973. Assuming these observations constituted a simple random sample, are they consistent with the 
officers claim, or do they provide evidence that the acceptance rate was significantly less than 40%? 
  Use an α = 0.01 significance level. 

# Output :

null hyphothesis or Ho: p =0.40 and alternate hyphothesis H1: p<0.4. we reject null hyphothesis if p is too small .

alpha =0.01 and -Z0.01 significance level is

-qnorm(1-0.01)
-qnorm(0.99)  #-2.32

data<-as.data.frame(UCBAdmissions)
head(data)

xtabs(Freq~Admit, data = data) # we get the table of admitted and rejected

value of test statistic T :


#mue<-x/N, x= studentsadmitted and N= total students admitted and rejected

mue<-1755/(1755+2771)

# (mue-p)/sqrt(p*(1-p)/N) ; q=1-p

(mue-0.4)/sqrt(0.4*0.6/(1755+2771))
 
#test statistic T of -1.680919 is greater than -2.32. 
#we fail to reject the null hypothesis.
#officers claim is true at alpha=0.01 significance level


