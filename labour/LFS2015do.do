*******************************************************************
*  Stata "do-file" file with labels and missing data specifications
*  Created by ddltox on Jan 17, 2017  (Tue 02:27 PM EST)
*  DDL source file: "/web/sda.chass.utoronto.ca/htdocs/sdaweb/tmpdir/AASyFUz3.txt".
*
*  Note that the data dictionary is given at the end of this file.
*  Put the dictionary into a separate file (by editing this file).
*  Then specify below the name of the dictionary file.
*
*  DDL file gives the following dataset description:
*    Records per case: 1
*    Record length:    309
*******************************************************************


label data "Labour force survey, 2015, based to 2011 census population"

#delimit ;
label define survmnth  1 "January" 2 "February" 3 "March" 4 "April" 5 "May" 
                       6 "June" 7 "July" 8 "August" 9 "September" 
                       10 "October" 11 "November" 12 "December" ;
label define prov      10 "Newfoundland" 11 "Prince Edward Island" 
                       12 "Nova Scotia" 13 "New Brunswick" 24 "Quebec" 
                       35 "Ontario" 46 "Manitoba" 47 "Saskatchewan" 
                       48 "Alberta" 59 "British Columbia" ;
label define cma       1 "Montreal" 2 "Toronto" 3 "Vancouver" 
                       4 "Other CMA or Non-CMA" ;
label define age_12    1 "15 to 19" 2 "20 to 24" 3 "25 to 29" 4 "30 to 34" 
                       5 "35 to 39" 6 "40 to 44" 7 "45 to 49" 8 "50 to 54" 
                       9 "55 to 59" 10 "60 to 64" 11 "65 to 69" 12 "70+" ;
label define age_6     1 "15 to 16" 2 "17 to 19" 3 "20 to 21" 4 "22 to 24" 
                       5 "25 to 26" 6 "27 to 29" ;
label define sex       1 "Male" 2 "Female" ;
label define marstat   1 "Married" 2 "Living in common law" 3 "Widowed" 
                       4 "Separated" 5 "Divorced" 6 "Single, never married" ;
label define ed76to89  0 "0 to 8 years" 1 "9 to 10 years of schooling" 
                       2 "11 to 13 years of schooling" 
                       3 "Some post secondary" 
                       4 "Post secondary certificate or diploma" 
                       5 "University degree" ;
label define educ90    0 "0 to 8 years" 1 "Some secondary" 
                       2 "Gr 11 to 13, graduate" 3 "Some post secondary" 
                       4 "Post secondary certificate or diploma" 
                       5 "University: bachelors degree" 
                       6 "University: graduate degree" ;
label define schooln   1 "Non-student" 2 "Prim/sec school, ft" 
                       3 "Prim/sec school, pt" 4 "University full-time" 
                       5 "University part-time" 6 "Comm coll/CEGEP ft" 
                       7 "Comm coll/CEGEP pt" 8 "Other full-time" 
                       9 "Other part-time" ;
label define lfsstat   1 "Employed, at work" 2 "Employed, absent from work" 
                       3 "Unemployed, temporary layoff" 
                       4 "Unemployed, job searcher" 
                       5 "Unemployed, future start" 6 "Not in labour force" ;
label define mjh       1 "single job holder" 2 "Multiple job holder" ;
label define everwork  1 "Yes, within last year" 
                       2 "Yes, more than 1 year ago" 3 "No, never worked" ;
label define ftptlast  1 "Full-time (30+ hours)" 
                       2 "Part-time (1 to 29 hours)" ;
label define cowmain   1 "Public employee" 2 "Private employee" 
                       3 "Priv/self/inc/w/empl" 4 "Priv/self/inc/no empl" 
                       5 "Priv/self/uninc/w/emp" 6 "Priv/self/uninc/0 emp" 
                       7 "Priv/unpaid fam work" ;
label define naics_18  1 "Agriculture" 2 "Forest/Fish/Mine/Oil" 3 "Utilities" 
                       4 "Construction" 5 "Manufacture-durables" 
                       6 "Manufact non-durables" 7 "Wholesale Trade" 
                       8 "Retail Trade" 9 "Transport/Warehousing" 
                       10 "Finance/Insur/R.Estate" 11 "Prof/Scient/Technical" 
                       12 "Mngmnt/Admin/Other" 13 "Educational Services" 
                       14 "Health Care/Soc Assist" 15 "Info/Culture/Rec" 
                       16 "Accomm/Food Services" 17 "Other Services" 
                       18 "Public Administration" ;
label define naics_43  1 "Agriculture" 2 "Forestry and Logging" 
                       3 "Fishing/Hunting/Trap" 4 "Mining/Oil/Gas Extract" 
                       5 "Utilities" 6 "Prime Contracting" 
                       7 "Trade Contracting" 8 "Food/Bev/Tobacco Prod" 
                       9 "Textile Mills/Product" 10 "Clothing/Leather" 
                       11 "Wood Product" 12 "Paper Manufacturing" 
                       13 "Printing and Related" 14 "Petro/Coal Products" 
                       15 "Chemical Manufacturing" 16 "Plastics and Rubber" 
                       17 "Non-Metallic Mineral" 18 "Primary Metal Manufact" 
                       19 "Fabricated Metal" 20 "Machinery Manufacture" 
                       21 "Computer/Electronic" 22 "Elec Equip/Appliance" 
                       23 "Transport Equipment" 24 "Furniture and Related" 
                       25 "Misc Manufacturing" 26 "Wholesale Trade" 
                       27 "Retail Trade" 28 "Transportation" 
                       29 "Warehousing/Storage" 30 "Finance" 
                       31 "Insur Carriers/Funds" 32 "Real Estate" 
                       33 "Rental & Leasing" 34 "Prof/Scientific/Techn" 
                       35 "Managmt/Admin/Other" 36 "Educational Services" 
                       37 "H.Care/Social Assist" 38 "Info/Culture/Recreat" 
                       39 "Accom/Food Services" 40 "Other Services" 
                       41 "Fed Govt/Public Admin" 42 "Prov/Territ Pub Admin" 
                       43 "Local/Mun/Reg Pub Adm" ;
label define soc80_49  1 "Officials/Admin/Govt" 2 "Other Managers/Admin" 
                       3 "Mgt & admin related" 4 "Physical, life science" 
                       5 "Math/stats/syst analy" 6 "Architects and engineers" 
                       7 "Arch/engineer related" 
                       8 "Social sciences and related" 9 "Religion" 
                       10 "University & related" 
                       11 "Elementary/secondary & related" 
                       12 "Other teaching and related" 
                       13 "Health diag/treatment" 14 "Nursing, Therapy" 
                       15 "Medicine & Health" 16 "Artistic & recreation" 
                       17 "Stenographic & Typing" 18 "Bookeep/Account-Record" 
                       19 "Office Machine/EDP Op" 20 "Material Recording" 
                       21 "Recep/Inf/Mail/Message" 22 "Library/File/Corresp" 
                       23 "Sales, commodities" 24 "Sales/Services/Other" 
                       25 "Protective services" 26 "Food/Bev prep/lodging" 
                       27 "Personal/Apparel/furn" 
                       28 "Other service occupations" 
                       29 "Farmers and farm management" 
                       30 "Other Farm/Hort/Husb" 31 "Fishing/hunting/trapp" 
                       32 "Forestry & logging" 33 "Mining & quarrying" 
                       34 "Food/Bev processing" 35 "Other Processing Occup" 
                       36 "Metal Shaping/Forming" 37 "Other Machining Occup" 
                       38 "Metal Products, NEC" 39 "Electrical/Electronic" 
                       40 "Textiles/Furs/Leather" 41 "Wood/Rubber/Plastics" 
                       42 "Mechanics & repairmen" 43 "Excavat/Grading/Paving" 
                       44 "Elect Power/Light/Wire" 45 "Other Construction" 
                       46 "Motor Transport Oper" 47 "Other Transport Oper" 
                       48 "Material handling" 49 "Other crafts/Equipment" ;
label define soc80_21  1 "Managerial & admin" 2 "Nat Sci/engineer/math" 
                       3 "Social Science" 4 "Religion" 
                       5 "Teaching and related" 6 "Medicine and health" 
                       7 "Artistic/literary/rec" 8 "Clerical & related" 
                       9 "Sales" 10 "Service" 11 "Farm/hortic/husbandry" 
                       12 "Fishing, trapping" 13 "Forestry and logging" 
                       14 "Mine/quarry/oil/gas" 15 "Processing" 
                       16 "Machining" 17 "Fabricating" 18 "Construction" 
                       19 "Transport equip oper" 20 "Material handling" 
                       21 "Other crafts" 22 "Never work/perm unable" ;
label define noc01_25  1 "Senior Management" 2 "Other Management" 
                       3 "Prof-Business/Finance" 4 "Finan/Secret/Administ" 
                       5 "Clerical/Supervisors" 6 "Natural/Appl Sciences" 
                       7 "Prof-Health/Nurse/RNs" 8 "Tech/Assisting/Health" 
                       9 "S.Science/Govt/Relig" 10 "Teachers & professors" 
                       11 "Art/Culture/Rec/Sport" 12 "Wholesale/Tech/Insur" 
                       13 "Retail/Sales/Cashiers" 14 "Chefs/Cooks/Food/Bev" 
                       15 "Protective Services" 16 "Childcare/Home Supp" 
                       17 "Sales/Service/Travel" 18 "Contractors/Supervisor" 
                       19 "Construction trades" 20 "Other trades occupations" 
                       21 "Transport/Equipment" 22 "Trades Helpers/Constr" 
                       23 "Primary Industry" 24 "Machine Ops/Assemblers" 
                       25 "Process/Manuf/Utility" ;
label define noc01_47  1 "Sr Mngmnt Occupations" 2 "Specialist managers" 
                       3 "Mngrs in Retail/Food" 4 "Other Managers N.E.C." 
                       5 "Prof-Business/Finance" 6 "Finance/Insur Admin" 
                       7 "Secretaries" 8 "Admin/Regulatory Occup" 
                       9 "Clerical Supervisors" 10 "Clerical Occupations" 
                       11 "Prof-Natural/Appl Sci" 12 "Tech Occ-Nat/Appl Sci" 
                       13 "Professional-Health" 14 "Nurse Supervisors/RNs" 
                       15 "Techn/Related-Health" 16 "Support Health Services" 
                       17 "Judges/Lawyers/Psych" 18 "Teachers and professors" 
                       19 "Paralegals/Soc Service" 20 "Prof-Art and Culture" 
                       21 "Tech Occup-Art/Culture" 22 "Sales/Service Superv" 
                       23 "Wholesale/Tech/Insur" 24 "Retail & Sales Clerks" 
                       25 "Cashiers" 26 "Chefs and Cooks" 
                       27 "Food/Beverage Service" 28 "Protective Services" 
                       29 "Travel/Accom/Rec/Sport" 
                       30 "Childcare/Home Support" 31 "Sales/Service Occup" 
                       32 "Trades/Transportation" 33 "Construction trades" 
                       34 "Engineer/Power Station" 35 "Machinists/Metal Form" 
                       36 "Mechanics" 37 "Other Trades n.e.c." 
                       38 "Heavy Equipment/Crane" 39 "Transp Equip/Operators" 
                       40 "Trades Help/Construct" 41 "Agric, excl Labourers" 
                       42 "Forestry/Mine/Oil/Gas" 43 "Prim Produc Labourers" 
                       44 "Super in Manufacturing" 45 "Machine Ops in Manuf" 
                       46 "Assemblers in Manufact" 47 "Labourers-Proc/Manuf" ;
label define yabsent   0 "Other" 1 "Own illness or disability" 
                       2 "Personal/family resp" 3 "Vacation" ;
label define wksaway   99 "99 or more weeks" ;
label define payaway   1 "Yes" 2 "No" ;
label define uhrsmain  99.0 "99 or more hours" ;
label define ahrsmain  99.0 "99 or more hours" ;
label define ftptmain  1 "Full-time" 2 "Part-time" ;
label define utothrs   99.0 "99 or more hours" ;
label define atothrs   99.0 "99 or more hours" ;
label define hrsaway   99.0 "99 or more hours" ;
label define yaway     0 "Other reasons" 1 "Own illness/disability" 
                       2 "Personal/family resp" 3 "Vacation/civic holiday" 
                       4 "Working short-time" ;
label define whyptold  0 "Other reasons" 1 "Own illness/disability" 
                       2 "Personal/family resp" 3 "Going to school" 
                       4 "Could only find pt" 5 "Did not want full-time" 
                       6 "Hrs <30 = full-time" 7 "NA/mjh/total hrs >29" ;
label define whyptnew  0 "Other reasons" 1 "Own illness/disability" 
                       2 "Caring for own children" 3 "Other personal/family" 
                       4 "Going to school" 5 "Personal preference" 
                       6 "Couldnt find FT/looked" 7 "Couldnt find FT/didnt" ;
label define paidot    99.0 "99 or more hours" ;
label define unpaidot  99.0 "99 or more hours" ;
label define xtrahrs   99.0 "99 or more hours" ;
label define tenure    240 "240 or more" ;
label define prevten   240 "240 or more" ;
label define permtemp  1 "Permanent" 2 "Not permanent/seasonal" 
                       3 "Not perm/temp/contract" 4 "Not perm/casual/other" ;
label define union     1 "Union member" 2 "Not member/coll agree" 
                       3 "Not member or covered" ;
label define estsize   1 "Less than 20 employees" 2 "20 to 99 employees" 
                       3 "100 to 500 employees" 4 "More than 500 employees" ;
label define firmsize  1 "Less than 20 employees" 2 "20 to 99 employees" 
                       3 "100 to 500 employees" 4 "More than 500 employees" ;
label define durunemp  99 "99 or more weeks" ;
label define flowunem  1 "Job loser/temp layoff" 2 "Job losers, permanent" 
                       3 "Job leavers" 4 "Job leavers/losers" 
                       5 "New entrants" 6 "Re-entrants-work <1 yr" 
                       7 "Re-entrants-work >1 yr" 8 "Future starts" ;
label define unemftpt  1 "Full-time" 2 "Part-time" 3 "Future start" ;
label define whylefto  0 "Left job, other reasons" 
                       1 "Left job, illness/disab" 
                       2 "Left job, person/family" 
                       3 "Left job, going to school" 4 "Lost job: laid off" 
                       5 "Left job: retired" ;
label define whyleftn  0 "Left job, other" 1 "Left job, illness/dis" 
                       2 "Left job, care for kid" 3 "Left job, pregnancy" 
                       4 "Left job, person/fam" 5 "Left job, going to school" 
                       6 "Left job, dissatisfied" 7 "Left job, retired" 
                       8 "Left job: self-employ" 9 "Lost job, seasonal job" 
                       10 "Lost job, temp/casual" 11 "Lost job, company move" 
                       12 "Lost job, bus condit" 13 "Lost job, dismissal" ;
label define durjless  240 "240 or more months" ;
label define availabl  1 "Not available" 2 "Yes, available" ;
label define lkpubag   1 "Yes" ;
label define lkemploy  1 "Yes" ;
label define lkrels    1 "Yes" ;
label define lkatads   1 "Yes" ;
label define lkansads  1 "Yes" ;
label define lkother   1 "Yes" ;
label define prioract  0 "Other" 1 "Working" 2 "Managing a home" 
                       3 "Going to school" ;
label define ynolkold  0 "Other" 1 "Own illness/disability" 
                       2 "Personal/family resp" 3 "Going to school" 
                       4 "Wait for recall/reply" 5 "Believes no work avail" ;
label define ynolook   0 "Other" 1 "Own illness/disability" 
                       2 "Care for own children" 3 "Other Personal/family" 
                       4 "Going to school" 5 "Wait for recall/reply" 
                       6 "Believes no work avail" ;
label define tlolook   1 "Yes" 2 "No" ;
label define relrefn   1 "Self (reference person)" 2 "Spouse" 
                       3 "Son or daughter" 4 "Parent (or parent in law)" 
                       5 "Son/daughter in law" 6 "Other relative" ;
label define efamtype  1 "Unattached individual" 2 "Hus-wif 2earn,0kid<25" 
                       3 "Hus-wif 2earn, kid<18" 4 "Hus-wif 2earn, 18-24" 
                       5 "H-W/hus empl/0kids<25" 6 "H-W/hus empl/child<18" 
                       7 "H-W/hus empl/kid 18-24" 8 "H-W/wif empl/0kids<25" 
                       9 "H-W/wif empl/child<18" 10 "H-W/wif empl/kid18-24" 
                       11 "H-W non-earn/0kids<25" 12 "H-W non-earn/child<18" 
                       13 "H-W non-earn/kids18-24" 14 "1par/par empl/kid<18" 
                       15 "1par/par empl/kid18-24" 
                       16 "1par/par no-emp/kid<18" 17 "1par/par no-emp/18-24" 
                       18 "Other family types" ;
label define efamsize  5 "5 or more" ;
label define efamempl  3 "3 or more" ;
label define efamunem  2 "2 or more" ;
label define sp_age    1 "15 - 19" 2 "20 - 24" 3 "25 - 34" 4 "35 - 44" 
                       5 "45 - 54" 6 "55 - 64" 7 "65 or over" ;
label define sp_lfsst  1 "Employed full-time" 2 "Employed part-time" 
                       3 "Unemployed" 4 "Not in labour force" 
                       5 "Out of scope (military)" ;
label define sped7689  0 "0-8 yrs of education" 1 "Some/complete hschool" 
                       2 "Some post-secondary" 3 "Post-sec cert/diploma" 
                       4 "University degree" ;
label define sped1990  0 "0-8 yrs of education" 1 "Some secondary educ" 
                       2 "Graduate from hschool" 3 "Some post-secondary" 
                       4 "Post-sec cert/diploma" 5 "University degree" ;
label define sp_soc80  1 "Managerial & admin" 2 "Nat Sci/engineer/math" 
                       3 "Social Science" 4 "Religion" 
                       5 "Teaching and related" 6 "Medicine and health" 
                       7 "Artistic/literary/rec" 8 "Clerical & related" 
                       9 "Sales" 10 "Service" 11 "Farm/hortic/husbandry" 
                       12 "Fishing, trapping" 13 "Forestry and logging" 
                       14 "Mine/quarry/oil/gas" 15 "Processing" 
                       16 "Machining" 17 "Fabricating" 18 "Construction" 
                       19 "Transport equip oper" 20 "Material handling" 
                       21 "Other crafts" ;
label define sp_noc01  1 "Senior Management" 2 "Other Management" 
                       3 "Prof-Business/Finance" 4 "Finan/Secret/Administ" 
                       5 "Clerical/Supervisors" 6 "Natural/Appl Sciences" 
                       7 "Prof-Health/Nurse/RNs" 8 "Tech/Assisting/Health" 
                       9 "S.Science/Govt/Relig" 10 "Teachers & professors" 
                       11 "Art/Culture/Rec/Sport" 12 "Wholesale/Tech/Insur" 
                       13 "Retail/Sales/Cashiers" 14 "Chefs/Cooks/Food/Bev" 
                       15 "Protective Services" 16 "Childcare/Home Supp" 
                       17 "Sales/Service/Travel" 18 "Contractors/Supervisor" 
                       19 "Construction trades" 20 "Other trades occupations" 
                       21 "Transport/Equipment" 22 "Trades Helpers/Constr" 
                       23 "Primary Industry" 24 "Machine Ops/Assemblers" 
                       25 "Process/Manuf/Utility" ;
label define sp_uhrsm  1 "1 to 14 hours" 2 "15 to 29 hours" 
                       3 "30 to 34 hours" 4 "35 to 39 hours" 5 "40 hours" 
                       6 "41 to 49 hours" 7 "50 hours or more" ;
label define sp_uhrst  1 "1 to 14 hours" 2 "15 to 29 hours" 
                       3 "30 to 34 hours" 4 "35 to 39 hours" 5 "40 hours" 
                       6 "41 to 49 hours" 7 "50 hours or more" ;
label define sp_cowm   0 "Spouse present, NA" 1 "Public employee" 
                       2 "Private employee" 3 "Priv,self inc, w/empl" 
                       4 "Priv,self inc,no empl" 5 "Priv,self uninc w/emp" 
                       6 "Priv,self uninc,0 emp" 7 "Priv unpd fam worker" ;
label define agyownkn  1 "Youngest child <3" 2 "Youngest child 3-5" 
                       3 "Youngest child 6-12" 4 "Youngest child 13-15" 
                       5 "Youngest child 16-17" 6 "Youngest child 18-24" ;
label define sch1624   1 ">=1 child in school" ;


#delimit cr

*******************************************************************
infile using LFS2015dict
* Replace 'X' with the name of the dictionary file. 
*
* The contents of the dictionary are given at the end of this file.
* Put the dictionary into a separate file (by editing this file).
* Then specify here the name of the dictionary file.
*******************************************************************
* The md, min and max specifications were translated 
* into the following "REPLACE...IF" statements:

