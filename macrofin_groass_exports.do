clear all 


import delimited "/Users/ads/Downloads/OECD_MACROFIN - MAIN DATA.csv" 


duplicates drop activity time_period, force
encode activity, gen(activity_id)

replace fvax_ratio = " " if fvax_ratio == "#DIV/0!"
destring fvax_ratio, replace

xtset activity_id time_period

collapse (mean) exgr fva fvax_ratio prod dom_act ddc dva idc rel_price gvad wri emp lab_int, by(activity_id time_period)


list in 1/10

gen ln_exgr = ln(exgr)      
gen ln_fvax_ratio = ln(fvax_ratio)  
gen ln_dom_act = ln(dom_act)          
gen ln_rel_price = ln(rel_price) 
gen ln_gvad = ln(gvad)
gen ln_dva = ln(dva)       
gen ln_emp = ln(emp)
gen ln_lab_int = ln(lab_int)
gen ln_wri = ln(wri)
      

tabulate activity_id, generate(sector_dummy)  
tabulate time_period, generate(year_dummy)   


regress ln_exgr ln_fvax_ratio ln_dom_act ln_rel_price sector_dummy* year_dummy*, robust
eststo model1

regress ln_dva ln_exgr ln_gvad ln_rel_price sector_dummy* year_dummy*, robust
eststo model2

regress ln_emp ln_dva ln_lab_int sector_dummy* year_dummy*, robust
eststo model3



esttab model1 model2 model3 using "regression_results.tex", ///
    replace label b(3) se(3) star(* 0.1 ** 0.05 *** 0.01) ///
    title("Regression Results") ///
    varwidth(20) nogaps ///
    keep(ln_fvax_ratio ln_dom_act ln_rel_price ln_exgr ln_gvad ln_dva ln_lab_int) ///
    stats(N r2, labels("Observations" "R-squared")) ///
    addnote("Sector and year dummies are included but not reported.")


