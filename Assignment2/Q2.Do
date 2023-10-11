/* Load Dataset */
use ak91_subsample.dta, clear

/* Regress schooling on qobi */
regress schooling qobi

/* Reduced form regression */
regress ln_wage qobi

/* Two stage regression */
ivregress 2sls ln_wage (schooling = qobi), first
