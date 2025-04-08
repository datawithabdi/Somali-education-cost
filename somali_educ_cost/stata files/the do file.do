use "C:\Users\user\Downloads\hhm (1).dta" 
log using "C:\Users\user\Desktop\somali_educ_cost\Untitled.smcl"
keep region_n ea_type_n qsn2_18c qsn2_18a qsn2_18f qsn2_18e qsn2_18b qsn2_18d qsn2_18g qsn2_18i qsn2_18h qsn2_18j qsn2_18k
rename (region_n ea_type_n qsn2_18a qsn2_18c qsn2_18f qsn2_18e qsn2_18b qsn2_18d qsn2_18g qsn2_18i qsn2_18h qsn2_18j qsn2_18k)(region location tution book examination material boarding uniform transportation construction tutoring others total)
drop if missing( region ,location, tution ,book ,examination, material, boarding, uniform, transportation ,construction ,tutoring ,others, total)
sum
export to excel using"the project", firstrow(variables)
