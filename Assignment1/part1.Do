/* we set manually the environment to the local binder */
use "healthNHIS.dta", clear

/* Question 1 
Difference by means*/
tabstat educ health, by(ins) stat(mean) format(%4.2f)

/* Question 2
T-tests */
ttest educ, by(ins)

ttest income, by(ins)

/* Question 3
regression */
reg health ins

ttest health, by(ins)