/* We load the dataset */
use healthRAND.dta, clear

/* Difference in means */
tabstat health income, by(ins) stat(mean)

/* t-test */
ttest educ, by(ins)

/* regression */
regress health ins

/* regression with clusters */
regress health ins, cl(family_id)