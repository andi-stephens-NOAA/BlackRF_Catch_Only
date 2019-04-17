#V3.20b
#C  generic forecast file
# for all year entries except rebuilder; enter either: actual year, -999 for styr, 0 for endyr, neg number for rel. endyr
1 # Benchmarks: 0=skip; 1=calc F_spr,F_btgt,F_msy 
2 # MSY: 1= set to F(SPR); 2=calc F(MSY); 3=set to F(Btgt); 4=set to F(endyr) 
0.5 # SPR target (e.g. 0.40)
0.4 # Biomass target (e.g. 0.40)
#_Bmark_years: beg_bio, end_bio, beg_selex, end_selex, beg_relF, end_relF (enter actual year, or values of 0 or -integer to be rel. endyr)
 0 0 0 0 0 0
#  2010 2014 2010 2014 2010 2014 # after processing 
1 #Bmark_relF_Basis: 1 = use year range; 2 = set relF same as forecast below
#
1 # Forecast: 0=none; 1=F(SPR); 2=F(MSY) 3=F(Btgt); 4=Ave F (uses first-last relF yrs); 5=input annual F scalar
16 # N forecast years 
1 # F scalar (only used for Do_Forecast==5)
#_Fcast_years:  beg_selex, end_selex, beg_relF, end_relF  (enter actual year, or values of 0 or -integer to be rel. endyr)
 0 0 0 0
#  2010 2014 2010 2014 # after processing 
1 # Control rule method (1=catch=f(SSB) west coast; 2=F=f(SSB) ) 
0.4 # Control rule Biomass level for constant F (as frac of Bzero, e.g. 0.40); (Must be > the no F level below) 
0.1 # Control rule Biomass level for no F (as frac of Bzero, e.g. 0.10) 
0.879 # Control rule target as fraction of Flimit (e.g. 0.75) 
3 #_N forecast loops (1=OFL only; 2=ABC; 3=get F from forecast ABC catch with allocations applied)
3 #_First forecast loop with stochastic recruitment
0 #_Forecast loop control #3 (reserved for future bells&whistles) 
0 #_Forecast loop control #4 (reserved for future bells&whistles) 
0 #_Forecast loop control #5 (reserved for future bells&whistles) 
2056  #FirstYear for caps and allocations (should be after years with fixed inputs) 
0 # stddev of log(realized catch/target catch) in forecast (set value>0.0 to cause active impl_error)
0 # Do West Coast gfish rebuilder output (0/1) 
0 # Rebuilder:  first year catch could have been set to zero (Ydecl)(-1 to set to 1999)
0 # Rebuilder:  year for current age structure (Yinit) (-1 to set to endyear+1)
1 # fleet relative F:  1=use first-last alloc year; 2=read seas(row) x fleet(col) below
# Note that fleet allocation is used directly as average F if Do_Forecast=4 
2 # basis for fcast catch tuning and for fcast catch caps and allocation  (2=deadbio; 3=retainbio; 5=deadnum; 6=retainnum)
# Conditional input if relative F choice = 2
# Fleet relative F:  rows are seasons, columns are fleets
#_Fleet:  South.fixed Central.fixed Central.trawl
#  0.190524 0.315408 0.494067
# max totalcatch by fleet (-1 to have no max) must enter value for each fleet
 -1 -1 -1 -1
# max totalcatch by area (-1 to have no max); must enter value for each fleet 
 -1
# fleet assignment to allocation group (enter group ID# for each fleet, 0 for not included in an alloc group)
 0 0 0 0
#_Conditional on >1 allocation group
# allocation fraction for each of: 0 allocation groups
# no allocation groups
60 # Number of forecast catch levels to input (else calc catch from forecast F) 
2 # basis for input Fcast catch:  2=dead catch; 3=retained catch; 99=input Hrate(F) (units are from fleetunits; note new codes in SSV3.20)
# Input fixed catch values
#
2015	1	1	0.077894483
2015	1	2	37.95859
2015	1	3	65.10945845
2015	1	4	227.36
2016	1	1	0.273980028
2016	1	2	31.10343
2016	1	3	33.23841767
2016	1	4	165.78
2017	1	1	0.001814388
2017	1	2	19.86903
2017	1	3	34.56486075
2017	1	4	97.28
2018	1	1	0.013849122
2018	1	2	18.59817
2018	1	3	27.37520849
2018	1	4	92.19
2019	1	1	0.091884505
2019	1	2	36
2019	1	3	64
2019	1	4	165.1
2020	1	1	0.091884505
2020	1	2	36
2020	1	3	64
2020	1	4	165.1
2021	1	1	0.115390961
2021	1	2	34.50684005
2021	1	3	54.39817814
2021	1	4	167.0735908
2022	1	1	0.115954187
2022	1	2	34.67526864
2022	1	3	54.66369675
2022	1	4	167.8890804
2023	1	1	0.116606627
2023	1	2	34.87037631
2023	1	3	54.97127351
2023	1	4	168.8337436
2024	1	1	0.117178414
2024	1	2	35.04136501
2024	1	3	55.240828
2024	1	4	169.6616286
2025	1	1	0.117890331
2025	1	2	35.25425874
2025	1	3	55.57644352
2025	1	4	170.6924074
2026	1	1	0.118571609
2026	1	2	35.45798996
2026	1	3	55.89761483
2026	1	4	171.6788236
2027	1	1	0.119194311
2027	1	2	35.6442046
2027	1	3	56.19117221
2027	1	4	172.5804289
2028	1	1	0.119608845
2028	1	2	35.76816804
2028	1	3	56.3865939
2028	1	4	173.1806292
2029	1	1	0.120083307
2029	1	2	35.91005228
2029	1	3	56.61026678
2029	1	4	173.8675976
#
999 # verify end of input 