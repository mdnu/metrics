* comment line

/*
comment
block
*/

/*
move to the current directory:
you need to change here to run this, as follows:
"cd PATH of the directory where wage2.dta is saved"
*/

cd "C:\Users\m\Sync\NOTES\fin\2.Applied Econometrics\data sets"

* log files saved as text file called stata_practice_ps1.log
log using ps1_practice.log, replace text

* load raw data
use wage2.dta, clear

* summarize statistics
summarize

* construct histogram
histogram educ, discrete // with ", discrete" option, the width is always one.

* running three regressions
gen lwage = ln(wage)

regress lwage educ
regress lwage educ exper
regress lwage educ exper tenure

* F test
test (exper = 0) (tenure = 0)

* how to calculate the OLS residual:
regress lwage educ
predict res, r 
/*
now we have an additional column called 'res', which records the residual
of the regression of lwage on educ
*/

* need to close log file
log close
