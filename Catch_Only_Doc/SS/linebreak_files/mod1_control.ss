#V3.24V
#_data_and_control_files: BLK_CA_dat.ss // BLK_CA_ctl.ss
#_SS-V3.24V-safe;_03/08/2015;_Stock_Synthesis_by_Richard_Methot_(NOAA)_usin
# g_ADMB_11.1x64
1  #_N_Growth_Patterns
1 #_N_Morphs_Within_GrowthPattern 
#_Cond 1 #_Morph_between/within_stdev_ratio (no read if N_morphs=1)
#_Cond  1 #vector_Morphdist_(-1_in_first_val_gives_normal_approx)
#
#_Cond 0  #  N recruitment designs goes here if N_GP*nseas*area>1
#_Cond 0  #  placeholder for recruitment interaction request
#_Cond 1 1 1  # example recruitment design element for GP=1, seas=1, area=1
#
#_Cond 0 # N_movement_definitions goes here if N_areas > 1
#_Cond 1.0 # first age that moves (real age at begin of season, not integer
# ) also cond on do_migration>0
#_Cond 1 1 1 2 4 10 # example move definition for seas=1, morph=1, source=1
#  dest=2, age1=4, age2=10
#
0 #_Nblock_Patterns
#_Cond 0 #_blocks_per_pattern 
# begin and end years of blocks
#
0.5 #_fracfemale 
0 #_natM_type:_0=1Parm; 1=N_breakpoints;_2=Lorenzen;_3=agespecific;_4=agesp
# ec_withseasinterpolate
  #_no additional input for selected M option; read 1P per morph
1 # GrowthModel: 1=vonBert with L1&L2; 2=Richards with L1&L2; 3=age_speciif
# ic_K; 4=not implemented
3 #_Growth_Age_for_L1
20 #_Growth_Age_for_L2 (999 to use as Linf)
0 #_SD_add_to_LAA (set to 0.1 for SS2 V1.x compatibility)
0 #_CV_Growth_Pattern:  0 CV=f(LAA); 1 CV=F(A); 2 SD=F(LAA); 3 SD=F(A); 4 l
# ogSD=F(A)
1 #_maturity_option:  1=length logistic; 2=age logistic; 3=read age-maturit
# y by GP; 4=read age-fecundity by GP; 5=read fec and wt from wtatage.ss; 6
# =read length-maturity by GP
#_placeholder for empirical age- or length- maturity by growth pattern (fem
# ale only)
1 #_First_Mature_Age
1 #_fecundity option:(1)eggs=Wt*(a+b*Wt);(2)eggs=a*L^b;(3)eggs=a*Wt^b; (4)e
# ggs=a+b*L; (5)eggs=a+b*W
0 #_hermaphroditism option:  0=none; 1=age-specific fxn
2 #_parameter_offset_approach (1=none, 2= M, G, CV_G as offset from female-
# GP1, 3=like SS2 V1.x)
1 #_env/block/dev_adjust_method (1=standard; 2=logistic transform keeps in 
# base parm bounds; 3=standard w/ no bound check)
#
#_growth_parms
#_LO HI INIT PRIOR PR_type SD PHASE env-var use_dev dev_minyr dev_maxyr dev
# _stddev Block Block_Fxn
 0.001 2 0.181305 -2.33925 3 0.524 2 0 0 0 0 0 0 0 # NatM_p_1_Fem_GP_1
 5 30 23.3897 26.1871 -1 10 2 0 0 0 0 0 0 0 # L_at_Amin_Fem_GP_1
 35 65 54.5408 44.7173 -1 10 2 0 0 0 0 0 0 0 # L_at_Amax_Fem_GP_1
 0.01 1 0.152048 0.21139 -1 0.8 2 0 0 0 0 0 0 0 # VonBert_K_Fem_GP_1
 0.03 0.2 0.0940376 0.1 -1 0.8 3 0 0 0 0 0 0 0 # CV_young_Fem_GP_1
 0.03 0.2 0.0725442 0.1 -1 0.8 3 0 0 0 0 0 0 0 # CV_old_Fem_GP_1
 -3 3 -0.342897 0 0 50 2 0 0 0 0 0.5 0 0 # NatM_p_1_Mal_GP_1
 -3 3 0.0747786 0 -1 50 2 0 0 0 0 0.5 0 0 # L_at_Amin_Mal_GP_1
 -3 3 -0.17025 0 -1 50 2 0 0 0 0 0.5 0 0 # L_at_Amax_Mal_GP_1
 -3 3 0.341009 0 -1 50 2 0 0 0 0 0.5 0 0 # VonBert_K_Mal_GP_1
 -3 3 0.00899196 0 -1 50 2 0 0 0 0 0.5 0 0 # CV_young_Mal_GP_1
 -3 3 -0.0283665 0 -1 50 2 0 0 0 0 0.5 0 0 # CV_old_Mal_GP_1
 0 3 2e-005 2.48e-005 -1 0.8 -3 0 0 0 0 0 0 0 # Wtlen_1_Fem
 0 4 2.942 2.9006 -1 0.8 -3 0 0 0 0 0 0 0 # Wtlen_2_Fem
 1 1000 43.69 44.5605 -1 0.8 -3 0 0 0 0 0 0 0 # Mat50%_Fem
 -3 3 -0.66 -0.4139 -1 0.8 -3 0 0 0 0 0 0 0 # Mat_slope_Fem
 -3 3 0.2747 0.2747 -1 0.8 -3 0 0 0 0 0 0 0 # Eggs/kg_inter_Fem
 -3 3 0.0941 0.0941 -1 0.8 -3 0 0 0 0 0 0 0 # Eggs/kg_slope_wt_Fem
 -3 3 2e-005 2.58e-005 -1 0.8 -3 0 0 0 0 0 0 0 # Wtlen_1_Mal
 -3 4 2.955 2.887 -1 0.8 -3 0 0 0 0 0 0 0 # Wtlen_2_Mal
 0 0 0 0 -1 0 -4 0 0 0 0 0 0 0 # RecrDist_GP_1
 0 0 0 0 -1 0 -4 0 0 0 0 0 0 0 # RecrDist_Area_1
 0 0 0 0 -1 0 -4 0 0 0 0 0 0 0 # RecrDist_Seas_1
 0 0 0 0 -1 0 -4 0 0 0 0 0 0 0 # CohortGrowDev
#
#_Cond 0  #custom_MG-env_setup (0/1)
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no MG-environ parameters
#
#_Cond 0  #custom_MG-block_setup (0/1)
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no MG-block parameters
#_Cond No MG parm trends 
#
#_seasonal_effects_on_biology_parms
 0 0 0 0 0 0 0 0 0 0 #_femwtlen1,femwtlen2,mat1,mat2,fec1,fec2,Malewtlen1,m
# alewtlen2,L1,K
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no seasonal MG parameters
#
#_Cond -4 #_MGparm_Dev_Phase
#
#_Spawner-Recruitment
3 #_SR_function: 2=Ricker; 3=std_B-H; 4=SCAA; 5=Hockey; 6=B-H_flattop; 7=su
# rvival_3Parm; 8=Shepard_3Parm
#_LO HI INIT PRIOR PR_type SD PHASE
 1 20 7.60576 10 -1 10 1 # SR_LN(R0)
 0.25 0.99 0.773 0.773 2 0.147 -2 # SR_BH_steep
 0 2 0.5 0.8 -1 0.8 -4 # SR_sigmaR
 -5 5 0.1 0 -1 1 -3 # SR_envlink
 -5 5 0 0 -1 1 -4 # SR_R1_offset
 0 0 0 0 -1 0 -99 # SR_autocorr
0 #_SR_env_link
0 #_SR_env_target_0=none;1=devs;_2=R0;_3=steepness
1 #do_recdev:  0=none; 1=devvector; 2=simple deviations
1957 # first year of main recr_devs; early devs can preceed this era
2011 # last year of main recr_devs; forecast devs start in following year
6 #_recdev phase 
1 # (0/1) to read 13 advanced options
 0 #_recdev_early_start (0=none; neg value makes relative to recdev_start)
 -4 #_recdev_early_phase
 -1 #_forecast_recruitment phase (incl. late recr) (0 value resets to maxph
# ase+1)
 1 #_lambda for Fcast_recr_like occurring before endyr+1
 1954 #_last_early_yr_nobias_adj_in_MPD
 1974 #_first_yr_fullbias_adj_in_MPD
 2010 #_last_yr_fullbias_adj_in_MPD
 2014 #_first_recent_yr_nobias_adj_in_MPD
 0.67 #_max_bias_adj_in_MPD (-1 to override ramp and set biasadj=1.0 for al
# l estimated recdevs)
 0 #_period of cycles in recruitment (N parms read below)
 -5 #min rec_dev
 5 #max rec_dev
 0 #_read_recdevs
#_end of advanced SR options
#
#_placeholder for full parameter lines for recruitment cycles
# read specified recr devs
#_Yr Input_value
#
# all recruitment deviations
#DisplayOnly -0.0672581 # Main_RecrDev_1957
#DisplayOnly -0.0506348 # Main_RecrDev_1958
#DisplayOnly -0.170746 # Main_RecrDev_1959
#DisplayOnly -0.286685 # Main_RecrDev_1960
#DisplayOnly -0.32637 # Main_RecrDev_1961
#DisplayOnly -0.291565 # Main_RecrDev_1962
#DisplayOnly -0.225342 # Main_RecrDev_1963
#DisplayOnly -0.163201 # Main_RecrDev_1964
#DisplayOnly -0.139686 # Main_RecrDev_1965
#DisplayOnly -0.202755 # Main_RecrDev_1966
#DisplayOnly -0.157078 # Main_RecrDev_1967
#DisplayOnly -0.205398 # Main_RecrDev_1968
#DisplayOnly -0.270723 # Main_RecrDev_1969
#DisplayOnly -0.201475 # Main_RecrDev_1970
#DisplayOnly -0.21488 # Main_RecrDev_1971
#DisplayOnly 0.29253 # Main_RecrDev_1972
#DisplayOnly 0.0621095 # Main_RecrDev_1973
#DisplayOnly 0.289807 # Main_RecrDev_1974
#DisplayOnly -0.170792 # Main_RecrDev_1975
#DisplayOnly 1.15837 # Main_RecrDev_1976
#DisplayOnly 0.545315 # Main_RecrDev_1977
#DisplayOnly 0.188917 # Main_RecrDev_1978
#DisplayOnly -0.631923 # Main_RecrDev_1979
#DisplayOnly -0.643232 # Main_RecrDev_1980
#DisplayOnly -0.980753 # Main_RecrDev_1981
#DisplayOnly -0.486284 # Main_RecrDev_1982
#DisplayOnly -0.315018 # Main_RecrDev_1983
#DisplayOnly -0.205634 # Main_RecrDev_1984
#DisplayOnly -0.112673 # Main_RecrDev_1985
#DisplayOnly -0.256222 # Main_RecrDev_1986
#DisplayOnly -0.185916 # Main_RecrDev_1987
#DisplayOnly -0.353124 # Main_RecrDev_1988
#DisplayOnly -0.249078 # Main_RecrDev_1989
#DisplayOnly 0.416813 # Main_RecrDev_1990
#DisplayOnly -0.207174 # Main_RecrDev_1991
#DisplayOnly 0.0868068 # Main_RecrDev_1992
#DisplayOnly 0.500718 # Main_RecrDev_1993
#DisplayOnly 0.647871 # Main_RecrDev_1994
#DisplayOnly 0.443829 # Main_RecrDev_1995
#DisplayOnly 0.239804 # Main_RecrDev_1996
#DisplayOnly -0.0542309 # Main_RecrDev_1997
#DisplayOnly -0.410652 # Main_RecrDev_1998
#DisplayOnly -0.0403731 # Main_RecrDev_1999
#DisplayOnly 0.153606 # Main_RecrDev_2000
#DisplayOnly 0.178235 # Main_RecrDev_2001
#DisplayOnly 0.383003 # Main_RecrDev_2002
#DisplayOnly 0.115771 # Main_RecrDev_2003
#DisplayOnly 0.15527 # Main_RecrDev_2004
#DisplayOnly -0.0581377 # Main_RecrDev_2005
#DisplayOnly -0.392308 # Main_RecrDev_2006
#DisplayOnly -0.0977822 # Main_RecrDev_2007
#DisplayOnly 1.11455 # Main_RecrDev_2008
#DisplayOnly 1.05671 # Main_RecrDev_2009
#DisplayOnly 0.680181 # Main_RecrDev_2010
#DisplayOnly 0.114884 # Main_RecrDev_2011
#DisplayOnly 0 # Late_RecrDev_2012
#DisplayOnly 0 # Late_RecrDev_2013
#DisplayOnly 0 # Late_RecrDev_2014
#DisplayOnly 0 # ForeRecr_2015
#DisplayOnly 0 # ForeRecr_2016
#DisplayOnly 0 # Impl_err_2015
#DisplayOnly 0 # Impl_err_2016
#
#Fishing Mortality info 
0.3 # F ballpark for annual F (=Z-M) for specified year
-2001 # F ballpark year (neg value to disable)
1 # F_Method:  1=Pope; 2=instan. F; 3=hybrid (hybrid is recommended)
0.9 # max F or harvest rate, depends on F_Method
# no additional F input needed for Fmethod 1
# if Fmethod=2; read overall start F value; overall phase; N detailed input
# s to read
# if Fmethod=3; read N iterations for tuning for Fmethod 3
#
#_initial_F_parms
#_LO HI INIT PRIOR PR_type SD PHASE
 0 1 0 0.01 -1 99 -1 # InitF_1Trawl
 0 1 0 0.01 -1 99 -1 # InitF_2nonTrawldead
 0 1 0 0.01 -1 99 -1 # InitF_3nonTrawllive
 0 1 0 0.01 -1 99 -1 # InitF_4Rec
#
#_Q_setup
 # Q_type options:  <0=mirror, 0=float_nobiasadj, 1=float_biasadj, 2=parm_n
# obiasadj, 3=parm_w_random_dev, 4=parm_w_randwalk, 5=mean_unbiased_float_a
# ssign_to_parm
#_for_env-var:_enter_index_of_the_env-var_to_be_linked
#_Den-dep  env-var  extra_se  Q_type
 0 0 0 0 # 1 Trawl
 0 0 0 0 # 2 nonTrawldead
 0 0 0 0 # 3 nonTrawllive
 0 0 0 0 # 4 Rec
 0 0 1 0 # 5 OnboardCPUE
 0 0 1 0 # 6 OnboardCPUEII
 0 0 0 0 # 7 RecResearch
 0 0 1 0 # 8 dockside
#
#_Cond 0 #_If q has random component, then 0=read one parm for each fleet w
# ith random q; 1=read a parm for each year of index
#_Q_parms(if_any);Qunits_are_ln(q)
# LO HI INIT PRIOR PR_type SD PHASE
 0 5 0.0001 0.01 -1 99 -2 # Q_extraSD_5_OnboardCPUE
 0 5 0.0001 0.01 -1 99 -2 # Q_extraSD_6_OnboardCPUEII
 0 5 0.0001 0.01 -1 99 -2 # Q_extraSD_8_dockside
#
#_size_selex_types
#discard_options:_0=none;_1=define_retention;_2=retention&mortality;_3=all_
# discarded_dead
#_Pattern Discard Male Special
 24 0 0 0 # 1 Trawl
 24 0 0 0 # 2 nonTrawldead
 24 0 0 0 # 3 nonTrawllive
 24 0 0 0 # 4 Rec
 24 0 0 0 # 5 OnboardCPUE
 5 0 0 5 # 6 OnboardCPUEII
 24 0 0 0 # 7 RecResearch
 5 0 0 5 # 8 dockside
#
#_age_selex_types
#_Pattern ___ Male Special
 10 0 0 0 # 1 Trawl
 10 0 0 0 # 2 nonTrawldead
 10 0 0 0 # 3 nonTrawllive
 10 0 0 0 # 4 Rec
 15 0 0 4 # 5 OnboardCPUE
 15 0 0 4 # 6 OnboardCPUEII
 15 0 0 4 # 7 RecResearch
 15 0 0 4 # 8 dockside
#_LO HI INIT PRIOR PR_type SD PHASE env-var use_dev dev_minyr dev_maxyr dev
# _stddev Block Block_Fxn
 15 50 49.3412 30 -1 99 4 0 0 0 0 0.5 0 0 # SizeSel_1P_1_Trawl
 -10 10 0.319871 -2.6 -1 99 5 0 0 0 0 0.5 0 0 # SizeSel_1P_2_Trawl
 -4 12 3.47098 5.2 -1 99 4 0 0 0 0 0.5 0 0 # SizeSel_1P_3_Trawl
 -2 6 2.2 6 -1 99 -4 0 0 0 0 0.5 0 0 # SizeSel_1P_4_Trawl
 -15 10 -4 -3.7 -1 99 -5 0 0 0 0 0.5 0 0 # SizeSel_1P_5_Trawl
 -5 10 5 0.1 -1 99 -4 0 0 0 0 0.5 0 0 # SizeSel_1P_6_Trawl
 15 50 41.7175 30 -1 99 4 0 0 0 0 0.5 0 0 # SizeSel_2P_1_nonTrawldead
 -10 10 -1.81622 -2.6 -1 99 5 0 0 0 0 0.5 0 0 # SizeSel_2P_2_nonTrawldead
 -4 12 4.28103 5.2 -1 99 4 0 0 0 0 0.5 0 0 # SizeSel_2P_3_nonTrawldead
 -2 6 2.2 6 -1 99 -4 0 0 0 0 0.5 0 0 # SizeSel_2P_4_nonTrawldead
 -15 10 -4 -3.7 -1 99 -5 0 0 0 0 0.5 0 0 # SizeSel_2P_5_nonTrawldead
 -5 10 5 0.1 -1 99 -4 0 0 0 0 0.5 0 0 # SizeSel_2P_6_nonTrawldead
 15 50 34.5827 30 -1 99 4 0 0 0 0 0.5 0 0 # SizeSel_3P_1_nonTrawllive
 -10 10 -0.979372 -2.6 -1 99 5 0 0 0 0 0.5 0 0 # SizeSel_3P_2_nonTrawllive
 -4 12 2.78517 5.2 -1 99 4 0 0 0 0 0.5 0 0 # SizeSel_3P_3_nonTrawllive
 -2 6 4.15169 6 -1 99 4 0 0 0 0 0.5 0 0 # SizeSel_3P_4_nonTrawllive
 -15 10 -4 -3.7 -1 99 -5 0 0 0 0 0.5 0 0 # SizeSel_3P_5_nonTrawllive
 -5 10 -3.16667 0.1 -1 99 4 0 0 0 0 0.5 0 0 # SizeSel_3P_6_nonTrawllive
 15 50 31.2398 30 -1 99 4 0 0 0 0 0.5 0 0 # SizeSel_4P_1_Rec
 -10 10 -3.05205 -2.6 -1 99 5 0 0 0 0 0.5 0 0 # SizeSel_4P_2_Rec
 -4 12 3.35288 5.2 -1 99 4 0 0 0 0 0.5 0 0 # SizeSel_4P_3_Rec
 -2 6 2.2 6 -1 99 -4 0 0 0 0 0.5 0 0 # SizeSel_4P_4_Rec
 -15 10 -4 -3.7 -1 99 -5 0 0 0 0 0.5 0 0 # SizeSel_4P_5_Rec
 -5 10 5 0.1 -1 99 -4 0 0 0 0 0.5 0 0 # SizeSel_4P_6_Rec
 15 50 26.8869 30 -1 99 4 0 0 0 0 0.5 0 0 # SizeSel_5P_1_OnboardCPUE
 -10 10 -2.12446 -2.6 -1 99 5 0 0 0 0 0.5 0 0 # SizeSel_5P_2_OnboardCPUE
 -4 12 2.27966 5.2 -1 99 4 0 0 0 0 0.5 0 0 # SizeSel_5P_3_OnboardCPUE
 -2 6 2.2 6 -1 99 -4 0 0 0 0 0.5 0 0 # SizeSel_5P_4_OnboardCPUE
 -15 10 -4 -3.7 -1 99 -5 0 0 0 0 0.5 0 0 # SizeSel_5P_5_OnboardCPUE
 -5 10 5 0.1 -1 99 -4 0 0 0 0 0.5 0 0 # SizeSel_5P_6_OnboardCPUE
 -5 5 -1 -1 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_6P_1_OnboardCPUEII
 -5 5 -1 -1 -1 99 -5 0 0 0 0 0 0 0 # SizeSel_6P_2_OnboardCPUEII
 15 50 26.3342 30 -1 99 4 0 0 0 0 0.5 0 0 # SizeSel_7P_1_RecResearch
 -10 10 -1.43992 -2.6 -1 99 5 0 0 0 0 0.5 0 0 # SizeSel_7P_2_RecResearch
 -4 12 2.892 5.2 -1 99 4 0 0 0 0 0.5 0 0 # SizeSel_7P_3_RecResearch
 -2 6 2.2 6 -1 99 -4 0 0 0 0 0.5 0 0 # SizeSel_7P_4_RecResearch
 -15 10 -4 -3.7 -1 99 -5 0 0 0 0 0.5 0 0 # SizeSel_7P_5_RecResearch
 -5 10 5 0.1 -1 99 -4 0 0 0 0 0.5 0 0 # SizeSel_7P_6_RecResearch
 -5 5 -1 -1 -1 99 -4 0 0 0 0 0 0 0 # SizeSel_8P_1_dockside
 -5 5 -1 -1 -1 99 -5 0 0 0 0 0 0 0 # SizeSel_8P_2_dockside
#_Cond 0 #_custom_sel-env_setup (0/1) 
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no enviro fxns
#_Cond 0 #_custom_sel-blk_setup (0/1) 
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no block usage
#_Cond No selex parm trends 
#_Cond -4 # placeholder for selparm_Dev_Phase
#_Cond 0 #_env/block/dev_adjust_method (1=standard; 2=logistic trans to kee
# p in base parm bounds; 3=standard w/ no bound check)
#
# Tag loss and Tag reporting parameters go next
0  # TG_custom:  0=no read; 1=read if tags exist
#_Cond -6 6 1 1 2 0.01 -4 0 0 0 0 0 0 0  #_placeholder if no parameters
#
1 #_Variance_adjustments_to_input_values
#_fleet: 1 2 3 4 5 6 7 8 
  0 0 0 0 0 0 0 0 #_add_to_survey_CV
  0 0 0 0 0 0 0 0 #_add_to_discard_stddev
  0 0 0 0 0 0 0 0 #_add_to_bodywt_CV
  1 0.8 1 0.05 0.5 1 0.2 1 #_mult_by_lencomp_N
  1 1 1 1 1 1 1 1 #_mult_by_agecomp_N
  1 1 1 1 1 1 1 1 #_mult_by_size-at-age_N
#
1 #_maxlambdaphase
1 #_sd_offset
#
13 # number of changes to make to default Lambdas (default value is 1.0)
# Like_comp codes:  1=surv; 2=disc; 3=mnwt; 4=length; 5=age; 6=SizeFreq; 7=
# sizeage; 8=catch; 9=init_equ_catch; 
# 10=recrdev; 11=parm_prior; 12=parm_dev; 13=CrashPen; 14=Morphcomp; 15=Tag
# -comp; 16=Tag-negbin; 17=F_ballpark
#like_comp fleet/survey  phase  value  sizefreq_method
 1 5 1 1 1
 1 6 1 1 1
 1 8 1 1 1
 4 1 1 1 1
 4 2 1 1 1
 4 3 1 1 1
 4 4 1 1 1
 4 5 1 1 1
 4 7 1 1 1
 5 1 1 1 1
 5 2 1 1 1
 5 4 1 1 1
 5 7 1 1 1
#
# lambdas (for info only; columns are phases)
#  0 #_CPUE/survey:_1
#  0 #_CPUE/survey:_2
#  0 #_CPUE/survey:_3
#  0 #_CPUE/survey:_4
#  1 #_CPUE/survey:_5
#  1 #_CPUE/survey:_6
#  0 #_CPUE/survey:_7
#  1 #_CPUE/survey:_8
#  1 #_lencomp:_1
#  1 #_lencomp:_2
#  1 #_lencomp:_3
#  1 #_lencomp:_4
#  1 #_lencomp:_5
#  0 #_lencomp:_6
#  1 #_lencomp:_7
#  0 #_lencomp:_8
#  1 #_agecomp:_1
#  1 #_agecomp:_2
#  0 #_agecomp:_3
#  1 #_agecomp:_4
#  0 #_agecomp:_5
#  0 #_agecomp:_6
#  1 #_agecomp:_7
#  0 #_agecomp:_8
#  1 #_init_equ_catch
#  1 #_recruitments
#  1 #_parameter-priors
#  1 #_parameter-dev-vectors
#  1 #_crashPenLambda
#  0 # F_ballpark_lambda
0 # (0/1) read specs for more stddev reporting 
 # 0 1 -1 5 1 5 1 -1 5 # placeholder for selex type, len/age, year, N selex
#  bins, Growth pattern, N growth ages, NatAge_area(-1 for all), NatAge_yr,
#  N Natages
 # placeholder for vector of selex bins to be reported
 # placeholder for vector of growth ages to be reported
 # placeholder for vector of NatAges ages to be reported
999

1  #_N_Growth_Patterns
1 #_N_Morphs_Within_GrowthPattern

0 #_Nblock_Patterns
# 1 #_Cond 0 #_blocks_per_pattern
# 2000 2014
# begin and end years of blocks
#
0.5 #_fracfemale
0 #_natM_type:_0=1Parm; 1=N_breakpoints;_2=Lorenzen;_3=agespecific;_4=agesp
# ec_withseasinterpolate
  #_no additional input for selected M option; read 1P per morph
1 # GrowthModel: 1=vonBert with L1&L2; 2=Richards with L1&L2; 3=not impleme
# nted; 4=not implemented
3 #_Growth_Age_for_L1
20 #_Growth_Age_for_L2 (999 to use as Linf)
0 #_SD_add_to_LAA (set to 0.1 for SS2 V1.x compatibility)
0 #_CV_Growth_Pattern: 0 CV=f(LAA); 1 CV=F(A); 2 SD=F(LAA); 3 SD=F(A)
1 #_maturity_option: 1=length logistic; 2=age logistic; 3=read age-maturity
#  matrix by growth_pattern; 4=read age-fecundity; 5=read fec and wt from w
# tatage.ss
#_placeholder for empirical age-maturity by growth pattern
1 #_First_Mature_Age
1 #_fecundity option:(1)eggs=Wt*(a+b*Wt);(2)eggs=a*L^b;(3)eggs=a*Wt^b
0 #_hermaphroditism option: 0=none; 1=age-specific fxn
2 #_parameter_offset_approach (1=none, 2= M, G, CV_G as offset from female-
# GP1, 3=like SS2 V1.x)
1 #_env/block/dev_adjust_method (1=standard; 2=logistic transform keeps in 
# base parm bounds; 3=standard w/ no bound check)
#
#_growth_parms
#_LO HI INIT PRIOR PR_type SD PHASE env-var use_dev dev_minyr dev_maxyr dev
# _stddev Block Block_Fxn
0.001 2 0.0964 -2.339249 3 0.524 2 0 0 0 0 0 0 0 #NatM_p_1_Fem_GP_1 
5 30 26.18708046 26.18708046 -1 10 2 0 0 0 0 0 0 0 #L_at_Amin_Fem_GP_1  
35 65 50.24943409 44.71728964 -1 10 2 0 0 0 0 0 0 0 #L_at_Amax_Fem_GP_1  
0.01 1 0.2113895 0.2113895 -1 0.8 2 0 0 0 0 0 0 0 #VonBert_K_Fem_GP_1  
0.03 0.2 0.1 0.1 -1 0.8 3 0 0 0 0 0 0 0 #CV_young_Fem_GP_1  
0.03 0.2 0.1 0.1 -1 0.8 3 0 0 0 0 0 0 0 #CV_old_Fem_GP_1  
# Males
-3 3 0 0 0 50 2 0 0 0 0 0.5 0 0 #M2_natM_young_as_exponential_offset(rel_mo
# rph_1)
#-3 3 0 0 0 50 -2 0 0 0 0 0.5 0 0 #M2_natM_old_as_exponential_offset(rel_yo
# ung)
-3 3 0.023 0 -1 50 2 0 0 0 0 0.5 0 0 #M2_Lmin_as_exponential_offset
-3 3 -0.114 0 -1 50 2 0 0 0 0 0.5 0 0 #M2_Lmax_as_exponential_offset
-3 3 0.18 0 -1 50 2 0 0 0 0 0.5 0 0 #M2_VBK_as_exponential_offset
-3 3 0 0 -1 50 2 0 0 0 0 0.5 0 0 #M2_CV-young_as_exponential_offset(rel_CV-
# young_for_morph_1)
-3 3 0 0 -1 50 2 0 0 0 0 0.5 0 0 #M2_CV-old_as_exponential_offset(rel_CV-yo
# ung)
#0.001 0.25 0.101 -2.291 3 0.524 -1 0 0 0 0 0 0 0 # NatM_p_1_Mal_GP_1 
#5 30 26.80358838 26.80358838 -1 10 2 0 0 0 0 0 0 0 #L_at_Amin_Mal_GP_1  
#35 60 44.83666946 44.83666946 -1 10 2 0 0 0 0 0 0 0 #L_at_Amax_Mal_GP_1  
#0.01 1 0.2533755 0.2533755 -1 0.8 2 0 0 0 0 0 0 0 #VonBert_K_Mal_GP_1  
#0.03 0.2 0.1 0.1 -1 0.8 3 0 0 0 0 0 0 0 #CV_young_Mal_GP_1  
#0.03 0.2 0.1 0.1 -1 0.8 3 0 0 0 0 0 0 0 # CV_old_Mal_GP_1 
0 3 0.00002 0.0000248 -1 0.8 -3 0 0 0 0 0 0 0 #Wtlen_1_Fem  
0 4 2.942 2.9006 -1 0.8 -3 0 0 0 0 0 0 0 #Wtlen_2_Fem  
1 1000 43.69 44.5605 -1 0.8 -3 0 0 0 0 0 0 0 #Mat50%_Fem  
-3 3 -0.66 -0.4139 -1 0.8 -3 0 0 0 0 0 0 0 #Mat_slope_Fem  
-3 3 0.2747 0.2747 -1 0.8 -3 0 0 0 0 0 0 0 #Eggs/kg_inter_Fem  
-3 3 0.0941 0.0941 -1 0.8 -3 0 0 0 0 0 0 0 #Eggs/kg_slope_wt_Fem  
-3 3 0.00002 0.0000258 -1 0.8 -3 0 0 0 0 0 0 0 #Wtlen_1_Mal  
-3 4 2.955 2.887 -1 0.8 -3 0 0 0 0 0 0 0 #Wtlen_2_Mal  
0 0 0 0 -1 0 -4 0 0 0 0 0 0 0 # RecrDist_GP_1 
0 0 0 0 -1 0 -4 0 0 0 0 0 0 0 # RecrDist_Area_1 
0 0 0 0 -1 0 -4 0 0 0 0 0 0 0 # RecrDist_Seas_1 
0 0 0 0 -1 0 -4 0 0 0 0 0 0 0 # CohortGrowDev # Seasonal W-L with year effe
# ct
#0 #_custom_MG-env_setup (0/1)

# 1 # Custom block setup
# # Time blocks for growth
# 5 30 29.13 15.77 -1 10 3 # LAmin 1991-2010
# 35 65 47.93 49.0 -1 10 3 # LAmax 1991-2010
# 0.01 1 0.171 0.171 -1 0.8 3 # K 1991-2010
# 5 30 29.72 29.31 -1 10 3 # LAmin 1991-2010
# 35 60 44.71 45.2 -1 10 3 # LAmax 1991-2010
# 0.01 1  0.2  0.2  -1 0.8 3 # K 1991-2010

#_seasonal_effects_on_biology_parms
 0 0 0 0 0 0 0 0 0 0 #_femwtlen1,femwtlen2,mat1,mat2,fec1,fec2,Malewtlen1,m
# alewtlen2,L1,K
#_Cond -2 2 0 0 -1 99 -2 #_placeholder when no seasonal MG parameters
#
#_Cond -4 #_MGparm_Dev_Phase
#
#_Spawner-Recruitment

#_Spawner-Recruitment
3 #_SR_function
#_LO HI INIT PRIOR PR_type SD PHASE
1 20 11 10 -1 10 1      #SR_R0
0.25 0.99 0.773 0.773 2 0.147 -2 # SR_steep
0 2 0.5 0.8 -1 0.8 -4  #SR_sigmaR
-5 5 0.1 0 -1 1 -3  #SR_envlink
-5 5 0 0 -1 1 -4  #SR_R1_offset
0 0 0 0 -1 0 -99  #SR_autocorr
0 #_SR_env_link
0 #_SR_env_target_0=none;1=devs;_2=R0;_3=steepness
1 #do_recdev: 0=none; 1=devvector; 2=simple deviations
1957 # first year of main recr_devs; early devs can preceed this era
2011 # last year of main recr_devs; forecast devs start in following year
6 #_recdev phase
1 # (0/1) to read 13 advanced options
0 #_recdev_early_start (0=none; neg value makes relative to recdev_start)
4 #_recdev_early_phase
-1 #_forecast_recruitment phase (incl. late recr) (0 value resets to maxpha
# se+1)
 1 #_lambda for fore_recr_like occurring before endyr+1
 1954 #_last_early_yr_nobias_adj_in_MPD
 1974 #_first_yr_fullbias_adj_in_MPD
 2010 #_last_yr_fullbias_adj_in_MPD
 2014 #_first_recent_yr_nobias_adj_in_MPD
 0.67 #_max_bias_adj_in_MPD (-1 to override ramp and set biasadj=1.0 for al
# l estimated recdevs)
 0 #_period of cycles in recruitment (N parms read below)
 -5 #min rec_dev
 5 #max rec_dev
 0 #_read_recdevs
#_end of advanced SR options
#
#_placeholder for full parameter lines for recruitment cycles
# read specified recr devs
#_Yr Input_value
#
# all recruitment deviations
#
#Fishing Mortality info
0.3 # F ballpark for tuning early phases
-2001 # F ballpark year (neg value to disable)
1 # F_Method:  1=Pope; 2=instan. F; 3=hybrid (hybrid is recommended)
0.9 # max F or harvest rate, depends on F_Method
# no additional F input needed for Fmethod 1
# if Fmethod=2; read overall start F value; overall phase; N detailed input
# s to read
# if Fmethod=3; read N iterations for tuning for Fmethod 3
#
#_initial_F_parms
#_LO HI INIT PRIOR PR_type SD PHASE
 0 1 0 0.01 -1 99 -1 # InitF_1FISHERY1
 0 1 0 0.01 -1 99 -1 # InitF_1FISHERY1
 0 1 0 0.01 -1 99 -1 # InitF_1FISHERY1
 0 1 0 0.01 -1 99 -1 # InitF_1FISHERY1
#
#_Q_setup
 # Q_type options:  <0=mirror, 0=median_float, 1=mean_float, 2=parameter, 3
# =parm_w_random_dev, 4=parm_w_randwalk, 5=mean_unbiased_float_assign_to_pa
# rm
 #_Den-dep  env-var  extra_se  Q_type
 0 0 0 0 # 1 TRAWL
 0 0 0 0 # 2 NON-TRAWL
 0 0 0 0 # 2 NON-TRAWL
 0 0 0 0 # 2 NON-TRAWL
 0 0 1 0 # 2 NON-TRAWL
 0 0 1 0 # 2 NON-TRAWL
 0 0 0 0 # 2 NON-TRAWL
 0 0 1 0 # 2 NON-TRAWL
 #0 0 0 0 # 2 NON-TRAWL
 #
#_Cond 0 #_If q has random component, then 0=read one parm for each fleet w
# ith random q; 1=read a parm for each year of index
#_Q_parms(if_any)
# LO HI INIT PRIOR PR_type SD PHASE
 0 5 0.0001 0.01 -1 99 -2 # xsd_onbarod
 0 5 0.0001 0.01 -1 99 -2 # xsd_dockside
0 5 0.0001 0.01 -1 99 -2 # xsd_dockside

#_SELEX_&_RETENTION_PARAMETERS
# Size-based setup
# A=Selex option: 1-24
# B=Do_retention: 0=no, 1=yes
# C=Male offset to female: 0=no, 1=yes
# D=Extra input (#)
# A B C D
# Size selectivity
24 0 0 0  # Trawl
24 0 0 0  # Dead
24 0 0 0  # Live
24 0 0 0  # Rec
24 0 0 0  # Onboard
5 0 0 5  # Onboard II
24 0 0 0  # Research
5 0 0 5  # Dockside
# Age selectivity
10 0 0 0  # NONTWL
10 0 0 0  # NONTWL
10 0 0 0  # NONTWL
10 0 0 0  # NONTWL
15 0 0 4  # NONTWL
15 0 0 4  # NONTWL
15 0 0 4  # NONTWL
15 0 0 4  # NONTWL

# Selectivity parameters
#Lo Hi Init Prior Priot_type SD Phase Env Use Dev_minyr Dev_maxyr Dev_sd Bl
# ock block_fxn  
#Length-based selectivity
#Trawl               
15      50      40      30      -1      99      4       0       0       0  
     0       0.5     0       0       #       Peak    start
-10     10      -1     -2.6    -1      99      5      0       0       0    
   0       0.5     0       0       #       Top     width
-4      12      4       5.2     -1      99      4       0       0       0  
     0       0.5     0       0       #       Asc-width
-2      6       2.2     6       -1      99      -4       0       0       0 
      0       0.5     0       0       #       Desc-width
-15     10      -4      -3.7    -1      99      -5      0       0       0  
     0       0.5     0       0       #       INIT    bin     sel
-5      10      5      0.1     -1      99      -4       0       0       0  
     0       0.5     0       0       #       FINAL   bin     sel
# 1 60 40 40 -1 99 3 0 0 0 0 0 0 0 # Inflection
# 1 15 5 5 -1 99 4 0 0 0 0 0 0 0 # width for 95%
#Dead               
15      50      40      30      -1      99      4       0       0       0  
     0       0.5     0       0       #       Peak    start
-10     10      -1     -2.6    -1      99      5      0       0       0    
   0       0.5     0       0       #       Top     width
-4      12      4       5.2     -1      99      4       0       0       0  
     0       0.5     0       0       #       Asc-width
-2      6       2.2     6       -1      99      -4       0       0       0 
      0       0.5     0       0       #       Desc-width
-15     10      -4      -3.7    -1      99      -5      0       0       0  
     0       0.5     0       0       #       INIT    bin     sel
-5      10      5      0.1     -1      99      -4       0       0       0  
     0       0.5     0       0       #       FINAL   bin     sel
# 1 60 35 40 -1 99 3 0 0 0 0 0 0 0 # Inflection
# 1 15 5 5 -1 99 4 0 0 0 0 0 0 0 # width for 95%
#Live-fish
15 50 30 30 -1 99 4 0 0 0 0 0.5 0 0 # Peak start 
-10 10 1.6 -2.6 -1 99 5 0 0 0 0 0.5 0 0 # Top width 
-4 12 4 5.2 -1 99 4 0 0 0 0 0.5 0 0 # Asc-width  
-2 6 2.2 6 -1 99 4 0 0 0 0 0.5 0 0 # Desc-width  
-15 10 -4 -3.7 -1 99 -5 0 0 0 0 0.5 0 0 # INIT bin sel
-5 10 -1 0.1 -1 99 4 0 0 0 0 0.5 0 0 # FINAL bin sel
#Rec CPUE               
15      50      40      30      -1      99      4       0       0       0  
     0       0.5     0       0       #       Peak    start
-10     10      -1     -2.6    -1      99      5      0       0       0    
   0       0.5     0       0       #       Top     width
-4      12      4       5.2     -1      99      4       0       0       0  
     0       0.5     0       0       #       Asc-width
-2      6       2.2     6       -1      99      -4       0       0       0 
      0       0.5     0       0       #       Desc-width
-15     10      -4      -3.7    -1      99      -5      0       0       0  
     0       0.5     0       0       #       INIT    bin     sel
-5      10      5      0.1     -1      99      -4       0       0       0  
     0       0.5     0       0       #       FINAL   bin     sel
# 1 60 30 40 -1 99 3 0 0 0 0 0 0 0 # Inflection
# 1 15 5 5 -1 99 4 0 0 0 0 0 0 0 # width for 95%
#CPFV CPUE part I
15      50      40      30      -1      99      4       0       0       0  
     0       0.5     0       0       #       Peak    start
-10     10      -1     -2.6    -1      99      5      0       0       0    
   0       0.5     0       0       #       Top     width
-4      12      4       5.2     -1      99      4       0       0       0  
     0       0.5     0       0       #       Asc-width
-2      6       2.2     6       -1      99      -4       0       0       0 
      0       0.5     0       0       #       Desc-width
-15     10      -4      -3.7    -1      99      -5      0       0       0  
     0       0.5     0       0       #       INIT    bin     sel
-5      10      5      0.1     -1      99      -4       0       0       0  
     0       0.5     0       0       #       FINAL   bin     sel
# 1 60 30 40 -1 99 3 0 0 0 0 0 0 0 # Inflection
# 1 15 5 5 -1 99 4 0 0 0 0 0 0 0 # width for 95%
#CPFV CP0UE part II
-5 5 -1 -1 -1 99 -4 0 0 0 0 0 0 0 # First bin mirrored
-5 5 -1 -1 -1 99 -5 0 0 0 0 0 0 0 # Last bin mirrored
#Research Rec
15      50      40      30      -1      99      4       0       0       0  
     0       0.5     0       0       #       Peak    start
-10     10      -1     -2.6    -1      99      5      0       0       0    
   0       0.5     0       0       #       Top     width
-4      12      4       5.2     -1      99      4       0       0       0  
     0       0.5     0       0       #       Asc-width
-2      6       2.2     6       -1      99      -4       0       0       0 
      0       0.5     0       0       #       Desc-width
-15     10      -4      -3.7    -1      99      -5      0       0       0  
     0       0.5     0       0       #       INIT    bin     sel
-5      10      5      0.1     -1      99      -4       0       0       0  
     0       0.5     0       0       #       FINAL   bin     sel
# 1 60 30 40 -1 99 3 0 0 0 0 0 0 0 # Inflection
# 1 15 5 5 -1 99 4 0 0 0 0 0 0 0 # width for 95%
#Rec CPFV
-5 5 -1 -1 -1 99 -4 0 0 0 0 0 0 0 # First bin mirrored
-5 5 -1 -1 -1 99 -5 0 0 0 0 0 0 0 # Last bin mirrored


0  # TG_custom:  0=no read; 1=read if tags exist
#_Cond -6 6 1 1 2 0.01 -4 0 0 0 0 0 0 0  #_placeholder if no parameters
#
1 #_Variance_adjustments_to_input_values
#_fleet: 1 2 3
0 0 0 0 0 0 0 0 #survey
0 0 0 0 0 0 0 0 #Discard
0 0 0 0 0 0 0 0 #mean wt
#1 0.8 1 0.1 0.5 1 0.2 1 #Length comps
1 0.8 1 0.05 0.5 1 0.2 1 #Length comps
1 1 1 1 1 1 1  1 #Age comps
1 1 1 1 1 1 1 1 #Size at age


#  0 0 #_add_to_survey_CV
#  0 0 #_add_to_discard_stddev
#  0 0 #_add_to_bodywt_CV
#  1 1 #_mult_by_lencomp_N
#  1 1 #_mult_by_agecomp_N
#  1 1 #_mult_by_size-at-age_N
#
1 #_maxlambdaphase
1 #_sd_offset
#
13 # number of changes to make to default Lambdas (default value is 1.0)
# Like_comp codes:  1=surv; 2=disc; 3=mnwt; 4=length; 5=age; 6=SizeFreq; 7=
# sizeage; 8=catch;
# 9=init_equ_catch; 10=recrdev; 11=parm_prior; 12=parm_dev; 13=CrashPen; 14
# =Morphcomp; 15=Tag-comp; 16=Tag-negbin
#like_comp fleet/survey  phase  value  sizefreq_method
#
# lambdas (for info only; columns are phases)
 1 5 1 1 1 # onboard CPFV
 1 6 1 1 1 # onboard CPFV pt. II
 1 8 1 1 1 # dockside rec
 4 1 1 1 1 #_lencomp: Trawl
 4 2 1 1 1 #_lencomp: Non-trawl
 4 3 1 1 1 #_lencomp: Recreational
 4 4 1 1 1 #_lencomp: Tagging
 4 5 1 1 1 #_lencomp: Tagging
 4 7 1 1 1 #_lencomp: Tagging
 5 1 1 1 1 #_agecomp: Trawl
 5 2 1 1 1 #_agecomp: Non-trawl
 5 4 1 1 1 #_agecomp: Recreational
 5 7 1 1 1 #_agecomp: Research

0 # (0/1) read specs for more stddev reporting

999
