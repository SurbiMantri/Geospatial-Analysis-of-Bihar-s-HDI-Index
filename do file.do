** District-wise Computation of Human Development Index for Bihar using NFHS-4 dataset

* Dimension index = (actual value – minimum value)/(maximum value – minimum value). 

* Variable hv024 = State; Code 5 = Bihar. 
* to Keep only Bihar's data:
keep if hv024==5

* Variable hv106 = "Highest educational level attained"
su hv106
tab hv106

* Generating Education Index using the Formula
gen edu_index=(hv106-0)/(3-0)
tab edu_index
tab shdistri edu_index 
egen mean_edu = mean(edu_index), by(shdistri)

* Variable sh54 = "Member of household covered by a health scheme or health insurance"
tab sh54

* Generating Health Index using the Formula
gen health_index = (sh54-0)/(1-0)
egen mean_health = mean(health_index), by(shdistri)

* Variable sh54 = "Wealth Index"
rename hv270 wealth_index
egen mean_wealth = mean(wealth_index), by(shdistri)

*Creating a subset of the original data to show only the index values according to the districts and calculating HDI Index
collapse (mean) edu_index health_index wealth_index, by(shdistri)
gen hdi_index = (edu_index*health_index*wealth_index)^(1/3)
sort hdi_index






