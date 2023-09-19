/* We read the data base - note that we selected manually the work directory in Stata */
use "earnings.dta", clear

/* we describe the data base */
describe

/*we make a descriptive analysis of the response variable */
summarize logwage, detail

histogram logwage, normal

/* tabulate important dummy columns */
tab1 college female nonwhite occupation industry

/* check for selection into treatment based on gender and ethnicity */
logit college female nonwhite

tabulate college female

tabulate college nonwhite

/*bivariate regression */
reg logwage college
eststo m1

/* good variables model */
reg logwage college female nonwhite
eststo m2

/* bad variables model */
reg logwage college female nonwhite industry occupation
eststo m3



